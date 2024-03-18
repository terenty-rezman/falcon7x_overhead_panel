import QtQuick 2.15
import QtQuick

import "basic_components"

Rectangle {
    anchors.fill: parent
    color: "#000000"

    Flickable {
        anchors.fill: parent
        contentWidth: panel.width
        contentHeight: panel.height  

        Image {
            id: panel
            width: 1000
            height: 277
            source: "button_png/front_panel.png"

            TwoStateButton {
                objectName: "pty_lh"
        
                x: 60
                y: 35
        
                filename: "../button_png/pty.png"
                mouse_enabled: false
            }

            TwoStateButton {
                objectName: "master_warning_lh_ind"

                x: 172
                y: 35

                filename: "../button_png/master_warning.png"
                mouse_enabled: false
            }

            TwoStateButton {
                objectName: "master_warning_lh"

                x: 172
                y: 35

                filename: "../button_png/empty_two_state.png"
            }

            TwoStateButton {
                objectName: "master_caution_lh_ind"

                x: 231
                y: 35

                filename: "../button_png/master_caution.png"
                mouse_enabled: false
            }

            TwoStateButton {
                objectName: "master_caution_lh"

                x: 231
                y: 35

                filename: "../button_png/empty_two_state.png"
            }

            TwoStateButton {
                objectName: "sil_aural_alarm_lh"

                x: 285
                y: 35

                filename: "../button_png/empty_two_state.png"
            }

            TwoStateButton {
                objectName: "fms_msg_lh"

                x: 344
                y: 35

                filename: "../button_png/fms_msg.png"
            }

            TwoStateButton {
                objectName: "event_lh"

                x: 402
                y: 35

                filename: "../button_png/event.png"
            }
        }
    }
}
