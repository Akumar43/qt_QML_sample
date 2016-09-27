import QtQuick 2.6
import QtQuick.Window 2.2

Rectangle {
    id:root
    visible: true
    width: 360
    height: 360

    Rectangle{
    id:bluerec
    color:"blue"
    width: 360/2
    height: 360/2

    states: [
        State {
            name: "CLICKED"
            AnchorChanges {
                target: bluerec
                anchors.horizontalCenter: root.horizontalCenter
                anchors.bottom: root.bottom
            }
            PropertyChanges{
                target: bluerec
                width: 360/12
                height: 360/12
                color: "green"
                rotation:360

            }
        }

    ]

    transitions: [
        Transition {
        ParallelAnimation{ /// try canging SequentialAnimation and parallel animations .. see diffreence
        AnchorAnimation{duration: 2200;easing.type: Easing.OutBounce}
        RotationAnimation{duration: 1200;target:bluerec;from:180;to:360;easing.type:Easing.CosineCurve }

        PauseAnimation {duration: 200}  // to stop the animation
        ColorAnimation {to:"red";duration: 1200;}
                     }
        }

    ]
    }


    MouseArea {
        anchors.fill: bluerec
        onClicked: {
            bluerec.state="CLICKED"
        }
    }

}
