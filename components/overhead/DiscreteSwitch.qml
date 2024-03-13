import QtQuick 2.15
import QtQml

import "../basic_components"

Item {
    id: switch_
    width: 46
    height: 46

    property string filename
    property alias cursorShape: mouse.cursorShape

    property int rotation_deg: 0
    property list<int> angles: [0, 45, 90, 135, 315]
    property int state: 0

    Image {
        id: img
        source: switch_.filename

        sourceSize.width: 46
        sourceSize.height: 46
        sourceClipRect: Qt.rect(0, 0, 46, 46)

        transform: Rotation { origin.x: 23; origin.y: 23; angle: switch_.rotation_deg }
    }

    onStateChanged: {
        let state_length = switch_.angles.length;
        let state = switch_.state;

        state = Math.max(0, state);
        state = Math.min(state, state_length - 1);

        let angle = switch_.angles[state];
        switch_.rotation_deg = angle;
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onPressed: () => {
            let state_length = switch_.angles.length;
            let state = switch_.state;

            state += 1;
            if (state >= state_length) {
                state = 0;
            }

            switch_.state = state;

            backend.on_rotation(switch_)
        }
    }
}
