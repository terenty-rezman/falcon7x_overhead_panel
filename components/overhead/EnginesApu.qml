import QtQuick 2.15

import "../basic_components"

Item { 
    TwoStateButton {
        objectName: "eng_1"

        x: 361
        y: 209

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "eng_2"

        x: 408
        y: 209

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "eng_3"

        x: 457
        y: 209

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateDisplayUpButton {
        objectName: "apu_master"

        x: 521
        y: 187

        filename: "../button_png/on_display_up_green.png"
    }

    TwoStateDisplayUpButton {
        objectName: "apu_start_stop"

        x: 571
        y: 187

        filename: "../button_png/run_display_up.png"
    }
}
