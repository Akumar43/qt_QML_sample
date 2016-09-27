import QtQuick 2.6
import QtQuick.Window 2.2
Rectangle
{   id:root
    width: 360
    height: 360
    color: "black"

    Rectangle
    {
        id:greenrec
        width: 60
        height: 60
        color: "green"
    }


 SequentialAnimation{
  running: true
  loops: Animation.Infinite
    NumberAnimation {
        target: greenrec
        property: "x"
        to:root.width-greenrec.width
        duration: 200
        easing.type: Easing.InOutQuad
    }
    NumberAnimation {
        target: greenrec
        property: "y"
        to:root.height-greenrec.height
        duration: 200
        easing.type: Easing.InOutQuad
    }

    NumberAnimation {
        target: greenrec
        property: "x"
        to:0
        duration: 200
        easing.type: Easing.InOutQuad
    }
    NumberAnimation {
        target: greenrec
        property: "y"
        to:0
        duration: 200
        easing.type: Easing.InOutQuad
    }
 }
}

