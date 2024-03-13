import QtQuick 2.15

import "../basic_components"

Item { 
    ThreeStateDisplayUpDownButton {
        objectName: "boost1"

        x: 69
        y: 535

        filename: "../button_png/off_stby_updown.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xtk_1"

        x: 164
        y: 509

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xtk_2"

        x: 274
        y: 509

        filename: "../button_png/on_display_up.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "boost3"

        x: 370
        y: 535

        filename: "../button_png/off_stby_updown.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xtk_3"

        x: 164
        y: 602

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "backup_13"

        x: 219
        y: 581

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xtk_4"

        x: 274
        y: 602

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayDownButton {
        objectName: "xtk_5"

        x: 164
        y: 693

        filename: "../button_png/on_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "boost2"

        x: 218
        y: 679

        filename: "../button_png/off_stby_updown.png"
    }

    TwoStateDisplayDownButton {
        objectName: "xtk_6"

        x: 274
        y: 693

        filename: "../button_png/on_display_down.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xbp_12"

        x: 108
        y: 772

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xbp_13"

        x: 218
        y: 787

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "xbp_23"

        x: 332
        y: 772

        filename: "../button_png/on_display_up.png"
    }
}
