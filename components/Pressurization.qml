import QtQuick 2.15

Item { 
    TwoStateDisplayUpButton {
        id: dump
        objectName: "dump"

        x: 618
        y: 661

        filename: "button_png/on_display_up.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bag_vent
        objectName: "bag_vent"

        x: 671
        y: 663

        filename: "button_png/off_on_updown.png"
    }

    PressurizationSwitch {
        id: cabin_alt
        objectName: "cabin_alt"

        rotation_deg: -90

        x: 794
        y: 684

        filename: "button_png/rotate_switch.png"
    }

    TwoStateDisplayUpButton {
        id: pressu_man
        objectName: "pressu_man"

        x: 888
        y: 676

        filename: "button_png/on_display_up.png"
    }
}
