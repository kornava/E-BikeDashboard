import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: item1
    width: 640
    height: 480

    RowLayout {
        id: rowLayout1
        spacing: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent


        ColumnLayout {
            id: columnLayout1
            height: 60
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Rectangle {
                id: rectangle1
                height: 60
                color: "#1dc672"
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
            }
        }


        BatteryComponent {
            id: batteryComponent1
            height: 185
            anchors.right: parent.right
            anchors.rightMargin: 1
            anchors.left: parent.left
            anchors.leftMargin: 1
            anchors.top: columnLayout1.bottom
            anchors.topMargin: 1
        }

        Rectangle {
            id: rectangle3
            height: 180
            color: "#ffffff"
            anchors.top: batteryComponent1.bottom
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }


        Text {
            id: textInfo
            height: 60
            text: qsTr("SOME TEXT GOES HERE")
            styleColor: "#ffffff"
            anchors.top: rectangle3.bottom
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            font.pixelSize: 12
        }




    }
}
