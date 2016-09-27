import QtQuick 2.6
import QtQuick.Window 2.2



Item{
    id:root
 width:Screen.width
 height: Screen.height -4
 focus: true
 Keys.onPressed:{
     console.log(event.key)
        if(event.key===Qt.Key_Up)
     {
        console.log("loop enter")
        event.accepted = true;
         ballons.y=(ballons.y)-60
     }


           if(event.key===Qt.Key_Down)
        {
           console.log("loop enter")
           event.accepted = true;
            ballons.y=(ballons.y)+60
        }

              if(event.key===Qt.Key_Left)
           {
              console.log("loop enter")
              event.accepted = true;
               ballons.x=(ballons.x)-6
           }


                 if(event.key===Qt.Key_Right)
              {
                 console.log("loop enter")
                 event.accepted = true;
                  ballons.x=(ballons.x)+6
              }

 }




Flickable
{
    width: Screen.width
    height: Screen.height
    contentHeight: Screen.height*4
    contentWidth: Screen.width
    interactive: true
    boundsBehavior: Flickable.StopAtBounds
    contentY: Math.min(contentHeight-height, Math.max(0,ballons.y-height/2))

    Image{
    id: feild
    anchors.fill: parent
    source: "Artwork/download.jpg"
    sourceSize.width: Screen.width
    sourceSize.height: Screen.height

     }
    Image
    {
        id:ballons
        source: "Artwork/balloon.png"
        x:Screen.width/2
        y:Screen.height/2

    }



}
}
