import QtQuick 2.15

Item { 
    RotateSwitch {
        objectName: "aft_temp"
        
        x: 621
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    RotateSwitch {
        objectName: "fwd_temp"
        
        x: 691
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    DigitsDisplay {
        objectName: "aft_temp_disp"

        x: 622
        y: 351

        prefix: "INOP"
        min_value: 12
        max_value: 32

        visible: false
    }

    TwoStateButton {
        objectName: "fwd_temp_push"

        x: 691
        y: 302

        filename: "button_png/empty_two_state.png"
    }

    DigitsDisplay {
        objectName: "fwd_temp_disp"

        x: 692
        y: 351

        prefix: "MAN"
        min_value: 12
        max_value: 32

        visible: false
    }

    RotateSwitch {
        objectName: "crew_temp"

        x: 810
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    DigitsDisplay {
        objectName: "crew_temp_disp"

        x: 811
        y: 351

        prefix: "MAN"
        min_value: 12
        max_value: 32

        visible: false
    }

    TwoStateButton {
        objectName: "crew_temp_push"

        x: 811
        y: 302

        filename: "button_png/empty_two_state.png"
    }

    RotateSwitch {
        objectName: "crew_ratio"

        x: 878
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    TwoStateDisplayDownButton {
        objectName: "gnd_vent"

        x: 616
        y: 403

        filename: "button_png/off_display_down.png"
    }

    DiscreteSwitch {
        objectName: "pack"

        x: 731
        y: 383

        filename: "button_png/rotate_switch.png"
    }

    TwoStateDisplayUpButton {
        objectName: "bag_isol"

        x: 885
        y: 402

        filename: "button_png/on_display_up.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "xbleed_ecs"

        x: 732
        y: 457

        filename: "button_png/on_off_display_updown.png"
    }
}
