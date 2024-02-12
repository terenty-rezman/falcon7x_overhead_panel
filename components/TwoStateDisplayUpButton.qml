import QtQuick 2.15

Rectangle {
    id: button
    width: 46
    height: 72 
    property int state: 0
    color:"transparent"

    property string filename
    property alias mouse_enabled: mouse_area.enabled

    Image {
        id: off
        source: button.filename

        sourceSize.width: 92
        sourceSize.height: 70 
        sourceClipRect: Qt.rect(0, 0, 46, 70)
    }

    Image {
        id: on
        source: button.filename

        sourceSize.width: 92
        sourceSize.height: 70 
        sourceClipRect: Qt.rect(46, 0, 46, 70)
    }

    MouseArea {
        id: mouse_area
        width: 46
        height: 46
        x: 0
        y: 72-46

        onPressed: {
            backend.on_button_press(button)
        }

        onReleased: {
            backend.on_button_release(button)
        }
    }

    states: [
        State {
            name: "off"
            when: button.state === 0

            PropertyChanges {
                target: off
                opacity: 1
            }

            PropertyChanges {
                target: on
                opacity: 0
            }
        },

        State {
            name: "on"
            when: button.state === 1

            PropertyChanges {
                target: off
                opacity: 0
            }

            PropertyChanges {
                target: on
                opacity: 1
            }
        }
    ]
}
