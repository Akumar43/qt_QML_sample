import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle{
    width: Screen.width/2
    height: Screen.height/2

    ListView{
        width: Screen.width/2
        height: Screen.height/2


        model: mod
        delegate: Dell{}
    }

Model_view{
id: mod
}

}
