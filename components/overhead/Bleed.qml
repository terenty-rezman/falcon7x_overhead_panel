import QtQuick 2.15

import "../basic_components"

Item { 
    ThreeStateDisplayUpDownButton {
        objectName: "bleed1"

        x: 616
        y: 510

        filename: "../button_png/hpoff_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bleed12"

        x: 679
        y: 510

        filename: "../button_png/off_on_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bleed2"

        x: 731
        y: 565

        filename: "../button_png/hpoff_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bleed13"

        x: 784
        y: 510

        filename: "../button_png/off_on_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bleed_apu"

        x: 837
        y: 565

        filename: "../button_png/on_off_display_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bleed3"

        x: 886
        y: 510

        filename: "../button_png/on_off_display_updown.png"
    }
}
