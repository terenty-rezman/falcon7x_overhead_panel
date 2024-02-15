import QtQuick 2.15

Rectangle {
    id: button
    width: 46
    height: 72 
    property int state: 0
    color:"transparent"

    property string filename

    Image {
        id: off
        source: button.filename

        sourceSize.width: 92
        sourceSize.height: 72 
        sourceClipRect: Qt.rect(0, 0, 46, 72)
    }

    Image {
        id: on
        source: button.filename

        sourceSize.width: 92
        sourceSize.height: 72 
        sourceClipRect: Qt.rect(46, 0, 46, 72)
    }

    MouseArea {
        cursorShape: Qt.PointingHandCursor

        width: 46
        height: 46
        x: 0
        y: 0 

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
