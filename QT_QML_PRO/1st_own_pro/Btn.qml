import QtQuick 2.0

Item {
    property string btn_back
    property string btn_border
    signal buttonclk
    id:buttom



    Rectangle{
           id:but_tangle
           color: buttom.btn_back
           height: buttom.height/8
           width:  buttom.width/8
           anchors.centerIn: buttom

           border.color: buttom.btn_border
           border.width: 7
           radius: 20
          /* gradient: Gradient {
                     GradientStop { position: 0.0; color: "lightsteelblue" }
                     GradientStop { position: 1.0; color: "blue" }
                 }*/

       }

       Text{
           color:"yellow"
           text: "<b>Hello</b> <i>World!</i>"
           anchors.centerIn: but_tangle
           font.pixelSize: Math.round(but_tangle.height/8)
         //  padding: bottom
           //font.family: "Helvetica"
           //font.pointSize: 24
       }

       MouseArea{
           hoverEnabled: true
          onEntered:{
           but_tangle.rotation=45
           but_tangle.scale=1.5

           }
           onExited: {
           but_tangle.rotation=0
               but_tangle.scale=1
           }
       anchors.fill: but_tangle
       onClicked: buttonclk()
       }

}
