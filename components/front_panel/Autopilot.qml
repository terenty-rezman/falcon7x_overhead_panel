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

    DiscreteSwitch {
        objectName: "fp_speed_mach_man_fms"

        angles: [345, 15]
        rotation_deg: 345

        x: 224
        y: 181

        filename: "../button_png/rotate_switch.png"
    }

    RotateStepper {
        objectName: "fp_speed_kts_mach"

        x: 224
        y: 186

        filename: "../button_png/rotate_stepper.png"
    }

    TwoStateButton {
        objectName: "fp_speed_is_mach_push"

        x: 224
        y: 186

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

    ThreeStateButton {
        objectName: "fp_autothrottle"

        x: 224
        y: 221

        filename: "../button_png/off_on_on.png"
    }

    ThreeStateButton {
        objectName: "fp_approach"

        x: 318
        y: 123

        filename: "../button_png/off_cyan_green.png"
    }

    ThreeStateButton {
        objectName: "fp_lnav"

        x: 319
        y: 222

        filename: "../button_png/off_cyan_green.png"
    }

    DigitsDisplay {
        objectName: "fp_hdg_trk_ind"

        x: 389
        y: 139

        prefix: ""
        min_value: 0
        max_value: 360

        pack_max_value: 65535
    }

    DiscreteSwitch {
        objectName: "fp_hdg_trk_switch"

        angles: [345, 15]
        rotation_deg: 345

        x: 390
        y: 178

        filename: "../button_png/rotate_switch.png"
    }

    RotateStepper {
        objectName: "fp_hdg_trk"

        x: 390
        y: 183

        filename: "../button_png/rotate_stepper.png"
    }

    TwoStateButton {
        objectName: "fp_hdg_trk_push"

        x: 390
        y: 181

        filename: "../button_png/empty_two_state.png"
    }

    ThreeStateButton {
        objectName: "fp_hdg_trk_mode"

        x: 390
        y: 222

        filename: "../button_png/off_on_on.png"
    }

    ThreeStateButton {
        objectName: "fp_pilot_side"

        x: 478
        y: 123

        filename: "../button_png/left_right_off.png"
    }

    ThreeStateButton {
        objectName: "fp_autopilot"

        x: 478
        y: 221

        filename: "../button_png/off_on_on.png"
    }

    RotateStepper {
        objectName: "fp_vs_path"

        x: 550
        y: 165

        filename: "../button_png/rotate_stepper.png"
    }

    ThreeStateButton {
        objectName: "fp_clb"

        x: 629
        y: 123

        filename: "../button_png/off_on_on.png"
    }

    ThreeStateButton {
        objectName: "fp_vs"

        x: 629
        y: 172

        filename: "../button_png/off_on_on.png"
    }

    ThreeStateButton {
        objectName: "fp_vnav"

        x: 629
        y: 221

        filename: "../button_png/off_cyan_green.png"
    }

    DigitsDisplay {
        objectName: "fp_asel_ind"

        x: 704
        y: 141

        prefix: ""
        min_value: 0
        max_value: 51000

        pack_max_value: 65535
    }

    DiscreteSwitch {
        objectName: "fp_asel_ft"

        angles: [345, 15]
        rotation_deg: 345

        x: 720
        y: 181

        filename: "../button_png/rotate_switch.png"
    }

    RotateStepper {
        objectName: "fp_asel"

        x: 720
        y: 185

        filename: "../button_png/rotate_stepper.png"
    }

    ThreeStateButton {
        objectName: "fp_alt"

        x: 721
        y: 222

        filename: "../button_png/off_on_on.png"
    }

    RotateStepper {
        objectName: "baro_rot_rh"

        x: 816
        y: 123

        filename: "../button_png/rotate_stepper.png"
    }

    TwoStateButton {
        objectName: "baro_push_rh"

        x: 816
        y: 123

        filename: "../button_png/empty_two_state.png"
    }

    ThreeStateButton {
        objectName: "fdtd_rh"

        x: 814
        y: 203

        filename: "../button_png/off_on_on.png"
    }

    TwoStateButton {
        objectName: "swap_rh"

        x: 889
        y: 135

        filename: "../button_png/empty_two_state.png"
    }

    RotateStepper {
        objectName: "vhf_control_rh"

        x: 889
        y: 199

        filename: "../button_png/rotate_stepper.png"
    }
}
