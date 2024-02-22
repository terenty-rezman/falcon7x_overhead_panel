import QtQuick 2.15

Item {
    id: switch_
    width: 46
    height: 46

    property string filename
    property int rotation_deg: -135
    property real rotation_float: 0
    property int rotation_byte: 0
    property int min_angle: -135
    property int max_angle: 135
    property int step: 5
    property alias cursorShape: mouse.cursorShape

    Image {
        id: img
        source: switch_.filename

        sourceSize.width: 46
        sourceSize.height: 46
        sourceClipRect: Qt.rect(0, 0, 46, 46)

        transform: Rotation { origin.x: 23; origin.y: 23; angle: switch_.rotation_deg }
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        cursorShape: Qt.SizeVerCursor

        onWheel: (wheel) => {
            let angle = wheel.angleDelta.y;
            let rotation = switch_.rotation_deg;

            if (angle > 0) {
                rotation += switch_.step;
            }
            else if (angle < 0) {
                rotation -= switch_.step;
            }

            if (rotation >= max_angle) {
                rotation = max_angle; 
            } else if (rotation <= min_angle) {
                rotation = min_angle;
            }

            switch_.rotation_deg = rotation;
            switch_.rotation_float = (rotation - switch_.min_angle) / (switch_.max_angle - switch_.min_angle);
            switch_.rotation_byte = switch_.rotation_float * 255;

            backend.on_rotation(switch_)
        }
    }
}
