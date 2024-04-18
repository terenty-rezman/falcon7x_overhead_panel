import QtQuick 2.15
import QtQuick

import "../basic_components"

Item {
    TwoStateButton {
        objectName: "swap_lh"

        x: 58
        y: 135

        filename: "../button_png/empty_two_state.png"
    }

    RotateStepper {
        objectName: "vhf_control_lh"

        x: 57
        y: 199

        filename: "../button_png/rotate_stepper.png"
    }

    RotateStepper {
        objectName: "baro_rot_lh"

        x: 130
        y: 126

        filename: "../button_png/rotate_stepper.png"
    }

    TwoStateButton {
        objectName: "baro_push_lh"

        x: 130
        y: 126

        filename: "../button_png/empty_two_state.png"
    }

    ThreeStateButton {
        objectName: "fdtd_lh"

        x: 131
        y: 203

        filename: "../button_png/off_on_on.png"
    }
}
