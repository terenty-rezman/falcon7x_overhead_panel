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

    RotateStepper {
        objectName: "fp_speed_kts_mach"

        x: 224
        y: 180

        filename: "../button_png/rotate_stepper.png"
    }

    TwoStateButton {
        objectName: "fp_speed_is_mach_push"

        x: 224
        y: 180

        filename: "../button_png/empty_two_state.png"
    }

    DigitsDisplay {
        objectName: "fp_speed_mach_ind"

        x: 220
        y: 139

        prefix: ""
        min_value: 0
        max_value: 1

        pack_max_value: 65535
        is_int_value: false

        visible: true
    }

    DigitsDisplay {
        objectName: "fp_speed_kts_ind"

        x: 220
        y: 139

        prefix: ""
        min_value: 95
        max_value: 370

        pack_max_value: 65535

        visible: false
    }
}
