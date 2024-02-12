
import QtQuick 2.15

Item { 
    TwoStateDisplayDownButton {
        id: airbrake_auto
        objectName: "airbrake_auto"

        x: 66 
        y: 204

        filename: "button_png/off_display_down.png"
    }


    TwoStateDisplayUpButton {
        id: fcs_engage_norm
        objectName: "fcs_engage_norm"

        x: 161 
        y: 186 

        filename: "button_png/engage_display_up.png"
    }

    TwoStateDisplayUpButton {
        id: fcs_engage_stby
        objectName: "fcs_engage_stby"

        x: 228
        y: 186 

        filename: "button_png/engage_display_up.png"
    }

    TwoStateDisplayDownButton {
        id: fcs_steering
        objectName: "fcs_steering"

        x: 295
        y: 201

        filename: "button_png/off_display_down.png"
    }
}
