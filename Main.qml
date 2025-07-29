import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick3D
import Fuel
import "./QML"


Window{
    id:root
    width: 1920
    height: 980
    visible: true
    //visibility: Window.FullScreen
    title: qsTr("DashBoard")

    property double startTime: Date.now()
    property int elapsedMinutes: 0
    property string gear_mode: "P"
    property var activeCamera: gear_mode === "P" || gear_mode === "N" ? carModel.activeCamera1 : carModel.activeCamera2

    Timer {
        id: timer
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var now = Date.now();
            root.elapsedMinutes = Math.floor((now - startTime) / 60000);
        }
    }
    Component.onCompleted:{
        root.showMaximized()
    }

    property alias font: font
    FontLoader
    {
        id: font
        source: "qrc:/asset/fontawesome.otf"
    }

    Rectangle{
        width: parent.width
        height: parent.height
        color: "black"
    }

    Image{
        id: panel
        //z:-2
        sourceSize: Qt.size(root.width,root.height )//* 0.8)
        anchors.centerIn: parent
        source: "qrc:/asset/Panel.png"

        IconButton{
            id:leftIndicator
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left-checked/icon-park-solid_right-two.svg" : ""//qrc:/asset/icons/icons-left/icon-park-solid_right-two.svg
            anchors.right: topBar.left
            anchors.rightMargin: 40
            anchors.verticalCenter: topBar.verticalCenter
            SequentialAnimation {
                running: leftIndicator.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: leftIndicator.roundIcon ? leftIndicator.roundIconSource : leftIndicator.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: leftIndicator.roundIcon ? leftIndicator.roundIconSource : leftIndicator.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:leftIndicator1
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            visible: false
            setIcon:checked ? "qrc:/asset/icons/icons-left-checked/icon-park-solid_right-two.svg" : ""//qrc:/asset/icons/icons-left/icon-park-solid_right-two.svg
            anchors.right: topBar.left
            anchors.rightMargin: 40
            anchors.verticalCenter: topBar.verticalCenter
            SequentialAnimation {
                running: leftIndicator1.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: leftIndicator1.roundIcon ? leftIndicator1.roundIconSource : leftIndicator1.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: leftIndicator1.roundIcon ? leftIndicator1.roundIconSource : leftIndicator1.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:handbreak
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left/mdi_car-handbrake.svg" : ""//qrc:/asset/icons/icons-left/icons8-brake-warning-32.png
            anchors{
                right: leftIndicator.left
                rightMargin: 15
                verticalCenter: leftIndicator.verticalCenter
                verticalCenterOffset: 30
            }
            SequentialAnimation {
                running: handbreak.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: handbreak.roundIcon ? handbreak.roundIconSource : handbreak.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: handbreak.roundIcon ? handbreak.roundIconSource : handbreak.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:battery
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left-checked/mdi_car-battery.svg" : ""//qrc:/asset/icons/icons-left/mdi_car-battery.svg
            anchors{
                right: handbreak.left
                rightMargin: 15
                verticalCenter: handbreak.verticalCenter
                verticalCenterOffset: 30
            }
            SequentialAnimation {
                running: battery.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: battery.roundIcon ? battery.roundIconSource : battery.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: battery.roundIcon ? battery.roundIconSource : battery.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:engineBold
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left-checked/ph_engine-bold.svg" : ""//qrc:/asset/icons/icons-left/ph_engine-bold.svg
            anchors{
                right: battery.left
                rightMargin: 10
                verticalCenter: battery.verticalCenter
                verticalCenterOffset: 35
            }
            SequentialAnimation {
                running: engineBold.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: engineBold.roundIcon ? engineBold.roundIconSource : engineBold.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: engineBold.roundIcon ? engineBold.roundIconSource : engineBold.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:oil
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left-checked/mdi_oil.svg" : ""//qrc:/asset/icons/icons-left/mdi_oil.svg
            anchors{
                right: engineBold.left
                rightMargin: 10
                verticalCenter: engineBold.verticalCenter
                verticalCenterOffset: 40
            }
            SequentialAnimation {
                running: oil.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: oil.roundIcon ? oil.roundIconSource : oil.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: oil.roundIcon ? oil.roundIconSource : oil.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:tireAlert
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-left/mdi_car-tire-alert.svg" : ""//qrc:/asset/icons/icons-left/icons8-tire-pressure-24.png
            anchors{
                right: oil.left
                verticalCenter: oil.verticalCenter
                verticalCenterOffset: 50
            }
            SequentialAnimation {
                running: tireAlert.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: tireAlert.roundIcon ? tireAlert.roundIconSource : tireAlert.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: tireAlert.roundIcon ? tireAlert.roundIconSource : tireAlert.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Image{
            id:topBar
            source: "qrc:/asset/Top Bar.png"
            sourceSize: Qt.size(root.width * 0.6,150)
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter


            RowLayout{
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                spacing: 7
                Image{
                    source: "qrc:/asset/icons/cloud.svg"
                    sourceSize: Qt.size(24,24)
                }
                Label{
                    text: qsTr("25 °C")
                    font.pixelSize: 24
                    font.bold: true
                    font.weight: Font.Normal
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                }
            }

            Label{
                id:timeLabel
                text: new Date().toLocaleTimeString(Qt.locale(), "hh:mm AP")
                anchors.right: parent.right
                anchors.rightMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 24
                font.bold: true
                font.weight: Font.Normal
                font.family: "Eurostile"
                color: "#FFFFFF"
            }
        }

        IconButton{
            id:rightIndicator
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right-checked/icon-park-solid_right-two.svg" : ""//qrc:/asset/icons/icons-right/icon-park-solid_right-two.svg
            anchors.left: topBar.right
            anchors.leftMargin: 40
            anchors.verticalCenter: topBar.verticalCenter
            SequentialAnimation {
                running: rightIndicator.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: rightIndicator.roundIcon ? rightIndicator.roundIconSource : rightIndicator.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: rightIndicator.roundIcon ? rightIndicator.roundIconSource : rightIndicator.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:rightIndicator1
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right-checked/icon-park-solid_right-two.svg" : ""//qrc:/asset/icons/icons-right/icon-park-solid_right-two.svg
            anchors.left: topBar.right
            anchors.leftMargin: 40
            anchors.verticalCenter: topBar.verticalCenter
            visible: false
            SequentialAnimation {
                running: rightIndicator1.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: rightIndicator1.roundIcon ? rightIndicator1.roundIconSource : rightIndicator1.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: rightIndicator1.roundIcon ? rightIndicator1.roundIconSource : rightIndicator1.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:seatBreak
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right/mdi_seatbelt.svg" : ""//qrc:/asset/icons/icons-right/mdi_seatbelt.svg
            anchors{
                left: rightIndicator.right
                leftMargin: 15
                verticalCenter: rightIndicator.verticalCenter
                verticalCenterOffset: 30
            }
            SequentialAnimation {
                running: seatBreak.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: seatBreak.roundIcon ? seatBreak.roundIconSource : seatBreak.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: seatBreak.roundIcon ? seatBreak.roundIconSource : seatBreak.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:breakParking
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right/mdi_car-brake-parking.svg" : ""//qrc:/asset/icons/icons-right/car-brake-parking.svg
            anchors{
                left: seatBreak.right
                leftMargin: 15
                verticalCenter: seatBreak.verticalCenter
                verticalCenterOffset: 30
            }
            SequentialAnimation {
                running: breakParking.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: breakParking.roundIcon ? breakParking.roundIconSource : breakParking.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: breakParking.roundIcon ? breakParking.roundIconSource : breakParking.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }
        IconButton{
            id:lightDimmed
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right/mdi_car-light-dimmed.svg" : ""//qrc:/asset/icons/icons-right/car-light-dimmed.svg
            anchors{
                left: breakParking.right
                leftMargin: 10
                verticalCenter: breakParking.verticalCenter
                verticalCenterOffset: 35
            }
            onCheckedChanged: {
                //Cluster.light_dim = checked
            }
        }
        IconButton{
            id:lightHigh
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right-checked/mdi_car-light-high.svg" : ""//qrc:/asset/icons/icons-right/mdi_car-light-high.svg
            anchors{
                left: lightDimmed.right
                leftMargin: 10
                verticalCenter: lightDimmed.verticalCenter
                verticalCenterOffset: 40
            }
            onCheckedChanged: {
                //Cluster.light_on = checked
            }
        }
        IconButton{
            id:lightFog
            roundIcon: true
            iconWidth: 45
            iconHeight: 45
            checkable: true
            setIcon:checked ? "qrc:/asset/icons/icons-right/mdi_car-light-fog.svg" : ""//qrc:/asset/icons/icons-right/car-light-fog.svg
            anchors{
                left: lightHigh.right
                verticalCenter: lightHigh.verticalCenter
                verticalCenterOffset: 50
            }
            onCheckedChanged: {
                //Cluster.light_fog = checked
            }
        }

        Image{
            id:leftgauge
            sourceSize: Qt.size(root.height /1.4 ,root.height /1.4)
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenterOffset: 50
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/asset/Tacometer.png"
            CircularGaugeMeter {
                id:leftGauge
                property int speed: 0
                property bool accelerating
                anchors.centerIn: parent
                width: parent.width * 0.58
                height: parent.height * 0.58
                value: speed//accelerating ? maximumValue : 0
                shadowVisible: true
                maximumValue: 240
                Component.onCompleted: forceActiveFocus()
                Behavior on value { NumberAnimation { duration: 1000 }}
                Keys.onSpacePressed:{
                    accelerating = true
                    rightGauge.accelerating = true
                }
                Keys.onReleased: {
                    if (event.key === Qt.Key_Space) {
                        accelerating = false;
                        event.accepted = true;
                        rightGauge.accelerating = false
                        event.accepted = true;
                    }
                }
                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -30
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    font.pixelSize: 45
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: Math.floor((leftGauge.speed/30)*10) //Math.floor((leftIndi.value.toFixed(0)/30) *10)
                }

                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 25
                    font.pixelSize: 15
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: "RPM/100"
                }
            }
        }

        RowLayout{
            width: topBar.width * 0.5
            anchors.top: topBar.bottom
            anchors.horizontalCenter: topBar.horizontalCenter
            anchors.horizontalCenterOffset: 70
            Item{
                Layout.fillWidth: true
            }

            Image{
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:/asset/icons/Road/mdi_turn-right-bold.svg"
                sourceSize: Qt.size(85,85)
            }

            ColumnLayout{
                Layout.alignment: Qt.AlignHCenter
                Text{
                    font.pixelSize: 32
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    color: "#FFFFFF"
                    text: qsTr("372 m")
                }
                Text{
                    font.pixelSize: 14
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    color: "#00D1FF"
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    text: qsTr("Enter St. Street and \ntake first right")
                }
                Item{
                    Layout.preferredHeight: 25
                }
            }
            Item{
                Layout.fillWidth: true
            }
        }

        Image{
            source: "qrc:/asset/icons/Road/mingcute_steering-wheel-fill.svg"
            sourceSize: Qt.size(95,95)
            anchors.top: topBar.bottom
            anchors.horizontalCenter: topBar.horizontalCenter
            anchors.horizontalCenterOffset: 230
            anchors.topMargin: 10
        }

        Image {
            id: roadImage
            visible: root.gear_mode === "P" || root.gear_mode === "N" ? false : true
            anchors.centerIn: parent
            source: "qrc:/asset/icons/Road/road2.png"
            anchors.verticalCenterOffset: 40
            sourceSize.height: parent.height * 0.7
            onVisibleChanged:{
                view3dmouse.enabled = visible ? false : true
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////

        Rectangle{
            id: modelCar
            height: parent.height * 0.74
            width: 800
            color:"transparent"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: root.gear_mode === "P" || root.gear_mode === "N" ? -15 : 200
            anchors.horizontalCenterOffset: root.gear_mode === "P" || root.gear_mode === "N" ? -60 : 30
            View3D {
                id: view3d
                anchors.fill: parent
                environment: SceneEnvironment {
                    backgroundMode: SceneEnvironment.Transparent
                    clearColor: "transparent"
                    lightProbe: Texture {
                        source: "EveningSkyHDRI018B_4K-HDR.exr"
                    }
                    antialiasingMode: SceneEnvironment.MSAA
                }

                Scene {
                    id: carModel
                    scale: Qt.vector3d(3, 3, 3)
                }
                MouseArea {
                    id: view3dmouse
                    anchors.fill: parent
                    property real lastX: 0
                    onPressed: {
                        lastX = mouse.x
                        carModel.timelineAnimation.running = false
                    }
                    onReleased:{
                        carModel.timelineAnimation.running = true
                    }

                    onPositionChanged: {
                        let dx = mouse.x - lastX
                        lastX = mouse.x
                        carModel.rootNode.eulerRotation = Qt.vector3d(
                            carModel.rootNode.eulerRotation.x ,
                            carModel.rootNode.eulerRotation.y + dx * 0.5,
                            carModel.rootNode.eulerRotation.z
                        )
                    }
                }
                camera: root.activeCamera
                states: [
                    State {
                        name: "frontView"
                        PropertyChanges {
                            target: root.activeCamera
                            position.x: carModel.activeCamera1.position.x
                            position.y: carModel.activeCamera1.position.y
                            position.z: carModel.activeCamera1.position.z
                            eulerRotation.x: carModel.activeCamera1.eulerRotation.x
                            eulerRotation.y: carModel.activeCamera1.eulerRotation.y
                            eulerRotation.z: carModel.activeCamera1.eulerRotation.z
                        }
                    },
                    State {
                        name: "rearView"
                        PropertyChanges {
                            target: root.activeCamera
                            position.x: carModel.activeCamera2.position.x
                            position.y: carModel.activeCamera2.position.y
                            position.z: carModel.activeCamera2.position.z
                            eulerRotation.x: carModel.activeCamera2.eulerRotation.x
                            eulerRotation.y: carModel.activeCamera2.eulerRotation.y
                            eulerRotation.z: carModel.activeCamera2.eulerRotation.z
                        }
                    }
                ]
                transitions: [
                    Transition {
                        from: "*"
                        to: "*"
                        ParallelAnimation {
                            NumberAnimation { properties: "position.x, position.y, position.z"; duration: 1000; easing.type: Easing.InOutQuad }
                            NumberAnimation { properties: "eulerRotation.x, eulerRotation.y, eulerRotation.z"; duration: 1000; easing.type: Easing.InOutQuad }
                        }
                    }
                ]
            }
        }

        Image{
            source: "qrc:/asset/icons/Road/ss.svg"
            sourceSize: Qt.size(95-20,114-20)
            scale: 0.9
            anchors.top: topBar.bottom
            anchors.horizontalCenter: topBar.horizontalCenter
            anchors.horizontalCenterOffset: -230
            anchors.topMargin: 10

            Text{
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 20
                font.pixelSize: 36
                font.bold: true
                font.weight: Font.Normal
                font.family: "Eurostile"
                color: "#090C14"
                text: qsTr("90")
            }
        }

        RowLayout{
            width: modelCar.width * 0.4
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 220

            Image{
                //Layout.alignment: Qt.AlignLeft
                source: "qrc:/asset/icons/Road/mdi_map-marker-outline.svg"
                sourceSize: Qt.size(28,28)
            }

            Label{
                Layout.alignment: Qt.AlignLeft
                font.pixelSize: 24
                font.bold: true
                font.weight: Font.Normal
                font.family: "Eurostile"
                text: qsTr("26 KM")
                color: "#FFFFFF"
            }

            Item{
                Layout.fillWidth: true
            }

            Image{
                Layout.alignment: Qt.AlignRight
                source: "qrc:/asset/icons/Road/mdi_clock-time-four-outline.svg"
                sourceSize: Qt.size(28,28)
            }

            Label{
                Layout.alignment: Qt.AlignRight
                font.pixelSize: 24
                font.bold: true
                font.weight: Font.Normal
                font.family: "Eurostile"
                text: root.elapsedMinutes + "M"
                color: "#FFFFFF"
            }

        }
        Image{
            id:rightgaugae
            sourceSize: Qt.size(root.height /1.4 ,root.height /1.4)
            anchors.right: parent.right
            anchors.rightMargin: 60
            anchors.verticalCenterOffset: 50
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/asset/Tacometer.png"
            CircularGaugeMeter {
                id:rightGauge
                anchors.centerIn: parent
                property bool accelerating
                property int speed: 0
                width: parent.width * 0.58
                height: parent.height * 0.58
                value: speed//accelerating ? maximumValue : 0
                maximumValue: 240
                shadowVisible: true
                Behavior on value { NumberAnimation { duration: 1000 }}
                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -30
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    font.pixelSize: 45
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: rightGauge.speed//rightGuage.value.toFixed(0)
                }

                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 25
                    font.pixelSize: 15
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: "Km/h"
                }
            }
        }

        Image{
            source: "qrc:/asset/icons/feaul.svg"
            anchors.bottom: left.top
            anchors.left: left.left
            sourceSize: Qt.size(48,48)
            anchors.bottomMargin: 5
        }



        FuelShader{
            id:left
            width: 342
            height: 308
            anchors.left: leftgauge.left
            anchors.bottom: leftgauge.bottom
            anchors.leftMargin: 10
            anchors.bottomMargin: 70
            NumberAnimation on fuelLevel {
                duration: 5000
                from: 100
                to: 0
                easing.type: Easing.InOutQuad
                loops: Animation.Infinite
            }
            // Behavior on fuelLevel {
            //     NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
            // }
        }


        Image{
            source: "qrc:/asset/icons/desal.svg"
            anchors.bottom: right.top
            anchors.right: right.right
            sourceSize: Qt.size(48,48)
            anchors.bottomMargin: 5
        }
        CoolantShader{
            id:right
            width: 342
            height: 308
            anchors.left: rightgaugae.left
            anchors.leftMargin: rightgaugae.width /2
            anchors.bottom: rightgaugae.bottom
            anchors.bottomMargin: 40
            NumberAnimation on fuelLevel {
                duration: 5000
                from: 100
                to: 0
                easing.type: Easing.InOutQuad
                loops: Animation.Infinite
            }
            // Behavior on fuelLevel {
            //     NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
            // }
        }

        Image{
            sourceSize: Qt.size(topBar.width,topBar.height)
            source: "qrc:/asset/icons/bottom.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom

            RowLayout{
                spacing: 100
                anchors.right: middle.left
                anchors.rightMargin: 120
                anchors.verticalCenter: middle.verticalCenter
                IconButton{
                    id: gearP
                    roundIcon: true
                    iconWidth: 55
                    iconHeight: topBar.height
                    font.pixelSize: 30
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    text: "P"
                    checkable: true
                    setIconColor: checked ? "#A1A1A1" : "white"
                    scale: checked ? 1.6:1
                    Behavior on scale{NumberAnimation{duration: 200}}
                    onCheckedChanged:{
                        switch(gear_mode){
                            case "R":
                                gearR.checked = false
                                break
                            case "D":
                                gearD.checked = false
                                break
                            case "N":
                                gearN.checked = false
                                break
                        }
                        carModel.keyFrame.value = 360
                        carModel.timelineAnimation.running = true
                        view3d.state = "frontView"
                        root.gear_mode = "P"
                        line_devide.visible = true
                        line_devide.x = 52
                    }
                }
                IconButton{
                    id: gearN
                    roundIcon: true
                    iconWidth: 55
                    iconHeight: topBar.height
                    font.pixelSize: 30
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    text: "N"
                    setIconColor: checked ? "#A1A1A1" : "white"
                    checkable: true
                    scale: checked ? 1.6:1
                    Behavior on scale{NumberAnimation{duration: 200}}
                    onCheckedChanged:{
                        switch(gear_mode){
                            case "R":
                                gearR.checked = false
                                break
                            case "P":
                                gearP.checked = false
                                break
                            case "D":
                                gearD.checked = false
                                break
                        }
                        carModel.keyFrame.value = 360
                        carModel.timelineAnimation.running = true
                        view3d.state = "frontView"
                        root.gear_mode = "N"
                        line_devide.visible = true
                        line_devide.x = 212
                    }
                }
            }
            Item{
                id: middle
                anchors.centerIn: parent
                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: -20
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    font.pixelSize: 35
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: "ODO"//rightGuage.value.toFixed(0)
                }

                Text{
                    anchors.centerIn: parent
                    anchors.verticalCenterOffset: 20
                    Layout.alignment: Qt.AlignVCenter
                    font.bold: Font.DemiBold
                    font.weight: Font.Normal
                    font.pixelSize: 15
                    color: "#FFFFFF"
                    font.family: "Eurostile"
                    text: "1000 km"
                }
                Image{
                    id: line_devide_odo
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 50
                    width: 150
                    height: 4
                    source: "qrc:/asset/icons/line_devider.png"
                    visible: true
                }
            }

            RowLayout{
                spacing: 100
                anchors.left: middle.right
                anchors.leftMargin: 120
                anchors.verticalCenter: middle.verticalCenter
                IconButton{
                    id: gearD
                    roundIcon: true
                    iconWidth: 55
                    iconHeight: topBar.height
                    font.pixelSize: 30
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    text: "D"
                    setIconColor: checked ? "#A1A1A1" : "white"
                    checkable: true
                    scale: checked ? 1.6:1
                    Behavior on scale{NumberAnimation{duration:200}}
                    onCheckedChanged:{
                        switch(gear_mode){
                            case "R":
                                gearR.checked = false
                                break
                            case "P":
                                gearP.checked = false
                                break
                            case "N":
                                gearN.checked = false
                                break
                        }
                        carModel.timelineAnimation.running = false
                        carModel.keyFrame.value = 0
                        carModel.rootNode.eulerRotation = Qt.vector3d(0, 0, 0)
                        view3d.state = "rearView"
                        root.gear_mode = "D"
                        line_devide.visible = true
                        line_devide.x = 502
                    }
                }
                IconButton{
                    id: gearR
                    roundIcon: true
                    iconWidth: 55
                    iconHeight: topBar.height
                    font.pixelSize: 30
                    font.bold: true
                    font.weight: Font.Normal
                    font.family: "Eurostile"
                    text: "R"
                    setIconColor: checked ? "#A1A1A1" : "white"
                    checkable: true
                    scale: checked ? 1.6:1
                    Behavior on scale{NumberAnimation{duration: 200}}
                    onCheckedChanged:{
                        switch(gear_mode){
                            case "N":
                                gearN.checked = false
                                break
                            case "P":
                                gearP.checked = false
                                break
                            case "D":
                                gearD.checked = false
                                break
                        }
                        carModel.timelineAnimation.running = false
                        carModel.keyFrame.value = 0
                        carModel.rootNode.eulerRotation = Qt.vector3d(0, 0, 0)
                        view3d.state = "rearView"
                        root.gear_mode = "R"
                        line_devide.visible = true
                        line_devide.x = 662
                    }
                }
            }

            Image{
                id: line_devide
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 20
                x: 52
                width: 100
                height: 4
                source: "qrc:/asset/icons/line_devider.png"
                visible: false
                Behavior on x {NumberAnimation{duration: 200}}
            }

            Connections{
                target: Cluster
                function onSignal_light_high(mode){
                    lightHigh.checked = mode
                }
                function onSignal_light_dim(mode){
                    lightDimmed.checked = mode
                }

                function onSignal_fog(mode){
                    lightFog.checked = mode
                }

                function onSignal_light_right(mode){
                    rightIndicator.checked = mode
                }

                function onSignal_light_left(mode){
                    leftIndicator.checked = mode
                }

                function onSignal_hazard(mode){
                    rightIndicator1.checked = mode
                    rightIndicator1.visible = mode
                    leftIndicator1.checked = mode
                    leftIndicator1.visible = mode
                    rightIndicator.visible = !mode
                    leftIndicator.visible = !mode
                }

                function onSpeed(value){
                    rightGauge.speed = value
                    leftGauge.speed = value
                }
                function onCoolant(value){
                    right.fuelLevel = value
                }
                function onFuel(value){
                    left.fuelLevel = value
                }

                function onGear(gear){
                    switch(gear){
                        case "P":
                            gearP.checked = true
                            break
                        case "N":
                            gearN.checked = true
                            break
                        case "D":
                            gearD.checked = true
                            break
                        case "R":
                            gearR.checked = true
                            break
                    }
                }
            }
        }
    }
}
