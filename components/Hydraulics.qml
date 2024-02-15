
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

    ThreeStateDisplayUpDownButton {
        id: backup_pump
        objectName: "backup_pump"

        x: 734
        y: 188

        filename: "button_png/on_off_display_updown.png"
    }

    TwoStateDisplayDownButton {
        id: shutoff_b2
        objectName: "shutoff_b2"

        x: 782
        y: 202

        filename: "button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: shutoff_b3
        objectName: "shutoff_b3"

        x: 834
        y: 202

        filename: "button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: shutoff_c2
        objectName: "shutoff_c2"

        x: 883
        y: 202

        filename: "button_png/closed_display_down.png"
    }
}
