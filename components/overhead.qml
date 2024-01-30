import QtQuick 2.0

Image {
    width: 1000
    height: 1000
    source: "overhead.png"

    TwoStateButton {
        id: firebutton_1
        x: 75
        y: 75

        filename: "button_png/fire1.png"
    }

    TwoStateButton {
        id: firebutton_2
        x: 390
        y: 75

        filename: "button_png/fire2.png"
    }

    TwoStateButton {
        id: firebutton_3
        x: 745
        y: 75

        filename: "button_png/fire3.png"
    }

    TwoStateButton {
        id: fireapu
        x: 280
        y: 75

        filename: "button_png/fire_apu.png"
    }

    TwoStateButton {
        id: firerearcomp
        x: 601
        y: 75

        filename: "button_png/fire_rear_comp.png"
    }

    TwoStateButton {
        id: firebagcomp
        x: 663
        y: 75

        filename: "button_png/fire_bag_comp.png"
    }

    ThreeStateButton {
        id: disch_11
        x: 138
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_12
        x: 201
        y: 75

        filename: "button_png/disch_2.png"
    }

    ThreeStateButton {
        id: disch_21
        x: 455
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_22
        x: 518
        y: 75

        filename: "button_png/disch_2.png"
    }

    ThreeStateButton {
        id: disch_31
        x: 810
        y: 75

        filename: "button_png/disch_1.png"
    }

    ThreeStateButton {
        id: disch_32
        x: 874
        y: 75

        filename: "button_png/disch_2.png"
    }
}
