import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3

Item{
    id: root

    ProgressBar{
        id: batteryProgress
        minimumValue: 0
        maximumValue: 100
        value: 82.8
        height: parent.height;
        anchors.left: parent.left
        anchors.leftMargin: parent.width *.025
        width: parent.width * .9
        style: ProgressBarStyle{
            background: Rectangle{
                implicitHeight: 90
                implicitWidth: 240
                color: "transparent"
                border.width: 10
                border.color: "grey"
                radius: 10
            }
            progress: Rectangle{
                anchors.fill: parent
                anchors.margins: 20
                color: "#AAF200"
                border.width: 0
                radius: 0
            }
        }
    }

    Rectangle{
        height: parent.height *.33
        width: parent.width * .05
        color: "grey"
        anchors.left: batteryProgress.right
        anchors.leftMargin: -5
        anchors.verticalCenter: parent.verticalCenter
        radius: 10
        border.width: 0

    }


}

