import QtQuick 2.15
import QtQuick

import "front_panel"

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

            WarningPanel {}
            
            Autopilot {}

        }
    }
}
