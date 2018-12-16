import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Calculatrice")
    property int pasX: width/4;
    property int pasY: height/3
    Rectangle {
        id : regNumber1
        x : 0
        y : 0
        width: (pasX*2)
         height:pasY
        color: "#ff0000"
        TextInput  {
            id : number1
            x : 0
            y : 0
            width: parent.width
            height: parent.height
            //inputMethodHints : Qt.ImhFormattedNumbersOnly
            color: "#ffffff"
        }
    }
    Rectangle {
        id : regNumber2
        x : (pasX*2)
        y : 0
        width: (pasX*2)
        height:pasY
        color: "#ff0000"
        TextInput  {
            id : number2
            x : 0
            y : 0
            width: parent.width
            height: parent.height
            //inputMethodHints : Qt.ImhFormattedNumbersOnly
            color: "#ffffff"
        }
    }



    Rectangle {
        id : add
        x : 0
        y :  pasY
        width: (pasX)
        height: pasY
        color: "#0000ff"
        Text {
            x : 0
            y :  0
            width: parent.width
            height: parent.height
            id: lableAdd
            text: qsTr("+")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
             color:  "#ffffff"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                var a =parseInt( number1.text);
                var b =parseInt( number2.text);
                lableresultv.text = (a+b)
            }
        }

    }
    Rectangle {
        id : remove
        x : pasX
        y :  pasY
        width: (pasX)
        height: pasY
        color: "#000099"
        Text {
            x : 0
            y :  0
            width: parent.width
            height: parent.height
            id: lableTremove
            text: qsTr("-")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
             color:  "#ffffff"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                var a = parseInt( number1.text);
                var b = parseInt( number2.text);
                lableresultv.text = (a-b)
            }
        }
    }
    Rectangle {
        id : multy
        x : pasX*2
        y :  pasY
        width: (pasX)
        height: pasY
        color: "#000066"
        Text {
            x : 0
            y :  0
            width: parent.width
            height: parent.height
            id: lableMulty
            text: qsTr("*")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
             color:  "#ffffff"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                var a = parseInt( number1.text);
                var b = parseInt( number2.text);
                lableresultv.text = (a*b)
            }
        }

    }
    Rectangle {
        id : div
        x : pasX*3
        y :  pasY
        width: (pasX)
        height: pasY
        color: "#000033"
        Text {
            x : 0
            y :  0
            width: parent.width
            height: parent.height
            id: lableDiv
            text: qsTr("/")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
             color:  "#ffffff"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                var a = parseInt( number1.text);
                var b = parseInt( number2.text);
                lableresultv.text = (a/b)
            }
        }
    }
    Rectangle {
        id : result
        x : 0
        y :  pasY*2
        width: (pasX*4)
        height: pasY
        color: "#00ff00"
        Text {
            x : 0
            y :  0
            width: parent.width
            height: parent.height
            id: lableresultv
            text: qsTr("")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
             color:  "#ffffff"
        }
    }
}
