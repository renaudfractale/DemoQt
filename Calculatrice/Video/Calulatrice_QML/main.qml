import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Calculatrice super class")

    property int pasX: width/4;
    property int pasY: height/3;

    Rectangle{
        id : input1
        x:0
        y:0
        width: 2*pasX
        height: pasY
        color: "#ff0000"
        TextInput{
            id : number1
            x:0
            y:0
            width: parent.width
            height: parent.height
            color: "#ffffff"
        }
    }

    Rectangle{
        id : input2
        x:2*pasX
        y:0
        width: 2*pasX
        height: pasY
        color: "#990000"
        TextInput{
            id : number2
            x:0
            y:0
            width: parent.width
            height: parent.height
            color: "#ffffff"
        }
    }

    Rectangle{
        id : buttonAdd
        x:0
        y:pasY
        width: pasX
        height: pasY
        color: "#0000FF"
        Text {
            x:0
            y:0
            width: parent.width
            height: parent.height
            text: qsTr("+")
            color:  "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                var a = parseInt(number1.text);
                var b = parseInt(number2.text);
                result.text = a+b;
            }
        }
    }

    Rectangle{
        id : buttonRemove
        x:pasX
        y:pasY
        width: pasX
        height: pasY
        color: "#000099"
        Text {
            x:0
            y:0
            width: parent.width
            height: parent.height
            text: qsTr("-")
            color:  "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                var a = parseInt(number1.text);
                var b = parseInt(number2.text);
                result.text = a-b;
            }
        }
    }
    Rectangle{
        id : buttonMulty
        x:pasX*2
        y:pasY
        width: pasX
        height: pasY
        color: "#000066"
        Text {
            x:0
            y:0
            width: parent.width
            height: parent.height
            text: qsTr("*")
            color:  "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                var a = parseInt(number1.text);
                var b = parseInt(number2.text);
                result.text = a*b;
            }
        }
    }

    Rectangle{
        id : buttonDiv
        x:pasX*3
        y:pasY
        width: pasX
        height: pasY
        color: "#000033"
        Text {
            x:0
            y:0
            width: parent.width
            height: parent.height
            text: qsTr("/")
            color:  "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                var a = parseInt(number1.text);
                var b = parseInt(number2.text);
                result.text = a/b;
            }
        }
    }
    Rectangle{
        id : rectResult
        x:0
        y:pasY*2
        width: pasX*4
        height: pasY
        color: "#00ff00"
        Text {
            id:  result
            x:0
            y:0
            width: parent.width
            height: parent.height
            text: qsTr("")
            color:  "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
