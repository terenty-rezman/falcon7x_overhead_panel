
import QtQuick 2.15

Item { 
    TwoStateDisplayDownButton {
        id: shutoff_a1
        objectName: "shutoff_a1"

        x: 635
        y: 202

        filename: "button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: shutoff_a2
        objectName: "shutoff_a2"

        x: 685
        y: 202

        filename: "button_png/closed_display_down.png"
    }
}
