
import QtQuick 2.15

Item { 
    ThreeStateDisplayUpDownButton {
        id: galley_master
        objectName: "galley_master"

        x: 65
        y: 299

        filename: "button_png/on_off_display_updown.png"
    }

    TwoStateDisplayDownButton {
        id: lh_master
        objectName: "lh_master"

        x: 114
        y: 312

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: lh_init
        objectName: "lh_init"

        x: 215
        y: 312

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bus_tie
        objectName: "bus_tie"

        x: 280
        y: 312

        filename: "button_png/tied_display_updown.png"
    }

    TwoStateDisplayDownButton {
        id: rh_init
        objectName: "rh_init"

        x: 355
        y: 312

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: rh_master
        objectName: "rh_master"

        x: 460
        y: 312

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        id: cabin_master
        objectName: "cabin_master"

        x: 508
        y: 298

        filename: "button_png/on_off_display_updown.png"
    }

    TwoStateButton {
        id: ext_power
        objectName: "ext_power"

        x: 557
        y: 320

        filename: "button_png/ext_power.png"
    }

    TwoStateDisplayDownButton {
        id: gen1
        objectName: "gen1"

        x: 112
        y: 402

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        id: lh_isol
        objectName: "lh_isol"

        x: 166
        y: 385

        filename: "button_png/isol_down.png"
    }

    TwoStateButton {
        id: rat_reset
        objectName: "rat_reset"

        x: 356
        y: 411

        filename: "button_png/empty_two_state.png"
    }

    ThreeStateDisplayUpDownButton {
        id: rh_isol
        objectName: "rh_isol"

        x: 407
        y: 385

        filename: "button_png/isol_down.png"
    }

    TwoStateDisplayDownButton {
        id: gen2
        objectName: "gen2"

        x: 508
        y: 402

        filename: "button_png/off_display_down.png"
    }

    TwoStateDisplayDownButton {
        id: gen3
        objectName: "gen3"

        x: 557
        y: 402

        filename: "button_png/off_display_down.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bat1
        objectName: "bat1"

        x: 226
        y: 411

        filename: "button_png/switch_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: bat2
        objectName: "bat2"

        x: 294
        y: 411

        filename: "button_png/switch_updown.png"
    }
}
