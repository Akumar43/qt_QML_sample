import QtQuick 2.6
import QtQuick.Window 2.2

Rectangle{
width:Screen.width/2
height:Screen.height/2

ListView{
    width:Screen.width/2
    height:Screen.height/2

    header: Header{}
    spacing: 10
    model:mod

    delegate:MyDel{}
}

Mymodel{
    id:mod
        }
}
