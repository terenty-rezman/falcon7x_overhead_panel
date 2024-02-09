import QtQuick 2.15

Item {
    // engine 1 
    TwoStateDisplayUpButton {
        id: firebutton_1
        objectName: "firebutton_1"

        x: 75
        y: 41

        filename: "button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        id: fireindicator_1
        objectName: "fireindicator_1"

        x: 75
        y: 75 

        filename: "button_png/fire1.png"
        mouse_enabled: false
    }

    // engine 2
    TwoStateDisplayUpButton {
        id: firebutton_2
        objectName: "firebutton_2"

        x: 392
        y: 42 

        filename: "button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        id: fireindicator_2
        objectName: "fireindicator_2"

        x: 390
        y: 75 

        filename: "button_png/fire2.png"
        mouse_enabled: false
    }

    // engine 3
    TwoStateDisplayUpButton {
        id: firebutton_3
        objectName: "firebutton_3"

        x: 745
        y: 42 

        filename: "button_png/closed_display_up.png"
    }

    // indicator
    TwoStateButton {
        id: fireindicator_3
        objectName: "fireindicator_3"

        x: 745
        y: 75 

        filename: "button_png/fire3.png"
        mouse_enabled: false
    }

    // indicator
    TwoStateButton {
        id: fire_apu_indicator 
        objectName: "fire_apu_indicator"

        x: 280
        y: 75

        filename: "button_png/fire_apu.png"
        mouse_enabled: false
    }

    TwoStateDisplayDownButton {
        id: apu_disch
        objectName: "apu_disch"

        x: 280 
        y: 75 

        filename: "button_png/apu_dish.png"
    }

    // indicator
    TwoStateDisplayUpButton {
        id: fire_apu_closed_indicator
        objectName: "fire_apu_closed_indicator"

        x: 280
        y: 41

        filename: "button_png/closed_display_up.png"
        mouse_enabled: false
    }

    TwoStateButton {
        id: firerearcomp_indicator
        objectName: "firerearcomp_indicator"

        x: 601
        y: 75

        filename: "button_png/fire_rear_comp.png"
        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        id: firerearcomp_button
        objectName: "firerearcomp_button"

        x: 601
        y: 42 

        filename: "button_png/dish_display_up.png"
    }

    TwoStateButton {
        id: firebagcomp_indicator
        objectName: "firebagcomp_indicator"

        x: 663
        y: 75

        filename: "button_png/fire_bag_comp.png"
        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        id: firebagcomp_button
        objectName: "firebagcomp_button"

        x: 663
        y: 42 

        filename: "button_png/dish_display_up.png"
    }

    ThreeStateButton {
        id: disch_11
        objectName: "disch_11"

        x: 138
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_12
        objectName: "disch_12"

        x: 201
        y: 75

        filename: "button_png/disch_2.png"
    }

    ThreeStateButton {
        id: disch_21
        objectName: "disch_21"

        x: 455
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_22
        objectName: "disch_22"

        x: 518
        y: 75

        filename: "button_png/disch_2.png"
    }

    ThreeStateButton {
        id: disch_31
        objectName: "disch_31"

        x: 810
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_32
        objectName: "disch_32"

        x: 874
        y: 75

        filename: "button_png/disch_2.png"
    }
}
