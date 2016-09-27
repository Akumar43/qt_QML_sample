import QtQuick 2.6
import QtQuick.Window 2.2

///property string backcoloralue

Rectangle{
    id:root
    height: Screen.height/2
    width:  Screen.width/2
    color: "black"



    Btn{
        height: Screen.height
        width:  Screen.width
        anchors.centerIn: root
        btn_back: "red"
        btn_border: "blue"

        onButtonclk: console.log("button clik huwa h\n")


    }
    Image {
        //id:imageo
        height: Screen.height/12
        width:  Screen.width/12
        id: imge
        x: 441
        y: 61
        source: "http://images.apple.com/apple-events/static/apple-events/september-2013/video/poster_large_2x.jpg"
    }

    Text {
        id: name1
        text: "texto"
        color : "white"
        anchors{
        top: imge.bottom
        topMargin :10
        horizontalCenter:imge.horizontalCenter
        }

        TextInput {
            id: textInput1

            anchors{
            top: name1.bottom
            topMargin :30
            horizontalCenter:name1.horizontalCenter
            }
            width: 80
            height: 20
            color: "#db4848"
            text: qsTr("Text Input")
            font.pixelSize: 12
            ///onAccepted: console.log(textInput1.text)
            onAccepted: text1.text=textInput1.text
        }

        Text {
            id: text1
            anchors{
            top: name1.bottom
            topMargin :60
            horizontalCenter:name1.horizontalCenter
            }
            width: 123
            height: 33
            color: "#f2b6b6"
            text: qsTr("please enter text")
            font.family: "Times New Roman"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 17
        }

    }

}
