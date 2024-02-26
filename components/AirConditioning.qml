import QtQuick 2.15

Item { 
    RotateSwitch {
        id: aft_temp
        objectName: "aft_temp"
        
        x: 621
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    RotateSwitch {
        id: fwd_temp
        objectName: "fwd_temp"
        
        x: 691
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    DigitsDisplay {
        id: aft_temp_disp
        objectName: "aft_temp_disp"

        x: 622
        y: 351

        prefix: "INOP"
        min_value: 12
        max_value: 32

        visible: false
    }

    TwoStateButton {
        id: fwd_temp_push
        objectName: "fwd_temp_push"

        x: 691
        y: 302

        filename: "button_png/empty_two_state.png"
    }

    DigitsDisplay {
        id: fwd_temp_disp
        objectName: "fwd_temp_disp"

        x: 692
        y: 351

        prefix: "MAN"
        min_value: 12
        max_value: 32

        visible: false
    }

    RotateSwitch {
        id: crew_temp
        objectName: "crew_temp"

        x: 810
        y: 302

        filename: "button_png/rotate_switch.png"
    }

    DigitsDisplay {
        id: crew_temp_disp
        objectName: "crew_temp_disp"

        x: 811
        y: 351

        prefix: "MAN"
        min_value: 12
        max_value: 32

        visible: false
    }

    TwoStateButton {
        id: crew_temp_push
        objectName: "crew_temp_push"

        x: 811
        y: 302

        filename: "button_png/empty_two_state.png"
    }

    RotateSwitch {
        id: crew_ratio
        objectName: "crew_ratio"

        x: 878
        y: 302

        filename: "button_png/rotate_switch.png"
    }

}
