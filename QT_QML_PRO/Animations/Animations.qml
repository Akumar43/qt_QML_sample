import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"blue"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    Rectangle{
    id:"backdrop"
    width: 150
    height: 180
    color: "transparent"
        anchors.centerIn: parent
        radius: 20


        states: [
            State {
                name: "Entered"
                PropertyChanges {
                    target: backdrop
                    color:"orange"
                }
            },
            State {
                name: "Exited"
                PropertyChanges {
                    target: backdrop
                    color:"transparent"
                }
            }
        ]

        transitions: [
            Transition {
                from: "Exited"
                to: "Entered"

                ColorAnimation {
                    target: backdrop
                    duration: 200
                }

            },
            Transition {
                            from: "Entered"
                            to: "Exited"

                            ColorAnimation {
                                target: backdrop
                                duration: 200
                            }

                        }
        ]


    }

    Image {
        id:images
        width: 130
        height: 160
        source: "https://pixabay.com/static/uploads/photo/2014/04/02/16/28/apple-307356_960_720.png"
        anchors.centerIn: backdrop


//        scale: status === Image.Ready?1:0   // working uncomment to activate
//        Behavior on scale{
//        NumberAnimation{
//        duration: 1200
//        easing.type: Easing.OutBack

//        }
//        }

//        opacity: status === Image.Ready?1:0
//        Behavior on opacity{
//        NumberAnimation{
//            from: 0
//            to: 1
//        duration: 13000
//        easing.type: Easing.OutBack

//        }
//        }

        MouseArea {
              anchors.fill: parent
              hoverEnabled: true
              onEntered: backdrop.state = "Entered"
              onExited: backdrop.state = "Exited"
              onClicked: {
                  scaleanimation.start();
                    opacityanimation.start();
              }
          }

    }

    PropertyAnimation
    {
    id:scaleanimation
    target:images
    property: "scale"
    from: 0
            to: 1
        duration: 4000
        easing.type: Easing.OutBack
    }

    NumberAnimation
    {
    id:opacityanimation
    target:images
    property: "opacity"
    from: 0
            to: 1
        duration: 13000
        easing.type: Easing.OutSine
    }
}

