import QtQuick 2.15

Rectangle {
    id: button
    width: 46
    height: 46
    property int state: 0

    property string filename

    Image {
        id: off
        source: button.filename

        sourceSize.width: 138
        sourceSize.height: 46
        sourceClipRect: Qt.rect(0, 0, 46, 46)
    }

    Image {
        id: middle
        source: button.filename

        sourceSize.width: 138
        sourceSize.height: 46
        sourceClipRect: Qt.rect(46, 0, 46, 46)
    }

    Image {
        id: on
        source: button.filename

        sourceSize.width: 138
        sourceSize.height: 46
        sourceClipRect: Qt.rect(92, 0, 46, 46)
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            let state = button.state;
            state = state + 1;
            if (state == 3) {
                state = 0;
            }
            button.state = state;

            console.log(button.state)
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
                target: middle
                opacity: 0
            }

            PropertyChanges {
                target: on
                opacity: 0
            }
        },

        State {
            name: "middle"
            when: button.state === 1

            PropertyChanges {
                target: off
                opacity: 0
            }

            PropertyChanges {
                target: middle
                opacity: 1
            }

            PropertyChanges {
                target: on
                opacity: 0
            }
        },

        State {
            name: "on"
            when: button.state === 2

            PropertyChanges {
                target: off
                opacity: 0
            }

            PropertyChanges {
                target: middle
                opacity: 0
            }

            PropertyChanges {
                target: on
                opacity: 1
            }
        }
    ]
}
