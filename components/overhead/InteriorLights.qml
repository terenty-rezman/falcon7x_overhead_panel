import QtQuick 2.15

import "../basic_components"

Item { 
    VerticalSwitch {
        objectName: "il_emerge_lights"

        x: 669
        y: 893

        filename: "../button_png/switch_up_middle_down.png"
    }

    TwoStateDisplayUpButton {
        objectName: "il_emerge_lights_ind"

        x: 669
        y: 882

        filename: "../button_png/emrge_display_up.png"

        mouse_enabled: false
    }

    TwoStateDisplayUpButton {
        objectName: "il_fasten"

        x: 728
        y: 882

        filename: "../button_png/on_display_up.png"
    }

    TwoStateDisplayUpButton {
        objectName: "il_smoking"

        x: 777
        y: 882

        filename: "../button_png/on_display_up.png"
    }

    ThreeStateDisplayUpDownButton {
        objectName: "il_cabin"

        x: 828
        y: 882

        filename: "../button_png/pax_off_updown.png"
    }

    TwoStateButton {
        objectName: "rain_rplint_rh"

        x: 888
        y: 904

        filename: "../button_png/empty_two_state.png"
    }
}
