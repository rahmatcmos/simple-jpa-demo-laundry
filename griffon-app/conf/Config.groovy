/*
 * Copyright 2013 Jocki Hendry.
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

log4j = {
    // Example of changing the log pattern for the default console
    // appender:

    environments {

        development {
            appenders {
                console name: 'stdout', layout: pattern(conversionPattern: '%d [%t] %-5p %c - %m%n')
            }
            root {
                warn 'stdout'
                additivity = false
            }

            error  additivity: false, stdout: ['org.dbunit']

            debug  additivity: false, stdout: [
                'org.hibernate.SQL',
            ]

            warn   additivity: false, stdout: [
                'simplejpa',
                'net.sf.jasperreports',
                'org.jboss',
                'org.codehaus',
                'org.hibernate',
                'project',
                'griffon.util',
                'griffon.core',
                'griffon.swing',
                'griffon.app']
        }

        production {
            appenders {
                rollingFile name: 'log', file: 'log/log.txt', layout: pattern(conversionPattern: '%d [%t] %-5p %c - %m%n'),
                        maxFileSize: 10485760, maxBackupIndex: 20
            }
            root {
                error 'log'
            }
        }
    }
}

i18n.basenames = ['messages','ValidationMessages']

griffon.simplejpa.validation.convertEmptyStringToNull = true
