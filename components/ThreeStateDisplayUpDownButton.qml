import QtQuick 2.15

Item {
    id: button
    width: 46
    height: 83
    property int state: 0

    property string filename

    Image {
        id: state0
        source: button.filename

        sourceSize.width: 138 
        sourceSize.height: 83 
        sourceClipRect: Qt.rect(0, 0, 46, 83)
    }

    Image {
        id: state1
        source: button.filename

        sourceSize.width: 138
        sourceSize.height: 83 
        sourceClipRect: Qt.rect(46, 0, 46, 83)
    }

    Image {
        id: state2
        source: button.filename

        sourceSize.width: 138
        sourceSize.height: 83 
        sourceClipRect: Qt.rect(92, 0, 46, 83)
    }

    MouseArea {
        cursorShape: Qt.PointingHandCursor

        width: 46
        height: 46
        x: 0
        y: 16 

        onPressed: {
            backend.on_button_press(button)
        }

        onReleased: {
            backend.on_button_release(button)
        }
    }

    states: [
        State {
            name: "state0"
            when: button.state === 0

            PropertyChanges {
                target: state0 
                opacity: 1
            }

            PropertyChanges {
                target: state1
                opacity: 0
            }

            PropertyChanges {
                target: state2
                opacity: 0
            }
        },

        State {
            name: "state1"
            when: button.state === 1

            PropertyChanges {
                target: state0 
                opacity: 0
            }

            PropertyChanges {
                target: state1
                opacity: 1
            }

            PropertyChanges {
                target: state2
                opacity: 0
            }

        },

        State {
            name: "state2"
            when: button.state === 2

            PropertyChanges {
                target: state0 
                opacity: 0
            }

            PropertyChanges {
                target: state1
                opacity: 0
            }

            PropertyChanges {
                target: state2
                opacity: 1
            }
        }
    ]
}
