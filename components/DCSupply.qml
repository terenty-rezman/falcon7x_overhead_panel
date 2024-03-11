
import QtQuick 2.15

Item { 
    ThreeStateDisplayUpDownButton {
        objectName: "galley_master"

        x: 65
        y: 299

        filename: "button_png/on_off_display_updown.png"
    }

    TwoStateDisplayDownButton {
        objectName: "lh_master"

        x: 114
        y: 312

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "lh_init"

        x: 215
        y: 312

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bus_tie"

        x: 280
        y: 312

        filename: "button_png/tied_display_updown.png"
    }

    TwoStateDisplayDownButton {
        objectName: "rh_init"

        x: 355
        y: 312

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "rh_master"

        x: 460
        y: 312

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "cabin_master"

        x: 508
        y: 298

        filename: "button_png/on_off_display_updown.png"
    }

    TwoStateButton {
        objectName: "ext_power"

        x: 557
        y: 320

        filename: "button_png/ext_power.png"
    }

    TwoStateDisplayDownButton {
        objectName: "gen1"

        x: 112
        y: 402

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "lh_isol"

        x: 166
        y: 385

        filename: "button_png/isol_down.png"
    }

    TwoStateButton {
        objectName: "rat_reset"

        x: 356
        y: 411

        filename: "button_png/empty_two_state.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "rh_isol"

        x: 407
        y: 385

        filename: "button_png/isol_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "gen2"

        x: 508
        y: 402

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        objectName: "gen3"

        x: 557
        y: 402

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bat1"

        x: 226
        y: 411

        filename: "button_png/switch_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "bat2"

        x: 294
        y: 411

        filename: "button_png/switch_updown.png"
    }
}
