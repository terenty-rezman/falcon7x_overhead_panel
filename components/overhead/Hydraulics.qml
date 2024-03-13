import QtQuick 2.15

import "../basic_components"

Item { 
    TwoStateDisplayDownButton {
        objectName: "shutoff_a1"

        x: 635
        y: 202

        filename: "../button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "shutoff_a2"

        x: 685
        y: 202

        filename: "../button_png/closed_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "backup_pump"

        x: 734
        y: 188

        filename: "../button_png/on_off_display_updown.png"
    }

    TwoStateDisplayDownButton {
        objectName: "shutoff_b2"

        x: 782
        y: 202

        filename: "../button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "shutoff_b3"

        x: 834
        y: 202

        filename: "../button_png/closed_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "shutoff_c2"

        x: 883
        y: 202

        filename: "../button_png/closed_display_down.png"
    }
}
