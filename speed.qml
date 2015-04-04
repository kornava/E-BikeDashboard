import QtQuick 2.4

Item {
    id: root

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

    Canvas {
        id: speedometer
        width: 240
        height: 240
        antialiasing: true
        anchors.left: parent.left
        anchors.leftMargin: parent.width * .3


        property color primaryColor: "orange"
        property color secondaryColor: "lightblue"

        property real centerWidth: width / 2
        property real centerHeight: height / 2
        property real radius: Math.min(speedometer.width, speedometer.height) / 2

        property real minimumValue: 0
        property real maximumValue: 100
        property real currentValue: 33

        // this is the angle that splits the circle in two arcs
        // first arc is drawn from 0 radians to angle radians
        // second arc is angle radians to 2*PI radians
        property real angle: (currentValue - minimumValue) / (maximumValue - minimumValue) * 2 * Math.PI

        // we want both circle to start / end at 12 o'clock
        // without this offset we would start / end at 9 o'clock
        property real angleOffset: -Math.PI / 2

        property string text: "50"

        signal clicked()

        onPrimaryColorChanged: requestPaint()
        onSecondaryColorChanged: requestPaint()
        onMinimumValueChanged: requestPaint()
        onMaximumValueChanged: requestPaint()
        onCurrentValueChanged: requestPaint()

        onPaint: {
            var ctx = getContext("2d");
            ctx.save();

            ctx.clearRect(0, 0, speedometer.width, speedometer.height);

            // fills the mouse area when pressed
            // the fill color is a lighter version of the
            // secondary color

//            if (mouseArea.pressed) {
//                ctx.beginPath();
//                ctx.lineWidth = 1;
//                ctx.fillStyle = Qt.lighter(speedometer.secondaryColor, 1.25);
//                ctx.arc(speedometer.centerWidth,
//                        speedometer.centerHeight,
//                        speedometer.radius,
//                        0,
//                        2*Math.PI);
//                ctx.fill();
//            }

            // First, thinner arc
            // From angle to 2*PI

            ctx.beginPath();
            ctx.lineWidth = 1;
            ctx.strokeStyle = primaryColor;
            ctx.arc(speedometer.centerWidth,
                    speedometer.centerHeight,
                    speedometer.radius,
                    angleOffset + speedometer.angle,
                    angleOffset + 2*Math.PI);
            ctx.stroke();


            // Second, thicker arc
            // From 0 to angle

            ctx.beginPath();
            ctx.lineWidth = 3;
            ctx.strokeStyle = speedometer.secondaryColor;
            ctx.arc(speedometer.centerWidth,
                    speedometer.centerHeight,
                    speedometer.radius,
                    speedometer.angleOffset,
                    speedometer.angleOffset + speedometer.angle);
            ctx.stroke();

            ctx.restore();
        }

        Text {
            id: currSpeed
            anchors.centerIn: parent
            font.pointSize: 150
            text: speedometer.text
            color: speedometer.primaryColor
        }

        Text {
            anchors.top: currSpeed.bottom
            anchors.topMargin: -20
            text: "MPH"
            anchors.horizontalCenter: parent.horizontalCenter
            color: speedometer.primaryColor
            font.pointSize: 30
        }

        MouseArea {
            id: mouseArea

            anchors.fill: parent
            onClicked: speedometer.clicked()
            onPressedChanged: speedometer.requestPaint()
        }
    }

}

