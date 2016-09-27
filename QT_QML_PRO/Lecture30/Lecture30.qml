import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Timer{
    interval: 500
    repeat: true
    running: true
    onTriggered: {
//    time.text = Date().toString()
        time.text = Qt.formatDateTime(new Date(),"dd.hh:mm:ss ap")
    }
    }

    Component {
              id: redSquare

              Rectangle {
                  color: "red"
                  width: 10
                  height: 10
              }
          }



    Loader{
    id:loader
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            //loader.source = Qt.resolvedUrl("addMe.qml")
            loader.sourceComponent = redSquare
            Qt.openUrlExternally("C:\Kalimba.mp3");
        }
    }



    Text {
        id:time
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
}
