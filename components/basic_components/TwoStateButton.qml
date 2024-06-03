import QtQuick 2.15

Item {
    id: button
    width: 46
    height: 46
    property int state: 0

    property string filename
    property alias mouse_enabled: mouse_area.enabled

    Image {
        id: off
        source: button.filename

        sourceSize.width: 2 * button.width 
        sourceSize.height: button.height
        sourceClipRect: Qt.rect(0, 0, button.width, button.height)
    }

    Image {
        id: on
        source: button.filename

        sourceSize.width: 2 * button.width
        sourceSize.height: button.height
        sourceClipRect: Qt.rect(button.width, 0, button.width, button.height)
    }

    MouseArea {
        id: mouse_area
        anchors.fill: parent
        cursorShape: button.mouse_enabled ? Qt.PointingHandCursor : Qt.ArrowCursor

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
