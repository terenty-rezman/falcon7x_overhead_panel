import QtQuick 2.15
import QtQml

Item {
    id: switch_
    width: 46
    height: 46

    property string filename

    property int rotation_deg: 0
    property list<int> angles: [-90, -45, -134]
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
        id: upper_click_area
        cursorShape: Qt.SizeVerCursor

        width: 46
        height: 23 

        onPressed: () => {
            switch_.state = 1; 
            backend.on_rotation(switch_)
        }

        onReleased: () => {
            switch_.state = 0; 
            backend.on_rotation(switch_)
        }
    }

    MouseArea {
        id: lower_click_area
        cursorShape: Qt.SizeVerCursor

        width: 46
        height: 23 
        y: 23

        onPressed: () => {
            switch_.state = 2; 
            backend.on_rotation(switch_)
        }

        onReleased: () => {
            switch_.state = 0; 
            backend.on_rotation(switch_)
        }
    }
}
