package project

import javax.swing.JComponent
import javax.swing.KeyStroke
import javax.swing.SwingConstants
import javax.swing.SwingUtilities
import java.awt.event.KeyEvent

import static ca.odell.glazedlists.gui.AbstractTableComparatorChooser.*
import static javax.swing.SwingConstants.*
import net.miginfocom.swing.MigLayout
import org.joda.time.*
import java.awt.*

actions {
    action(id: 'pilih', name: 'Pilih', mnemonic: KeyEvent.VK_P, closure: {
        if (model.popupMode) {
            SwingUtilities.getWindowAncestor(mainPanel).visible = false
        }
    })
    action(id: 'cari', name: 'Cari', mnemonic: KeyEvent.VK_C, closure: controller.search)
    action(id: 'lihatSemua', name: 'Lihat Semua', mnemonic: KeyEvent.VK_L, closure: controller.listAll)
}
application(title: 'Work',
        preferredSize: [520, 340],
        pack: true,
        locationByPlatform: true,
        iconImage: imageIcon('/griffon-icon-48x48.png').image,
        iconImages: [imageIcon('/griffon-icon-48x48.png').image,
                imageIcon('/griffon-icon-32x32.png').image,
                imageIcon('/griffon-icon-16x16.png').image]) {

    panel(id: 'mainPanel') {
        borderLayout()

        panel(constraints: PAGE_START) {
            borderLayout()
            label('<html><b>Petunjuk:</b> <i>Cari dan pilih jenis pekerjaan di tabel, kemudian klik tombol Pilih untuk selesai!</i><html>',
                visible: bind{model.popupMode}, horizontalAlignment: SwingConstants.CENTER, constraints: PAGE_START)
            panel(constraints: CENTER) {
                flowLayout(alignment: FlowLayout.LEADING)
                label("Kategori")
                comboBox(id: 'kategoriSearch', model: model.kategoriSearch)
                label("Item Pakaian")
                comboBox(id: 'itemPakaianSearch', model: model.itemPakaianSearch)
                label("Jenis Pekerjaan")
                comboBox(id: 'jenisWorkSearch', model: model.jenisWorkSearch)
                button(app.getMessage('simplejpa.search.label'), action: cari)
                button(app.getMessage('simplejpa.search.all.label'), action: lihatSemua)
            }
        }

        panel(constraints: CENTER) {
            borderLayout()
            panel(constraints: PAGE_START, layout: new FlowLayout(FlowLayout.LEADING)) {
                label(text: bind('searchMessage', source: model))
            }
            scrollPane(constraints: CENTER) {
                glazedTable(id: 'table', list: model.workList, sortingStrategy: SINGLE_COLUMN, onValueChanged: controller.tableSelectionChanged) {
                    glazedColumn(name: 'Item Pakaian', property: 'itemPakaian')
                    glazedColumn(name: 'Jenis Work', property: 'jenisWork')
                    glazedColumn(name: 'Harga', property: 'harga', columnClass: Integer) {
                        templateRenderer('${currencyFormat(it)}', horizontalAlignment: RIGHT)
                    }
                    keyStrokeAction(actionKey: 'pilih', condition: JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT,
                        keyStroke: KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0), action: pilih)
                }
            }
        }

        taskPane(id: "form", layout: new MigLayout('', '[right][left][left,grow]', ''), constraints: PAGE_END) {
            label('Harga:')
            numberTextField(id: 'harga', columns: 20, bindTo: 'harga', nfParseBigDecimal: true, errorPath: 'harga')
            errorLabel(path: 'harga', constraints: 'wrap')


            panel(constraints: 'span, growx, wrap') {
                flowLayout(alignment: FlowLayout.LEADING)
                button('Pilih', visible: bind('isRowSelected', source: table, converter: {it && model.popupMode}), action: pilih)
                button(app.getMessage("simplejpa.dialog.save.button"), visible: bind('isRowSelected', source: table, converter: {it && !model.popupMode}), actionPerformed: {
                    controller.save()
                    harga.requestFocusInWindow()
                }, mnemonic: KeyEvent.VK_S)
                button(app.getMessage("simplejpa.dialog.delete.button"), visible: bind('isRowSelected', source: table, converter: {it && !model.popupMode}), actionPerformed: {
                    if (JOptionPane.showConfirmDialog(mainPanel, app.getMessage("simplejpa.dialog.delete.message"),
                            app.getMessage("simplejpa.dialog.delete.title"), JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE) == JOptionPane.YES_OPTION) {
                        controller.delete()
                    }
                }, mnemonic: KeyEvent.VK_H)
            }
        }
    }
}