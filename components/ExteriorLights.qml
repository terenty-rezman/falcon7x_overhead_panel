
import QtQuick 2.15

Item { 
    TwoStateButton {
        id: rain_rplint_lh
        objectName: "rain_rplint_lh"

        x: 70
        y: 909

        filename: "button_png/empty_two_state.png"
    }

    ThreeStateDisplayUpDownButton {
        id: el_nav
        objectName: "el_nav"

        x: 124
        y: 883

        filename: "button_png/logo_off_updown.png"
    }

    ThreeStateDisplayUpDownButton {
        id: el_anticol
        objectName: "el_anticol"

        x: 174
        y: 883

        filename: "button_png/off_red_updown.png"
    }

    TwoStateDisplayUpButton {
        id: el_wing
        objectName: "el_wing"

        x: 222
        y: 883

        filename: "button_png/on_display_up.png"
    }

    VerticalSwitch {
        id: el_landing_lh
        objectName: "el_landing_lh"

        x: 280
        y: 895

        filename: "button_png/switch_up_middle_down.png"
    }

    TwoStateDisplayUpButton {
        id: el_landing_lh_ind
        objectName: "el_landing_lh_ind"

        x: 287
        y: 882

        filename: "button_png/on_display_up.png"

        mouse_enabled: false
    }
}
