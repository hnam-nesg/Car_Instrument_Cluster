import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item{
    width: 290
    height: 290
    property string currentSelection: ""
    visible: true
    id: arcGauge
    property real minimumValue: 0
    property real maximumValue: 240
    property real value: 50
    property bool shadowVisible: true
    Canvas {
        id: canvas
        anchors.fill: parent
        property real value: (arcGauge.value - arcGauge.minimumValue) / (arcGauge.maximumValue - arcGauge.minimumValue)
        property color backgroundColor: "#222"
        property color arcColor: "lime"

        onPaint: {
            var ctx = getContext("2d");
            ctx.reset();

            var centerX = arcGauge.width / 2;
            var centerY = arcGauge.height / 2;
            var radius = Math.min(arcGauge.width, arcGauge.height) / 2 - 20;

            function degreesToRadians(degrees) {
                return degrees * (Math.PI / 180);
            }

            var startAngle = 150;
            var sweepAngle = 240;
            var startRad = degreesToRadians(startAngle);
            var endRadFull = degreesToRadians(startAngle + sweepAngle);
            var endRadValue = degreesToRadians(startAngle + sweepAngle * value);

            ctx.lineWidth = 40;
            ctx.strokeStyle = "transparent";
            ctx.beginPath();
            ctx.arc(centerX, centerY, radius, startRad, endRadFull, false);
            ctx.stroke();

            let gradient = ctx.createLinearGradient(centerX, centerY - radius, centerX, centerY + radius);
            gradient.addColorStop(0.0, "#E90B0B61")
            gradient.addColorStop(0.5, "#5C14D0")
            gradient.addColorStop(1.0, "#9900cc")


            ctx.strokeStyle = gradient;
            ctx.beginPath();
            ctx.arc(centerX, centerY, radius, startRad, endRadValue, false);
            ctx.stroke();

            var needleAngle = endRadValue;
            var needleLength = radius * 0.9;
            var sideAngle = needleAngle + Math.PI / 2;

            var baseWidth = 10;
            var tipWidth = 1;

            var x1 = centerX + baseWidth * Math.cos(sideAngle);
            var y1 = centerY + baseWidth * Math.sin(sideAngle);

            var x2 = centerX - baseWidth * Math.cos(sideAngle);
            var y2 = centerY - baseWidth * Math.sin(sideAngle);

            var tipX1 = centerX + needleLength * Math.cos(needleAngle) + tipWidth * Math.cos(sideAngle);
            var tipY1 = centerY + needleLength * Math.sin(needleAngle) + tipWidth * Math.sin(sideAngle);

            var tipX2 = centerX + needleLength * Math.cos(needleAngle) - tipWidth * Math.cos(sideAngle);
            var tipY2 = centerY + needleLength * Math.sin(needleAngle) - tipWidth * Math.sin(sideAngle);

            var needleGradient = ctx.createLinearGradient(centerX, centerY - needleLength, centerX, centerY + needleLength);
            needleGradient.addColorStop(0, "#002fff");
            needleGradient.addColorStop(0.5, "#5C14D0");
            needleGradient.addColorStop(1, "#9900cc");




            ctx.fillStyle = needleGradient;
            ctx.beginPath();
            ctx.moveTo(x1, y1);
            ctx.lineTo(tipX1, tipY1);
            ctx.lineTo(tipX2, tipY2);
            ctx.lineTo(x2, y2);
            ctx.closePath();
            ctx.fill();

            ctx.beginPath();
            ctx.arc(centerX, centerY, 14, 0, 2 * Math.PI, false);
            ctx.fillStyle = "black";
            ctx.fill();
        }

        Behavior on value {
            NumberAnimation { duration: 0; easing.type: Easing.InOutQuad }
        }
        Connections {
            target: arcGauge
            onValueChanged: canvas.requestPaint()
        }

    }
    // MouseArea {
    //     anchors.fill: parent
    //     MouseArea {
    //         anchors.fill: parent
    //         onPositionChanged: (mouse) => {
    //             const dx = mouse.x - canvas.width / 2;
    //             const dy = mouse.y - canvas.height / 2;

    //             // Tính khoảng cách từ điểm click đến tâm của vòng tròn
    //             const distance = Math.sqrt(dx * dx + dy * dy);

    //             // Kiểm tra xem điểm click có nằm trong vòng tròn không
    //             const radius = Math.min(canvas.width, canvas.height) / 2 - 20; // Bán kính vòng tròn

    //             if (distance <= radius) {
    //                 const angleRad = Math.atan2(dy, dx);
    //                 let angleDeg = angleRad * 180 / Math.PI;

    //                 if (angleDeg < 0) angleDeg += 360;

    //                 const startAngle = 150;
    //                 const sweepAngle = 240;
    //                 const endAngle = (startAngle + sweepAngle) % 360;

    //                 // Kiểm tra nếu angleDeg nằm trong cung từ startAngle → endAngle (có vòng qua 0)
    //                 const inRange = startAngle < endAngle
    //                     ? (angleDeg >= startAngle && angleDeg <= endAngle)
    //                     : (angleDeg >= startAngle || angleDeg <= endAngle);

    //                 if (inRange) {
    //                     let relative;
    //                     if (angleDeg >= startAngle)
    //                         relative = angleDeg - startAngle;
    //                     else
    //                         relative = (360 - startAngle) + angleDeg;

    //                     arcGauge.value = arcGauge.minimumValue + (relative / sweepAngle) * (arcGauge.maximumValue - arcGauge.minimumValue);
    //                 }
    //             }
    //         }

    //     }


    // }

    // ShaderEffect {
    //     anchors.fill: canvas
    //     visible: arcGauge.shadowVisible
    //     property variant source: canvas
    //     fragmentShader: "
    //         uniform sampler2D source;
    //         varying vec2 qt_TexCoord0;
    //         void main() {
    //             vec4 tex = texture2D(source, qt_TexCoord0);
    //             gl_FragColor = vec4(0.0, 0.0, 0.0, tex.a * 0.3);  // Shadow đen mờ
    //         }
    //     "
    // }
}
