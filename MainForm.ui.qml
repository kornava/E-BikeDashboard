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



RowLayout {
    id: rowLayout2
    height: 100
    anchors.top: columnLayout1.bottom
    anchors.topMargin: 0
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0

    BatteryComponent {
        id: batteryComponent1
        height: 185
        anchors.right: parent.right
        anchors.rightMargin: 166
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.top: columnLayout1.bottom
        anchors.topMargin: 0
    }

    Text {
        id: text1
        color: "#ffffff"
        text: qsTr("100%")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: batteryComponent1.right
        anchors.leftMargin: 0
        font.pixelSize: 50
    }
}

Speed {
    id: speed1
    height: 180
    anchors.top: rowLayout2.bottom
    anchors.topMargin: 0
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
}

        Text {
            id: textInfo
            text: qsTr("SOME TEXT GOES HERE")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            styleColor: "#ffffff"
            anchors.top: speed1.bottom
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            font.pixelSize: 12
        }






    }
}
