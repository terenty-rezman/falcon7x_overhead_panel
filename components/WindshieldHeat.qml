
import QtQuick 2.15

Item { 
    ThreeStateDisplayUpDownButton {
        id: windshield_lh
        objectName: "windshield_lh"

        x: 610
        y: 771

        filename: "button_png/max_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: windshield_rh
        objectName: "windshield_rh"

        x: 666
        y: 771

        filename: "button_png/max_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: windshield_backup
        objectName: "windshield_backup"

        x: 725
        y: 771

        filename: "button_png/max_off_updown.png"
    }
}
