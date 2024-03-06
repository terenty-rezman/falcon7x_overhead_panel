import QtQuick 2.15
import QtQuick

Rectangle {
    anchors.fill: parent
    color: "#000000"

    Flickable {
        anchors.fill: parent
        contentWidth: panel.width
        contentHeight: panel.height  

        Image {
            id: panel
            width: 1000
            height: 1000
            source: "button_png/overhead.png"

            FirePanel {}

            FlightControlPanel {}

            EnginesApu {}

            Hydraulics {}

            DCSupply {}

            AirConditioning {}

            Fuel {}

            AntiIce {}

            Bleed {}

            Pressurization {}

            PitotHeat {}

            WindshieldHeat {}
            
            PaxOxygen {}

            ExteriorLights {}

            CockpitLights {}
        }
    }
}
