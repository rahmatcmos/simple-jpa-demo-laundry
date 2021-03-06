/*
 * Copyright 2014 Jocki Hendry.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package project

import domain.*
import simplejpa.transaction.Transaction
import javax.swing.*
import javax.swing.event.ListSelectionEvent

@Transaction
class PelangganController {

    PelangganModel model
    def view

    void mvcGroupInit(Map args) {
        if (args.'popup') model.popupMode = true
    }

    void mvcGroupDestroy() {
        destroyEntityManager()
    }

    @Transaction(newSession = true)
    def search = {
        execInsideUISync { model.pelangganList.clear() }
        List result = findAllPelangganByDsl {
            nama like("%${model.namaSearch?:''}%")
            if (model.membershipSearch.selectedItem != MembershipSearch.SEMUA) {
                and()
                corporate eq(model.membershipSearch.selectedItem == MembershipSearch.CORPORATE)
            }
        }
        execInsideUISync {
            model.pelangganList.addAll(result)
            model.searchMessage = app.getMessage("simplejpa.search.result.message", ['Nama', model.namaSearch])
        }
    }

    def save = {
        Pelanggan pelanggan = new Pelanggan(nama: model.nama, alamat: model.alamat,
            nomorTelepon: model.nomorTelepon, corporate: model.corporate)

        if (!validate(pelanggan)) return

        if (model.id == null) {
            // Insert operation
            if (findPelangganByNama(pelanggan.nama)) {
                model.errors['nama'] = app.getMessage("simplejpa.error.alreadyExist.message")
                return_failed()
            }
            pelanggan = merge(pelanggan)
            execInsideUISync {
                model.pelangganList << pelanggan
                view.table.changeSelection(model.pelangganList.size() - 1, 0, false, false)
            }
        } else {
            // Update operation
            Pelanggan selectedPelanggan = view.table.selectionModel.selected[0]
            selectedPelanggan.nama = model.nama
            selectedPelanggan.alamat = model.alamat
            selectedPelanggan.nomorTelepon = model.nomorTelepon
            selectedPelanggan.corporate = model.corporate

            selectedPelanggan = merge(selectedPelanggan)
            execInsideUISync { view.table.selectionModel.selected[0] = selectedPelanggan }
        }
        execInsideUISync { clear() }
    }

    def delete = {
        Pelanggan pelanggan = view.table.selectionModel.selected[0]
        remove(pelanggan)
        execInsideUISync {
            model.pelangganList.remove(pelanggan)
            clear()
        }
    }

    @Transaction(Transaction.Policy.SKIP)
    def clear = {
        execInsideUISync {
            model.id = null
            model.nama = null
            model.alamat = null
            model.nomorTelepon = null
            model.corporate = true
            model.outsider = false

            model.errors.clear()
            view.table.selectionModel.clearSelection()
        }
    }

    @Transaction(Transaction.Policy.SKIP)
    def tableSelectionChanged = { ListSelectionEvent event ->
        execInsideUISync {
            if (view.table.selectionModel.isSelectionEmpty()) {
                clear()
            } else {
                Pelanggan selected = view.table.selectionModel.selected[0]
                model.errors.clear()
                model.id = selected.id
                model.nama = selected.nama
                model.alamat = selected.alamat
                model.nomorTelepon = selected.nomorTelepon
                model.corporate = selected.corporate
                model.outsider = !selected.corporate
            }
        }
    }

}