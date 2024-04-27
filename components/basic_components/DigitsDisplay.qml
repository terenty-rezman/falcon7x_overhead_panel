import QtQuick 2.15

Rectangle {
    id: disp

    width: 43
    height: 14 
    color: "#000000"

    property alias prefix: prefix.text 

    property int state: 0

    property int min_value: 0 
    property int max_value: 100

    property int pack_max_value: 65535

    property bool is_int_value: true

    onStateChanged: {
        let float_val = disp.state / disp.pack_max_value;
        let disp_val = (disp.max_value - disp.min_value) * float_val + disp.min_value;

        if (disp.is_int_value == true){
            disp_val = Math.ceil(disp_val);
        }
        else {
            // show 2 digits after .00
            disp_val *= 100;
            disp_val = Math.ceil(disp_val);
            disp_val /= 100;
        }

        digits.text = disp_val;
    }

    Text {
        id: prefix
        y: -2
        text: "PREF"
        color: "#FFD800"
        padding: 0
    }

    Text {
        id: digits
        y: -2
        text: "12"
        color: "#4CFF00"
        x: 30  
        padding: 0
    }
}
