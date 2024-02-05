import QtQuick 2.15

Image {
    width: 1000
    height: 1000
    source: "overhead.png"

    TwoStateDisplayButton {
        id: firebutton_1
        objectName: "firebutton_1"

        x: 75
        y: 41

        filename: "button_png/fire1_display.png"
    }

    TwoStateIndicator {
        id: fireindicator_1
        objectName: "fireindicator_1"

        x: 75
        y: 75 

        filename: "button_png/fire1.png"
    }

    TwoStateButton {
        id: firebutton_2
        objectName: "firebutton_2"

        x: 390
        y: 75

        filename: "button_png/fire2.png"
    }

    TwoStateButton {
        id: firebutton_3
        objectName: "firebutton_3"

        x: 745
        y: 75

        filename: "button_png/fire3.png"
    }

    TwoStateIndicator {
        id: fire_apu_indicator 
        objectName: "fire_apu_indicator"

        x: 280
        y: 75

        filename: "button_png/fire_apu.png"
    }

    TwoStateDisplayButton {
        id: apu_disch
        objectName: "apu_disch"

        x: 280 
        y: 75 

        filename: "button_png/apu_dish.png"
    }

    TwoStateButton {
        id: firerearcomp
        objectName: "firerearcomp"

        x: 601
        y: 75

        filename: "button_png/fire_rear_comp.png"
    }

    TwoStateButton {
        id: firebagcomp
        objectName: "firebagcomp"

        x: 663
        y: 75

        filename: "button_png/fire_bag_comp.png"
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
