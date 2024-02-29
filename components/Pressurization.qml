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
}
