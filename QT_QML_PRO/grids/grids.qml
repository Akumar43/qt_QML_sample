import QtQuick 2.6
import QtQuick.Window 2.2

Rectangle{
width: 360
height:360

Grid{
rows: 4
columns: 5
spacing: 20
Repeater
{
    model: 12
    Rectangle{
    width: 360/4
    height:360/4
    color:"blue"
    }

}

}
}
