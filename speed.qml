import QtQuick 2.4

Item {
    id: root

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: parent.width * .125
        Text {
            id: currSpeed
            text: "500"
            font.pointSize: 200
            color: "white"
        }

        Text {
            id: speedUnitLabel
            text: "MPH"
            color: "white"
            font.pointSize: 50
            anchors.bottom: currSpeed.bottom
            anchors.left: currSpeed.right
        }
    }



//    Rectangle {
//        id: r1
//        width: parent.width * .50
//        height: parent.height
//        color: "red"
//        border.color: "black"
//        border.width: 5
//        radius: 10
//        anchors.left: parent.left
//        anchors.leftMargin: parent.width * .3

//        anchors.right: parent.right
//        anchors.rightMargin: parent.width * .3


//        Text {
//            text: "Hello World"
//            color: "white"
//            horizontalAlignment: Text.AlignHCenter
//            anchors.left: parent.left
//            anchors.leftMargin: parent.width * .1
//            anchors.right: parent.right
//            anchors.rightMargin: parent.width * .1

//            anchors.top: parent.top
//            anchors.topMargin: parent.height *  .5

//        }
//    }

}

