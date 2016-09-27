import QtQuick 2.0
import QtQuick.Window 2.2
Item {
    width: Screen.width/2
    height: Screen.height/2

    Rectangle{

        Text {
            text: name
            color: c
        }

        Image {
            id: img
            source: lk

            scale: status === Image.Ready?1:0

            Behavior on scale {
                NumberAnimation{
                    id:scadleanim
                    duration: 1500
                    easing.type: Easing.OutBounce
                }
            }

            opacity : status === Image.Ready?1:0
            Behavior on opacity {
                NumberAnimation{
                    id:opacity_aim
                    duration: 800
                    easing.type: Easing.OutBounce
                }
              }

            }
        PropertyAnimation
        {
            id:scaleanim
            target: img
            property: "scale"
            from:0
            to:1
            duration: 1500
            easing.type: Easing.OutBounce
        }

        NumberAnimation
        {
            id:scaleaim
            target: img
            property: "opacity"
            from:0
            to:1
            duration: 1500
            easing.type: Easing.OutSine
        }


        MouseArea{
            anchors.fill: img
            onClicked: {
                scaleaim.start()
               // scadleanim.start()
            }
        }


    }

}
