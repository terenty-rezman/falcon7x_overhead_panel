import QtQuick 2.15

import "../basic_components"

Item { 
    ThreeStateDisplayUpDownButton {
        objectName: "wings"

        x: 489
        y: 521

        filename: "../button_png/stby_on_updown.png"
    }

    TwoStateDisplayUpButton {
        objectName: "ice_brake"

        x: 546
        y: 520

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "ice_eng1"

        x: 434
        y: 639

        filename: "../button_png/on_display_up.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "ice_eng2"

        x: 489
        y: 640

        filename: "../button_png/stby_on_updown.png"
    }

    TwoStateDisplayUpButton {
        objectName: "ice_eng3"

        x: 546
        y: 639

        filename: "../button_png/on_display_up.png"
    }
}
