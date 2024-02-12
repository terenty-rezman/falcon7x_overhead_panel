
import QtQuick 2.15

Item { 
    TwoStateDisplayUpButton {
        id: apu_master
        objectName: "apu_master"

        x: 521
        y: 187

        filename: "button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        id: apu_start_stop
        objectName: "apu_start_stop"

        x: 571
        y: 187

        filename: "button_png/run_display_up.png"
    }
}
