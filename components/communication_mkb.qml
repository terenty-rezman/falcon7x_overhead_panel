
import QtQuick 2.15
import QtQuick

import "communication_mkb"

Rectangle {
    anchors.fill: parent
    color: "#000000"

    Flickable {
        anchors.fill: parent
        contentWidth: panel.width
        contentHeight: panel.height  

        Image {
            id: panel
            width: 382
            height: 572
            source: "button_png/communication_mkb.png"

            Audio {}
        }
    }
}
