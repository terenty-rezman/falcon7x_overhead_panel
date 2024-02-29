
import QtQuick 2.15

Item { 
    ThreeStateDisplayUpDownButton {
        id: bleed1
        objectName: "bleed1"

        x: 616
        y: 510

        filename: "button_png/hpoff_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bleed12
        objectName: "bleed12"

        x: 679
        y: 510

        filename: "button_png/off_on_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bleed2
        objectName: "bleed2"

        x: 731
        y: 565

        filename: "button_png/hpoff_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bleed13
        objectName: "bleed13"

        x: 784
        y: 510

        filename: "button_png/off_on_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bleed_apu
        objectName: "bleed_apu"

        x: 837
        y: 565

        filename: "button_png/on_off_display_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bleed3
        objectName: "bleed3"

        x: 886
        y: 510

        filename: "button_png/on_off_display_updown.png"
    }
}
