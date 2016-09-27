import QtQuick 2.6
import QtQuick.Window 2.2

Rectangle{
id: root
width:360
height:360


Column{

spacing: 10

Rectangle{
id: bluerec
width:360
height:360/3.3
color:activeFocus?"blue":"grey"
focus: true
KeyNavigation.down: yellowrec
KeyNavigation.up:redrec

}

Rectangle{
id: yellowrec
width:360
height:360/3.3
color:activeFocus?"yellow":"grey"

KeyNavigation.down: redrec
KeyNavigation.up:bluerecrec

}


Rectangle{
id: redrec
width:360
height:360/3.3
color:activeFocus?"red":"grey"

KeyNavigation.down: bluerec
KeyNavigation.up:yellowrec

}

}
}
