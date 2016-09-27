import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle{
    width:Screen.width/2
    height:Screen.height/8
    color:"#C7C7C7"

    Text {
        text: qsTr("Fruits")
        font.pixelSize: parent.height/1.4
        font.bold: true

    }
}
