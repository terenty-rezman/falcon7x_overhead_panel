
import QtQuick 2.15

Item { 
    TwoStateButton {
        id: rain_rplint_lh
        objectName: "rain_rplint_lh"

        x: 65
        y: 904

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

        filename: "button_png/ldg_display_up.png"

        mouse_enabled: false
    }

    VerticalSwitch {
        id: el_landing_rh
        objectName: "el_landing_rh"

        x: 354
        y: 895

        filename: "button_png/switch_up_middle_down.png"
    }

    TwoStateDisplayUpButton {
        id: el_landing_rh_ind
        objectName: "el_landing_rh_ind"

        x: 345
        y: 882

        filename: "button_png/ldg_display_up.png"

        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        id: el_taxi
        objectName: "el_taxi"

        x: 410
        y: 883

        filename: "button_png/on_display_up.png"
    }
}
