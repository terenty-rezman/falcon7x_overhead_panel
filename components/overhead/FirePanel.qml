import QtQuick 2.15

import "../basic_components"

Item {
    // engine 1 
    TwoStateDisplayUpButton {
        objectName: "firebutton_1"

        x: 75
        y: 41

        filename: "../button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        objectName: "fireindicator_1"

        x: 75
        y: 75 

        filename: "../button_png/fire1.png"
        mouse_enabled: false
    }

    ThreeStateButton {
        objectName: "disch_11"

        x: 138
        y: 75

        filename: "../button_png/disch_1.png"
    }

    ThreeStateButton {
        objectName: "disch_12"

        x: 201
        y: 75

        filename: "../button_png/disch_2.png"
    }

    // indicator
    TwoStateButton {
        objectName: "fire_apu_indicator"

        x: 280
        y: 75

        filename: "../button_png/fire_apu.png"
        mouse_enabled: false
    }

    TwoStateDisplayDownButton {
        objectName: "apu_disch"

        x: 280 
        y: 75 

        filename: "../button_png/apu_dish.png"
    }

    // indicator
    TwoStateDisplayUpButton {
        objectName: "fire_apu_closed_indicator"

        x: 280
        y: 41

        filename: "../button_png/closed_display_up.png"
        mouse_enabled: false
    }

    // engine 2
    TwoStateDisplayUpButton {
        objectName: "firebutton_2"

        x: 392
        y: 42 

        filename: "../button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        objectName: "fireindicator_2"

        x: 390
        y: 75 

        filename: "../button_png/fire2.png"
        mouse_enabled: false
    }

    ThreeStateButton {
        objectName: "disch_21"

        x: 455
        y: 75

        filename: "../button_png/disch_1.png"
    }

    ThreeStateButton {
        objectName: "disch_22"

        x: 518
        y: 75

        filename: "../button_png/disch_2.png"
    }

    TwoStateButton {
        objectName: "firerearcomp_indicator"

        x: 601
        y: 75

        filename: "../button_png/fire_rear_comp.png"
        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        objectName: "firerearcomp_button"

        x: 601
        y: 42 

        filename: "../button_png/dish_display_up.png"
    }

    TwoStateButton {
        objectName: "firebagcomp_indicator"

        x: 663
        y: 75

        filename: "../button_png/fire_bag_comp.png"
        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        objectName: "firebagcomp_button"

        x: 663
        y: 42 

        filename: "../button_png/dish_display_up.png"
    }

    // engine 3
    TwoStateDisplayUpButton {
        objectName: "firebutton_3"

        x: 745
        y: 42 

        filename: "../button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        objectName: "fireindicator_3"

        x: 745
        y: 75 

        filename: "../button_png/fire3.png"
        mouse_enabled: false
    }

    ThreeStateButton {
        objectName: "disch_31"

        x: 810
        y: 75

        filename: "../button_png/disch_1.png"
    }

    ThreeStateButton {
        objectName: "disch_32"

        x: 874
        y: 75

        filename: "../button_png/disch_2.png"
    }
}
