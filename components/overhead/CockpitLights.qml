import QtQuick 2.15

import "../basic_components"

Item { 
    RotateSwitch {
        objectName: "cl_overhead"
        
        x: 465
        y: 930

        filename: "../button_png/rotate_switch.png"
    }

    RotateSwitch {
        objectName: "cl_panel"
        
        x: 518
        y: 884

        filename: "../button_png/rotate_switch.png"
    }

    RotateSwitch {
        objectName: "cl_dim"
        
        x: 554
        y: 938

        min_angle: -20
        max_angle: 20
        rotation_deg: -20

        filename: "../button_png/rotate_switch.png"
    }

    RotateSwitch {
        objectName: "cl_shield"
        
        x: 613
        y: 884

        filename: "../button_png/rotate_switch.png"
    }
}
