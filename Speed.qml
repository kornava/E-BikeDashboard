import QtQuick 2.4

Item {
    id: root

    Rectangle {
        anchors.left: parent.left
        anchors.leftMargin: parent.width * .25
        Text {
            id: currSpeed
            text: "500"
            font.pointSize: 100
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

}

