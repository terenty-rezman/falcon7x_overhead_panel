import QtQuick 2.15
import QtQuick

import "../basic_components"

Item {
    TwoStateButton {
        objectName: "pty_lh"

        x: 60
        y: 35

        filename: "../button_png/pty.png"
        mouse_enabled: false
    }

    TwoStateButton {
        objectName: "master_warning_lh_ind"

        x: 172
        y: 35

        filename: "../button_png/master_warning.png"
        mouse_enabled: false
    }

    TwoStateButton {
        objectName: "master_warning_lh"

        x: 172
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "master_caution_lh_ind"

        x: 231
        y: 35

        filename: "../button_png/master_caution.png"
        mouse_enabled: false
    }

    TwoStateButton {
        objectName: "master_caution_lh"

        x: 231
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "sil_aural_alarm_lh"

        x: 285
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "fms_msg_lh"

        x: 344
        y: 35

        filename: "../button_png/fms_msg.png"
    }

    TwoStateButton {
        objectName: "event_lh"

        x: 402
        y: 35

        filename: "../button_png/event.png"
    }

    TwoStateButton {
        objectName: "event_rh"

        x: 530
        y: 35

        filename: "../button_png/event.png"
    }

    TwoStateButton {
        objectName: "fms_msg_rh"

        x: 585
        y: 35

        filename: "../button_png/fms_msg.png"
    }

    TwoStateButton {
        objectName: "sil_aural_alarm_rh"

        x: 644
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "master_caution_rh_ind"

        x: 700
        y: 35

        filename: "../button_png/master_caution.png"
        mouse_enabled: false
    }

    TwoStateButton {
        objectName: "master_caution_rh"

        x: 700
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "master_warning_rh_ind"

        x: 758
        y: 35

        filename: "../button_png/master_warning.png"
        mouse_enabled: false
    }

    TwoStateButton {
        objectName: "master_warning_rh"

        x: 758
        y: 35

        filename: "../button_png/empty_two_state.png"
    }

    TwoStateButton {
        objectName: "pty_rh"

        x: 873
        y: 35

        filename: "../button_png/pty.png"
        mouse_enabled: false
    }
}
