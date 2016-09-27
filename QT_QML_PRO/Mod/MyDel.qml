import QtQuick 2.0
import QtQuick.Window 2.2
Item {
    width:Screen.width/2
    height:Screen.height/10
    Rectangle{

        id:baseRec
        width:Screen.width/2
        height:Screen.height/10
        color: c

        Image {

            source: s
            width:height
            height:Screen.height/10
            anchors
            {
                leftMargin:4
            }

        }


        Text {
            text: name
            anchors.centerIn: baseRec
            font.pixelSize: 22
        }

        Text {
            text: p
            font.pixelSize: 22

            anchors{
                verticalCenter: parent.verticalCenter
                right: parent.right
            }
        }
    }
}
