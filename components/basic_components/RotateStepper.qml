import QtQuick 2.15

Item {
    id: switch_
    width: 46
    height: 46

    property string filename
    property alias cursorShape: mouse.cursorShape

    Image {
        id: img
        source: switch_.filename

        sourceSize.width: 46
        sourceSize.height: 46
        sourceClipRect: Qt.rect(0, 0, 46, 46)
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        cursorShape: Qt.SizeVerCursor

        onWheel: (wheel) => {
            let angle = wheel.angleDelta.y;
            let direction = 0;

            if (angle > 0) {
               direction = 1; 
            }
            else if (angle < 0) {
                direction = 2;
            }

            backend.on_rotation_step(switch_, direction)
            // release step
            backend.on_rotation_step(switch_, 0)
        }
    }
}
