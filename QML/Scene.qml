import QtQuick
import QtQuick3D
import QtQuick.Timeline 1.0

Node {
    id: node
    property alias rootNode: rootNode
    property alias activeCamera1: perspectiveCamera
    property alias activeCamera2: perspectiveCamera1
    property alias timelineAnimation: timelineAnimation
    property alias keyFrame: keyFrame
    property bool checkl: false
    property bool checkd: false
    property bool check: false
    property bool hazard: false
    property bool fog: false
    // Resources
    Texture {
        id: textures_00_chrome_normal_png_texture
        objectName: "textures/00_chrome_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_chrome_normal.png"
    }
    Texture {
        id: textures_00_exter_baseColor_jpeg_texture
        objectName: "textures/00_exter_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_exter_baseColor.jpeg"
    }
    Texture {
        id: textures_00_feux_int_baseColor_jpeg_texture
        objectName: "textures/00_feux_int_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_feux_int_baseColor.jpeg"
    }
    Texture {
        id: textures_00_feux_int_metallicRoughness_png_texture
        objectName: "textures/00_feux_int_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_feux_int_metallicRoughness.png"
    }
    Texture {
        id: textures_00_feux_int_normal_png_texture
        objectName: "textures/00_feux_int_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_feux_int_normal.png"
    }
    Texture {
        id: textures_00_exter_metallicRoughness_png_texture
        objectName: "textures/00_exter_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_exter_metallicRoughness.png"
    }
    Texture {
        id: textures_00_chrome_baseColor_jpeg_texture
        objectName: "textures/00_chrome_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_chrome_baseColor.jpeg"
    }
    Texture {
        id: textures_00_chrome_metallicRoughness_png_texture
        objectName: "textures/00_chrome_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_chrome_metallicRoughness.png"
    }
    Texture {
        id: textures_logo_lancia_baseColor_png_texture
        objectName: "textures/logo_lancia_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/logo_lancia_baseColor.png"
    }
    Texture {
        id: textures_00_tech_baseColor_jpeg_texture
        objectName: "textures/00_tech_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_tech_baseColor.jpeg"
    }
    Texture {
        id: textures_00_vitres_baseColor_png_texture
        objectName: "textures/00_vitres_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_vitres_baseColor.png"
    }
    Texture {
        id: textures_00_feux_ext_baseColor_png_texture
        objectName: "textures/00_feux_ext_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_feux_ext_baseColor.png"
    }
    Texture {
        id: textures_00_feux_ext_metallicRoughness_png_texture
        objectName: "textures/00_feux_ext_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_feux_ext_metallicRoughness.png"
    }
    Texture {
        id: textures_00_vitres_metallicRoughness_png_texture
        objectName: "textures/00_vitres_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_vitres_metallicRoughness.png"
    }
    Texture {
        id: textures_00_tech_metallicRoughness_png_texture
        objectName: "textures/00_tech_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_tech_metallicRoughness.png"
    }
    Texture {
        id: textures_00_tech_normal_jpeg_texture
        objectName: "textures/00_tech_normal.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_tech_normal.jpeg"
    }
    Texture {
        id: textures_00_roues_baseColor_jpeg_texture
        objectName: "textures/00_roues_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_roues_baseColor.jpeg"
    }
    Texture {
        id: textures_00_roues_metallicRoughness_png_texture
        objectName: "textures/00_roues_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_roues_metallicRoughness.png"
    }
    Texture {
        id: textures_00_roues_normal_png_texture
        objectName: "textures/00_roues_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_roues_normal.png"
    }
    Texture {
        id: textures_00_decals_baseColor_png_texture
        objectName: "textures/00_decals_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_decals_baseColor.png"
    }
    Texture {
        id: textures_00_autres_baseColor_jpeg_texture
        objectName: "textures/00_autres_baseColor.jpeg"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_autres_baseColor.jpeg"
    }
    Texture {
        id: textures_00_autres_metallicRoughness_png_texture
        objectName: "textures/00_autres_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_autres_metallicRoughness.png"
    }
    Texture {
        id: textures_00_autres_normal_png_texture
        objectName: "textures/00_autres_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/00_autres_normal.png"
    }
    Texture {
        id: textures_material_baseColor_png_texture
        objectName: "textures/material_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/material_baseColor.png"
    }
    Texture {
        id: textures_material_metallicRoughness_png_texture
        objectName: "textures/material_metallicRoughness.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/material_metallicRoughness.png"
    }
    Texture {
        id: textures_material_normal_png_texture
        objectName: "textures/material_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/material_normal.png"
    }
    Texture {
        id: textures_SOL__shadow_baseColor_png_texture
        objectName: "textures/SOL._shadow_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/SOL._shadow_baseColor.png"
    }
    Texture {
        id: textures_SOL__shadow_normal_png_texture
        objectName: "textures/SOL._shadow_normal.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/SOL._shadow_normal.png"
    }
    Texture {
        id: textures_logo_FB_baseColor_png_texture
        objectName: "textures/logo_FB_baseColor.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "qrc:/asset/maps/logo_FB_baseColor.png"
    }

    // Nodes:
    Node {
        id: sketchfab_model
        x: 3.805
        y: -61.438
        z: 48.05013
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        objectName: "Sketchfab_model"
        scale.x: 3.03321
        scale.y: 3.03321
        scale.z: 3.03321
        Node {
            id: fulvia_02_RENDER_SKETCHFAB_fbx
            objectName: "Fulvia_02_RENDER_SKETCHFAB.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: lights_INT_004
                    objectName: "lights_INT.004"
                    x: 193.71063232421875
                    y: 68.67649841308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_INT_004_00_feux_int_0
                        objectName: "lights_INT.004_00_feux_int_0"
                        source: "qrc:/asset/meshes/lights_INT_004_00_feux_int_0_mesh.mesh"
                        materials: [
                            node00_feux_int_material
                        ]
                    }
                }
                Node {
                    id: lights_INT_001
                    objectName: "lights_INT.001"
                    x: -143.89369201660156
                    y: -1.677808403968811
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_INT_001_00_feux_int_0
                        objectName: "lights_INT.001_00_feux_int_0"
                        source: "qrc:/asset/meshes/lights_INT_001_00_feux_int_0_mesh.mesh"
                        materials: [
                            node00_feux_int_material
                        ]
                    }
                }
                Node {
                    id: lights_INT_002
                    objectName: "lights_INT.002"
                    x: -124.27459716796875
                    y: -0.8668275475502014
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_INT_002_00_feux_int_0
                        objectName: "lights_INT.002_00_feux_int_0"
                        source: "qrc:/asset/meshes/lights_INT_002_00_feux_int_0_mesh.mesh"
                        materials: [
                            node00_feux_int_material
                        ]
                    }
                }
                Node {
                    id: lights_INT_003
                    objectName: "lights_INT.003"
                    rotation: Qt.quaternion(0.707107, 5.76012e-08, 0.707107, -5.76012e-08)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_INT_003_00_feux_int_0
                        objectName: "lights_INT.003_00_feux_int_0"
                        source: "qrc:/asset/meshes/lights_INT_003_00_feux_int_0_mesh.mesh"
                        materials: [
                            node00_feux_int_material
                        ]
                    }
                }
                Node {
                    id: lights_INT
                    objectName: "lights_INT"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_INT_00_feux_int_0
                        objectName: "lights_INT_00_feux_int_0"
                        source: "qrc:/asset/meshes/lights_INT_00_feux_int_0_mesh.mesh"
                        materials: [
                            node00_feux_int_material
                        ]
                    }
                }
                Node {
                    id: lights_EXT_003
                    objectName: "lights_EXT.003"
                    rotation: Qt.quaternion(0.707107, 5.76012e-08, 0.707107, -5.76012e-08)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_EXT_003_00_feux_ext_0
                        objectName: "lights_EXT.003_00_feux_ext_0"
                        source: "qrc:/asset/meshes/lights_EXT_003_00_feux_ext_0_mesh.mesh"
                        materials: [
                            hazard ? newMaterial3 : node00_feux_ext_material
                        ]
                        NumberAnimation on opacity{
                            from: 1.0
                            to: 0.0
                            duration: 500
                            loops: Animation.Infinite
                            easing.type: Easing.InOutQuad
                            running: hazard ? true:false
                        }
                    }
                }
                Node {
                    id: lights_EXT_001
                    objectName: "lights_EXT.001"
                    x: -124.27459716796875
                    y: -0.8668275475502014
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_EXT_001_00_feux_ext_0
                        objectName: "lights_EXT.001_00_feux_ext_0"
                        source: "qrc:/asset/meshes/lights_EXT_001_00_feux_ext_0_mesh.mesh"
                        materials: [
                            check ? newMaterial1 : node00_feux_ext_material
                        ]
                    }

                    PointLight {
                        id: pointLight
                        x: -0.628
                        y: 0.589
                        z: 0.5
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkl ? 100000 : 0
                    }

                    PointLight {
                        id: pointLight1
                        x: -0.687
                        y: 0.376
                        z: 0.5
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkl ? 100000 : 0
                    }

                    PointLight {
                        id: pointLight2
                        x: -0.671
                        y: -0.379
                        z: 0.5
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkl ? 100000 : 0
                    }

                    PointLight {
                        id: pointLight3
                        x: -0.687
                        y: -0.57
                        z: 0.5
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkl ? 100000 : 0
                    }

                    PointLight {
                        id: pointLight4
                        x: -0.65
                        y: 0.315
                        z: 0.31619
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: fog ? 50000 : 0
                        color: "#DBA710"
                    }

                    PointLight {
                        id: pointLight5
                        x: -0.65
                        y: -0.307
                        z: 0.31619
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: fog ? 50000 : 0
                        color: "#DBA710"
                    }

                    PointLight {
                        id: pointLight6
                        x: -0.628
                        y: 0.589
                        z: 0.4
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkd ? 70000 : 0
                    }

                    PointLight {
                        id: pointLight7
                        x: -0.687
                        y: 0.376
                        z: 0.4
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkd ? 70000 : 0
                    }

                    PointLight {
                        id: pointLight8
                        x: -0.671
                        y: -0.379
                        z: 0.4
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkd ? 70000 : 0
                    }

                    PointLight {
                        id: pointLight9
                        x: -0.687
                        y: -0.57
                        z: 0.4
                        eulerRotation.z: 0
                        eulerRotation.y: 0
                        eulerRotation.x: 0
                        quadraticFade: 100
                        brightness: checkd ? 70000 : 0
                    }
                }
                Node {
                    id: lights_EXT_002
                    objectName: "lights_EXT.002"
                    x: -143.89369201660156
                    y: -1.677808403968811
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_EXT_002_00_feux_ext_0
                        objectName: "lights_EXT.002_00_feux_ext_0"
                        source: "qrc:/asset/meshes/lights_EXT_002_00_feux_ext_0_mesh.mesh"
                        materials: [
                            fog ? newMaterial2 : node00_feux_ext_material
                        ]
                    }
                }
                Node {
                    id: lights_EXT
                    objectName: "lights_EXT"
                    x: 193.71063232421875
                    y: 68.67649841308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_EXT_00_feux_ext_0
                        objectName: "lights_EXT_00_feux_ext_0"
                        source: "qrc:/asset/meshes/lights_EXT_00_feux_ext_0_mesh.mesh"
                        materials: [
                            hazard ? newMaterial3:node00_feux_ext_material
                        ]
                        NumberAnimation on opacity{
                            from: 1.0
                            to: 0.0
                            duration: 500
                            loops: Animation.Infinite
                            easing.type: Easing.InOutQuad
                            running: hazard ? true:false
                        }
                    }
                }
                Node {
                    id: chrome_001
                    objectName: "chrome.001"
                    x: -127.1640625
                    y: -0.9862663149833679
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_001_00_chrome_0
                        objectName: "chrome.001_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_001_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_002
                    objectName: "chrome.002"
                    x: -101.48667907714844
                    y: 83.21463775634766
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_002_00_chrome_0
                        objectName: "chrome.002_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_002_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_003
                    objectName: "chrome.003"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_003_00_chrome_0
                        objectName: "chrome.003_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_003_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_008
                    objectName: "chrome.008"
                    x: -145.4240264892578
                    y: -1.7410697937011719
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_008_00_chrome_0
                        objectName: "chrome.008_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_008_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_004
                    objectName: "chrome.004"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_004_00_chrome_0
                        objectName: "chrome.004_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_004_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_005
                    objectName: "chrome.005"
                    x: 1.0567545890808105
                    y: 4.3139190673828125
                    z: 1.1920928955078125e-05
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_005_00_chrome_0
                        objectName: "chrome.005_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_005_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_006
                    objectName: "chrome.006"
                    x: 193.71063232421875
                    y: 68.67649841308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_006_00_chrome_0
                        objectName: "chrome.006_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_006_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_007
                    objectName: "chrome.007"
                    x: 192.76153564453125
                    y: 75.82281494140625
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_007_00_chrome_0
                        objectName: "chrome.007_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_007_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_024
                    objectName: "chrome.024"
                    x: -145.4240264892578
                    y: -1.7410697937011719
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_024_00_chrome_0
                        objectName: "chrome.024_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_024_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_009
                    objectName: "chrome.009"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_009_00_chrome_0
                        objectName: "chrome.009_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_009_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_010
                    objectName: "chrome.010"
                    x: 4.7078728675842285
                    y: 4.46483039855957
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_010_00_chrome_0
                        objectName: "chrome.010_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_010_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_011
                    objectName: "chrome.011"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_011_00_chrome_0
                        objectName: "chrome.011_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_011_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_012
                    objectName: "chrome.012"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_012_00_chrome_0
                        objectName: "chrome.012_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_012_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_013
                    objectName: "chrome.013"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_013_00_chrome_0
                        objectName: "chrome.013_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_013_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_014
                    objectName: "chrome.014"
                    x: 93.08617401123047
                    y: 105.16481018066406
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_014_00_chrome_0
                        objectName: "chrome.014_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_014_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_015
                    objectName: "chrome.015"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_015_00_chrome_0
                        objectName: "chrome.015_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_015_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_016
                    objectName: "chrome.016"
                    x: 1.0645747184753418
                    y: 3.6569952964782715
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_016_00_chrome_0
                        objectName: "chrome.016_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_016_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_017
                    objectName: "chrome.017"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_017_00_chrome_0
                        objectName: "chrome.017_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_017_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_018
                    objectName: "chrome.018"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_018_00_chrome_0
                        objectName: "chrome.018_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_018_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_019
                    objectName: "chrome.019"
                    x: 1.0635137557983398
                    y: 4.150284767150879
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_019_00_chrome_0
                        objectName: "chrome.019_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_019_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_020
                    objectName: "chrome.020"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_020_00_chrome_0
                        objectName: "chrome.020_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_020_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_021
                    objectName: "chrome.021"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_021_00_chrome_0
                        objectName: "chrome.021_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_021_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_022
                    objectName: "chrome.022"
                    x: 0.7377028465270996
                    y: 4.310110092163086
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_022_00_chrome_0
                        objectName: "chrome.022_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_022_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_023
                    objectName: "chrome.023"
                    x: 34.15485382080078
                    y: 63.79255676269531
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_023_00_chrome_0
                        objectName: "chrome.023_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_023_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_030
                    objectName: "chrome.030"
                    x: 168.4751434326172
                    y: 11.095466613769531
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_030_00_chrome_0
                        objectName: "chrome.030_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_030_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_025
                    objectName: "chrome.025"
                    x: 175.42613220214844
                    y: 61.636932373046875
                    z: -71.35404968261719
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_025_00_chrome_0
                        objectName: "chrome.025_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_025_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_026
                    objectName: "chrome.026"
                    x: -145.4240264892578
                    y: -1.7410697937011719
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_026_00_chrome_0
                        objectName: "chrome.026_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_026_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_027
                    objectName: "chrome.027"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_027_00_chrome_0
                        objectName: "chrome.027_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_027_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_028
                    objectName: "chrome.028"
                    x: 191.96524047851562
                    y: 56.20266342163086
                    z: -18.788015365600586
                    rotation: Qt.quaternion(0.719118, 0.0216304, 0.694127, -0.0242702)
                    scale.x: 282.035
                    scale.y: 282.035
                    scale.z: 282.035
                    Model {
                        id: chrome_028_00_chrome_0
                        objectName: "chrome.028_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_028_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_029
                    objectName: "chrome.029"
                    x: 191.96524047851562
                    y: 56.20266342163086
                    z: -18.788015365600586
                    rotation: Qt.quaternion(0.719118, 0.0216304, 0.694127, -0.0242702)
                    scale.x: 282.035
                    scale.y: 282.035
                    scale.z: 282.035
                    Model {
                        id: chrome_029_00_chrome_0
                        objectName: "chrome.029_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_029_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome
                    objectName: "chrome"
                    x: 193.7828369140625
                    y: 68.67649841308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_00_chrome_0
                        objectName: "chrome_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: chrome_031
                    objectName: "chrome.031"
                    rotation: Qt.quaternion(0.707107, 5.76012e-08, 0.707107, -5.76012e-08)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: chrome_031_00_chrome_0
                        objectName: "chrome.031_00_chrome_0"
                        source: "qrc:/asset/meshes/chrome_031_00_chrome_0_mesh.mesh"
                        materials: [
                            node00_chrome_material
                        ]
                    }
                }
                Node {
                    id: exter
                    objectName: "EXTER"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: exter_00_exter_0
                        objectName: "EXTER_00_exter_0"
                        source: "qrc:/asset/meshes/exter_00_exter_0_mesh.mesh"
                        materials: newMaterial
                    }
                    Model {
                        id: exter_00_exter_0144
                        objectName: "EXTER_00_exter_0"
                        source: "qrc:/asset/meshes/exter_00_exter_0_mesh145.mesh"
                        materials: newMaterial
                    }
                }
                Node {
                    id: exter_001
                    objectName: "EXTER.001"
                    x: 4.7078728675842285
                    y: 4.46483039855957
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: exter_001_00_exter_0
                        objectName: "EXTER.001_00_exter_0"
                        source: "qrc:/asset/meshes/exter_001_00_exter_0_mesh.mesh"
                        materials: [
                            node00_exter_material
                        ]
                    }
                }
                Node {
                    id: exter_002
                    objectName: "EXTER.002"
                    x: -0.6297761797904968
                    y: 4.313907146453857
                    z: -0.023942777886986732
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: exter_002_00_exter_0
                        objectName: "EXTER.002_00_exter_0"
                        source: "qrc:/asset/meshes/exter_002_00_exter_0_mesh.mesh"
                        materials: [
                            node00_exter_material
                        ]
                    }
                }
                Node {
                    id: exter_003
                    objectName: "EXTER.003"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: exter_003_00_exter_0
                        objectName: "EXTER.003_00_exter_0"
                        source: "qrc:/asset/meshes/exter_003_00_exter_0_mesh.mesh"
                        materials: [
                            node00_exter_material
                        ]
                    }
                }
                Node {
                    id: glass
                    objectName: "glass"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: glass_00_vitres_0
                        objectName: "glass_00_vitres_0"
                        source: "qrc:/asset/meshes/glass_00_vitres_0_mesh.mesh"
                        materials: [
                            node00_vitres_material
                        ]
                    }
                }
                Node {
                    id: glass_001
                    objectName: "glass.001"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: glass_001_00_vitres_0
                        objectName: "glass.001_00_vitres_0"
                        source: "qrc:/asset/meshes/glass_001_00_vitres_0_mesh.mesh"
                        materials: sol__shadow_material
                    }
                }
                Node {
                    id: glass_002
                    objectName: "glass.002"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: glass_002_00_vitres_0
                        objectName: "glass.002_00_vitres_0"
                        source: "qrc:/asset/meshes/glass_002_00_vitres_0_mesh.mesh"
                        materials: [
                            node00_vitres_material
                        ]
                    }
                }
                Node {
                    id: glass_003
                    objectName: "glass.003"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: glass_003_00_vitres_0
                        objectName: "glass.003_00_vitres_0"
                        source: "qrc:/asset/meshes/glass_003_00_vitres_0_mesh.mesh"
                        materials: [
                            node00_vitres_material
                        ]
                    }
                }
                Node {
                    id: technic
                    objectName: "technic"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_00_tech_0
                        objectName: "technic_00_tech_0"
                        source: "qrc:/asset/meshes/technic_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_001
                    objectName: "technic.001"
                    x: -105.50524139404297
                    y: 19.165760040283203
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_001_00_tech_0
                        objectName: "technic.001_00_tech_0"
                        source: "qrc:/asset/meshes/technic_001_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_002
                    objectName: "technic.002"
                    x: 158.6302947998047
                    y: 26.79949188232422
                    z: 38.3698616027832
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_002_00_tech_0
                        objectName: "technic.002_00_tech_0"
                        source: "qrc:/asset/meshes/technic_002_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_003
                    objectName: "technic.003"
                    x: 112.23697662353516
                    y: 36.840145111083984
                    z: -1.6342699527740479
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_003_00_tech_0
                        objectName: "technic.003_00_tech_0"
                        source: "qrc:/asset/meshes/technic_003_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_004
                    objectName: "technic.004"
                    x: 6.360964298248291
                    y: 2.9741580486297607
                    z: 2.3574212804078343e-08
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_004_00_tech_0
                        objectName: "technic.004_00_tech_0"
                        source: "qrc:/asset/meshes/technic_004_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_005
                    objectName: "technic.005"
                    x: 2.384185791015625e-05
                    z: -3.725290298461914e-07
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_005_00_tech_0
                        objectName: "technic.005_00_tech_0"
                        source: "qrc:/asset/meshes/technic_005_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_006
                    objectName: "technic.006"
                    z: -3.725290298461914e-07
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_006_00_tech_0
                        objectName: "technic.006_00_tech_0"
                        source: "qrc:/asset/meshes/technic_006_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_007
                    objectName: "technic.007"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_007_00_tech_0
                        objectName: "technic.007_00_tech_0"
                        source: "qrc:/asset/meshes/technic_007_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_008
                    objectName: "technic.008"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_008_00_tech_0
                        objectName: "technic.008_00_tech_0"
                        source: "qrc:/asset/meshes/technic_008_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_009
                    objectName: "technic.009"
                    x: 1.2563824653625488
                    y: 4.027745246887207
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_009_00_tech_0
                        objectName: "technic.009_00_tech_0"
                        source: "qrc:/asset/meshes/technic_009_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_010
                    objectName: "technic.010"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_010_00_tech_0
                        objectName: "technic.010_00_tech_0"
                        source: "qrc:/asset/meshes/technic_010_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_011
                    objectName: "technic.011"
                    x: 0.7377028465270996
                    y: 4.310110092163086
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_011_00_tech_0
                        objectName: "technic.011_00_tech_0"
                        source: "qrc:/asset/meshes/technic_011_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_012
                    objectName: "technic.012"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_012_00_tech_0
                        objectName: "technic.012_00_tech_0"
                        source: "qrc:/asset/meshes/technic_012_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_013
                    objectName: "technic.013"
                    x: 193.71063232421875
                    y: 68.67649841308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_013_00_tech_0
                        objectName: "technic.013_00_tech_0"
                        source: "qrc:/asset/meshes/technic_013_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_014
                    objectName: "technic.014"
                    x: 131.4469757080078
                    y: 9.703758239746094
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_014_00_tech_0
                        objectName: "technic.014_00_tech_0"
                        source: "qrc:/asset/meshes/technic_014_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_015
                    objectName: "technic.015"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_015_00_tech_0
                        objectName: "technic.015_00_tech_0"
                        source: "qrc:/asset/meshes/technic_015_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_016
                    objectName: "technic.016"
                    x: -145.4240264892578
                    y: -1.7410697937011719
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_016_00_tech_0
                        objectName: "technic.016_00_tech_0"
                        source: "qrc:/asset/meshes/technic_016_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_017
                    objectName: "technic.017"
                    x: -274.8466491699219
                    y: -7.090917110443115
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_017_00_tech_0
                        objectName: "technic.017_00_tech_0"
                        source: "qrc:/asset/meshes/technic_017_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_018
                    objectName: "technic.018"
                    x: -274.8466491699219
                    y: -7.090917110443115
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_018_00_tech_0
                        objectName: "technic.018_00_tech_0"
                        source: "qrc:/asset/meshes/technic_018_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_019
                    objectName: "technic.019"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_019_00_tech_0
                        objectName: "technic.019_00_tech_0"
                        source: "qrc:/asset/meshes/technic_019_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_020
                    objectName: "technic.020"
                    x: 4.7078728675842285
                    y: 4.46483039855957
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_020_00_tech_0
                        objectName: "technic.020_00_tech_0"
                        source: "qrc:/asset/meshes/technic_020_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_021
                    objectName: "technic.021"
                    x: -178.55267333984375
                    y: 57.68183898925781
                    z: -0.1283407211303711
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_021_00_tech_0
                        objectName: "technic.021_00_tech_0"
                        source: "qrc:/asset/meshes/technic_021_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_022
                    objectName: "technic.022"
                    x: -173.04368591308594
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_022_00_tech_0
                        objectName: "technic.022_00_tech_0"
                        source: "qrc:/asset/meshes/technic_022_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_023
                    objectName: "technic.023"
                    x: -74.80392456054688
                    y: 86.60089111328125
                    z: 37.79546356201172
                    rotation: Qt.quaternion(0.715707, -0.698345, -0.00528765, -0.00704924)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_023_00_tech_0
                        objectName: "technic.023_00_tech_0"
                        source: "qrc:/asset/meshes/technic_023_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_024
                    objectName: "technic.024"
                    x: -79.49699401855469
                    y: 85.28620910644531
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_024_00_tech_0
                        objectName: "technic.024_00_tech_0"
                        source: "qrc:/asset/meshes/technic_024_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_025
                    objectName: "technic.025"
                    z: -3.725290298461914e-07
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_025_00_tech_0
                        objectName: "technic.025_00_tech_0"
                        source: "qrc:/asset/meshes/technic_025_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_026
                    objectName: "technic.026"
                    x: -79.44346618652344
                    y: 88.15827178955078
                    z: -6.83971643447876
                    rotation: Qt.quaternion(0.679525, -0.717514, -0.106616, -0.109786)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_026_00_tech_0
                        objectName: "technic.026_00_tech_0"
                        source: "qrc:/asset/meshes/technic_026_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_027
                    objectName: "technic.027"
                    x: 16.261459350585938
                    z: 44.12144470214844
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_027_00_tech_0
                        objectName: "technic.027_00_tech_0"
                        source: "qrc:/asset/meshes/technic_027_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: technic_028
                    objectName: "technic.028"
                    x: -29.824113845825195
                    z: 35.9837532043457
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: technic_028_00_tech_0
                        objectName: "technic.028_00_tech_0"
                        source: "qrc:/asset/meshes/technic_028_00_tech_0_mesh.mesh"
                        materials: [
                            node00_tech_material
                        ]
                    }
                }
                Node {
                    id: inter_001
                    objectName: "INTER.001"
                    x: -75.14076232910156
                    y: 87.76089477539062
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_001_00_inter_0
                        objectName: "INTER.001_00_inter_0"
                        source: "qrc:/asset/meshes/inter_001_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_002
                    objectName: "INTER.002"
                    x: 10.856199264526367
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_002_00_inter_0
                        objectName: "INTER.002_00_inter_0"
                        source: "qrc:/asset/meshes/inter_002_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_006
                    objectName: "INTER.006"
                    x: 66.12203979492188
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 94.403
                    scale.z: 100
                    Model {
                        id: inter_006_00_inter_0
                        objectName: "INTER.006_00_inter_0"
                        source: "qrc:/asset/meshes/inter_006_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_003
                    objectName: "INTER.003"
                    x: -26.63492202758789
                    y: 80.53704833984375
                    z: 34.29844665527344
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 104.288
                    scale.y: 104.288
                    scale.z: 104.288
                    Model {
                        id: inter_003_00_inter_0
                        objectName: "INTER.003_00_inter_0"
                        source: "qrc:/asset/meshes/inter_003_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_004
                    objectName: "INTER.004"
                    x: -8.600509643554688
                    y: 30.049678802490234
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_004_00_inter_0
                        objectName: "INTER.004_00_inter_0"
                        source: "qrc:/asset/meshes/inter_004_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_005
                    objectName: "INTER.005"
                    x: -34.27585220336914
                    y: 77.9871826171875
                    z: 34.03258514404297
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_005_00_inter_0
                        objectName: "INTER.005_00_inter_0"
                        source: "qrc:/asset/meshes/inter_005_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_007
                    objectName: "INTER.007"
                    x: 3.7400245666503906
                    y: 87.50933074951172
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_007_00_inter_0
                        objectName: "INTER.007_00_inter_0"
                        source: "qrc:/asset/meshes/inter_007_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter
                    objectName: "INTER"
                    x: 0.1485731303691864
                    y: 20.30524444580078
                    z: 0.07226923108100891
                    rotation: Qt.quaternion(0.707107, 5.76012e-08, 0.707107, -5.76012e-08)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_00_inter_0
                        objectName: "INTER_00_inter_0"
                        source: "qrc:/asset/meshes/inter_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_008
                    objectName: "INTER.008"
                    x: 16.208744049072266
                    y: 122.63587951660156
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_008_00_inter_0
                        objectName: "INTER.008_00_inter_0"
                        source: "qrc:/asset/meshes/inter_008_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_009
                    objectName: "INTER.009"
                    x: 104.80448913574219
                    y: 87.76728057861328
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 9.81274
                    scale.y: 57.5286
                    scale.z: 42.4744
                    Model {
                        id: inter_009_00_inter_0
                        objectName: "INTER.009_00_inter_0"
                        source: "qrc:/asset/meshes/inter_009_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_010
                    objectName: "INTER.010"
                    x: -18.915252685546875
                    y: 115.63906860351562
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 51.416
                    scale.y: 51.416
                    scale.z: 20.7581
                    Model {
                        id: inter_010_00_inter_0
                        objectName: "INTER.010_00_inter_0"
                        source: "qrc:/asset/meshes/inter_010_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_011
                    objectName: "INTER.011"
                    x: 3.7400245666503906
                    y: 87.4856185913086
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_011_00_inter_0
                        objectName: "INTER.011_00_inter_0"
                        source: "qrc:/asset/meshes/inter_011_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_012
                    objectName: "INTER.012"
                    x: 41.062164306640625
                    y: 93.73129272460938
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_012_00_inter_0
                        objectName: "INTER.012_00_inter_0"
                        source: "qrc:/asset/meshes/inter_012_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: inter_013
                    objectName: "INTER.013"
                    x: 3.7400245666503906
                    y: 82.53633880615234
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: inter_013_00_inter_0
                        objectName: "INTER.013_00_inter_0"
                        source: "qrc:/asset/meshes/inter_013_00_inter_0_mesh.mesh"
                        materials: [
                            node00_inter_material
                        ]
                    }
                }
                Node {
                    id: wheels
                    objectName: "wheels"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_00_roues_0
                        objectName: "wheels_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                    Model {
                        id: wheels_00_roues_0311
                        objectName: "wheels_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_00_roues_0_mesh312.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                    Model {
                        id: wheels_00_roues_0313
                        objectName: "wheels_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_00_roues_0_mesh314.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: wheels_001
                    objectName: "wheels.001"
                    x: 16.26143455505371
                    z: 44.121437072753906
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_001_00_roues_0
                        objectName: "wheels.001_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_001_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                    Model {
                        id: wheels_001_00_roues_0318
                        objectName: "wheels.001_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_001_00_roues_0_mesh319.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: wheels_002
                    objectName: "wheels.002"
                    x: -29.824138641357422
                    z: 35.9837532043457
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_002_00_roues_0
                        objectName: "wheels.002_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_002_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                    Model {
                        id: wheels_002_00_roues_0323
                        objectName: "wheels.002_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_002_00_roues_0_mesh324.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: wheels_003
                    objectName: "wheels.003"
                    x: 16.26143455505371
                    z: 44.121437072753906
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_003_00_roues_0
                        objectName: "wheels.003_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_003_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: wheels_004
                    objectName: "wheels.004"
                    x: -29.824138641357422
                    z: 35.9837532043457
                    rotation: Qt.quaternion(0.696364, -0.696364, -0.122788, -0.122788)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_004_00_roues_0
                        objectName: "wheels.004_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_004_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: wheels_005
                    objectName: "wheels.005"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: wheels_005_00_roues_0
                        objectName: "wheels.005_00_roues_0"
                        source: "qrc:/asset/meshes/wheels_005_00_roues_0_mesh.mesh"
                        materials: [
                            node00_roues_material
                        ]
                    }
                }
                Node {
                    id: other_001
                    objectName: "other.001"
                    x: -187.61436462402344
                    y: 47.199581146240234
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_001_00_autres_0
                        objectName: "other.001_00_autres_0"
                        source: "qrc:/asset/meshes/other_001_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_002
                    objectName: "other.002"
                    x: -187.0978546142578
                    y: 47.27528381347656
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_002_00_autres_0
                        objectName: "other.002_00_autres_0"
                        source: "qrc:/asset/meshes/other_002_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_004
                    objectName: "other.004"
                    x: 192.09629821777344
                    y: 55.53809356689453
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_004_00_autres_0
                        objectName: "other.004_00_autres_0"
                        source: "qrc:/asset/meshes/other_004_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_003
                    objectName: "other.003"
                    x: -188.2938690185547
                    y: 46.492645263671875
                    z: -2.380417585372925
                    rotation: Qt.quaternion(0.705209, 0.051771, -0.705209, 0.051771)
                    scale.x: 9.15372
                    scale.y: 7.7117
                    scale.z: 7.7117
                    Model {
                        id: other_003_00_autres_0
                        objectName: "other.003_00_autres_0"
                        source: "qrc:/asset/meshes/other_003_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_005
                    objectName: "other.005"
                    x: -3.4680135250091553
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_005_00_autres_0
                        objectName: "other.005_00_autres_0"
                        source: "qrc:/asset/meshes/other_005_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other
                    objectName: "other"
                    x: -1.1920928955078125e-05
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_00_autres_0
                        objectName: "other_00_autres_0"
                        source: "qrc:/asset/meshes/other_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_006
                    objectName: "other.006"
                    x: 187.6886444091797
                    y: 57.014400482177734
                    z: 2.643093965915e-09
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_006_00_autres_0
                        objectName: "other.006_00_autres_0"
                        source: "qrc:/asset/meshes/other_006_00_autres_0_mesh.mesh"
                        materials: [
                            node00_autres_material
                        ]
                    }
                }
                Node {
                    id: other_007
                    objectName: "other.007"
                    x: 187.6886444091797
                    y: 57.014400482177734
                    z: 2.643093965915e-09
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: other_007_00_autres_0
                        objectName: "other.007_00_autres_0"
                        source: "qrc:/asset/meshes/other_007_00_autres_0_mesh.mesh"
                        materials: [
                            hazard ? newMaterial3 : node00_autres_material
                        ]
                        NumberAnimation on opacity{
                            from: 1.0
                            to: 0.0
                            duration: 500
                            loops: Animation.Infinite
                            easing.type: Easing.InOutQuad
                            running: hazard ? true:false
                        }
                    }
                }
                Node {
                    id: decals_001
                    objectName: "decals.001"
                    x: 192.22056579589844
                    y: 55.53809356689453
                    rotation: Qt.quaternion(0.70667, -0.70667, 0.0248357, -0.0248357)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: decals_001_00_decals_0
                        objectName: "decals.001_00_decals_0"
                        source: "qrc:/asset/meshes/decals_001_00_decals_0_mesh.mesh"
                        materials: [
                            node00_decals_material
                        ]
                    }
                }
                Node {
                    id: decals_003
                    objectName: "decals.003"
                    x: -1.4501407146453857
                    y: 7.575204849243164
                    z: 0.0179526899009943
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: decals_003_00_decals_0
                        objectName: "decals.003_00_decals_0"
                        source: "qrc:/asset/meshes/decals_003_00_decals_0_mesh.mesh"
                        materials: [
                            node00_decals_material
                        ]
                    }
                }
                Node {
                    id: decals_002
                    objectName: "decals.002"
                    x: 1.0567545890808105
                    y: 4.313907146453857
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: decals_002_00_decals_0
                        objectName: "decals.002_00_decals_0"
                        source: "qrc:/asset/meshes/decals_002_00_decals_0_mesh.mesh"
                        materials: [
                            node00_decals_material
                        ]
                    }
                }
                Node {
                    id: decals_004
                    objectName: "decals.004"
                    x: -12.385052680969238
                    y: 30.049678802490234
                    rotation: Qt.quaternion(0.706956, -0.706956, -0.0146052, 0.0146052)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: decals_004_00_decals_0
                        objectName: "decals.004_00_decals_0"
                        source: "qrc:/asset/meshes/decals_004_00_decals_0_mesh.mesh"
                        materials: [
                            node00_decals_material
                        ]
                    }
                }
                Node {
                    id: ground
                    objectName: "ground"
                    y: -1.9269589185714722
                    z: -1.6387598122946656e-07
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 398.828
                    scale.y: 398.828
                    scale.z: 398.828
                }
                Node {
                    id: ground_001
                    objectName: "ground.001"
                    y: -1.4682925939559937
                    z: -1.6387598122946656e-07
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 398.828
                    scale.y: 398.828
                    scale.z: 398.828
                }
                Node {
                    id: lights_EXT_004
                    objectName: "lights_EXT.004"
                    rotation: Qt.quaternion(0.707107, 5.76012e-08, 0.707107, -5.76012e-08)
                    scale.x: 100
                    scale.y: 100
                    scale.z: 100
                    Model {
                        id: lights_EXT_004_glass_flou_0
                        objectName: "lights_EXT.004_glass_flou_0"
                        source: "qrc:/asset/meshes/lights_EXT_004_glass_flou_0_mesh.mesh"
                        materials: [
                            glass_flou_material
                        ]
                    }
                }
                Node {
                    id: plane_003
                    objectName: "Plane.003"
                    x: 0.33327341079711914
                    y: 0.7318466901779175
                    z: 103.77918243408203
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 206.589
                    scale.y: 206.589
                    scale.z: 206.589
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: node00_exter_material
            occlusionAmount: 1
            objectName: "00_exter"
            baseColorMap: textures_00_exter_baseColor_jpeg_texture
            metalnessMap: textures_00_exter_metallicRoughness_png_texture
            roughnessMap: textures_00_exter_metallicRoughness_png_texture
            metalness: 1
            roughness: 1
            occlusionMap: textures_00_exter_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 0.7246376872062683
            clearcoatRoughnessAmount: 0.08357138186693192
        }

        PrincipledMaterial {
            id: node00_vitres_material
            objectName: "00_vitres"
            baseColor: "#69101010"
            baseColorMap: textures_00_vitres_baseColor_png_texture
            metalnessMap: textures_00_vitres_metallicRoughness_png_texture
            roughnessMap: textures_00_vitres_metallicRoughness_png_texture
            metalness: 0.10896015167236328
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: node00_tech_material
            objectName: "00_tech"
            baseColorMap: textures_00_tech_baseColor_jpeg_texture
            metalnessMap: textures_00_tech_metallicRoughness_png_texture
            roughnessMap: textures_00_tech_metallicRoughness_png_texture
            metalness: 1
            roughness: 1
            normalMap: textures_00_tech_normal_jpeg_texture
            occlusionMap: textures_00_tech_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: node00_inter_material
            objectName: "00_inter"
            baseColor: "#ff000000"
            roughness: 0.9517236351966858
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: node00_roues_material
            objectName: "00_roues"
            baseColorMap: textures_00_roues_baseColor_jpeg_texture
            metalnessMap: textures_00_roues_metallicRoughness_png_texture
            roughnessMap: textures_00_roues_metallicRoughness_png_texture
            metalness: 1
            roughness: 1
            normalMap: textures_00_roues_normal_png_texture
            occlusionMap: textures_00_roues_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: node00_feux_int_material
            objectName: "00_feux_int"
            baseColor: "#40ffffff"
            baseColorMap: textures_00_feux_int_baseColor_jpeg_texture
            metalnessMap: textures_00_feux_int_metallicRoughness_png_texture
            roughnessMap: textures_00_feux_int_metallicRoughness_png_texture
            metalness: 1
            roughness: 1
            normalMap: textures_00_feux_int_normal_png_texture
            normalStrength: 0.1660848706960678
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
            transmissionFactor: 0.9735533595085144
        }

        PrincipledMaterial {
            id: node00_autres_material
            objectName: "00_autres"
            baseColorMap: textures_00_autres_baseColor_jpeg_texture
            metalnessMap: textures_00_autres_metallicRoughness_png_texture
            roughnessMap: textures_00_autres_metallicRoughness_png_texture
            metalness: 1
            roughness: 1
            normalMap: textures_00_autres_normal_png_texture
            occlusionMap: textures_00_autres_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: node00_feux_ext_material
            objectName: "00_feux_ext"
            baseColor: "#a1ffffff"
            baseColorMap: textures_00_feux_ext_baseColor_png_texture
            metalnessMap: textures_00_feux_ext_metallicRoughness_png_texture
            roughnessMap: textures_00_feux_ext_metallicRoughness_png_texture
            metalness: 1
            occlusionMap: textures_00_feux_ext_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: node00_decals_material
            objectName: "00_decals"
            baseColorMap: textures_00_decals_baseColor_png_texture
            roughness: 0.8040408492088318
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: material_material
            objectName: "material"
            baseColor: "#54ffffff"
            baseColorMap: textures_material_baseColor_png_texture
            metalnessMap: textures_material_metallicRoughness_png_texture
            roughnessMap: textures_material_metallicRoughness_png_texture
            metalness: 1
            roughness: 0.8040408492088318
            normalMap: textures_material_normal_png_texture
            occlusionMap: textures_material_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: sol__shadow_material
            objectName: "SOL._shadow"
            baseColor: "#ff000000"
            baseColorMap: textures_SOL__shadow_baseColor_png_texture
            roughness: 0.8040408492088318
            normalMap: textures_SOL__shadow_normal_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: node00_chrome_material
            objectName: "00_chrome"
            baseColorMap: textures_00_chrome_baseColor_jpeg_texture
            metalnessMap: textures_00_chrome_metallicRoughness_png_texture
            roughnessMap: textures_00_chrome_metallicRoughness_png_texture
            metalness: 1
            roughness: 0.29302871227264404
            normalMap: textures_00_chrome_normal_png_texture
            occlusionMap: textures_00_chrome_metallicRoughness_png_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: glass_flou_material
            objectName: "glass_flou"
            baseColor: "#4cdb5000"
            roughness: 0.8040408492088318
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: logo_FB_material
            objectName: "logo_FB"
            baseColor: "#ff656565"
            baseColorMap: textures_logo_FB_baseColor_png_texture
            roughness: 0.1959591805934906
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: logo_lancia_material
            objectName: "logo_lancia"
            baseColorMap: textures_logo_lancia_baseColor_png_texture
            roughness: 0.8040408492088318
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: newMaterial
            roughness: 0.30734
            cullMode: PrincipledMaterial.NoCulling
            clearcoatRoughnessAmount: 0.04
            baseColor: "#0021cc"
            metalness: 0.52308
            clearcoatAmount: 0.17804
            alphaMode: PrincipledMaterial.Opaque
            objectName: "New Material"
        }
        PrincipledMaterial {
            id: newMaterial1
            roughness: 0.25708
            clearcoatRoughnessAmount: 0.04
            clearcoatAmount: 1
            metalness: 0.4638
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            baseColor: "#ffccd3"
            alphaMode: PrincipledMaterial.Opaque
            emissiveFactor.z: 1
            cullMode: PrincipledMaterial.NoCulling
            objectName: "New Material"
        }
        PrincipledMaterial {
            id: newMaterial2
            roughness: 0.8
            cullMode: PrincipledMaterial.NoCulling
            metalness: 0.8
            emissiveFactor.z: 0
            clearcoatRoughnessAmount: 0.04
            alphaMode: PrincipledMaterial.Opaque
            emissiveFactor.y: 0.3
            emissiveFactor.x: 1
            clearcoatAmount: 1
            baseColor: "#E7D70B"
            objectName: "New Material"
        }
        PrincipledMaterial {
            id: newMaterial3
            roughness: 1
            metalness: 1
            emissiveFactor.x: 1
            emissiveFactor.y: 0.00229
            baseColor: "#ff0000"
            alphaMode: PrincipledMaterial.Opaque
            emissiveFactor.z: 0
            cullMode: PrincipledMaterial.NoCulling
            objectName: "New Material"
        }
    }

    // DirectionalLight {
    //     id: directionalLight
    //     x: -862.832
    //     y: 202.675
    //     brightness: 5
    //     eulerRotation.z: -0.58031
    //     eulerRotation.y: -90.60544
    //     eulerRotation.x: 0.00288
    //     z: -0.69022
    // }

    SpotLight {
        id: spotlight
        x: 4.986
        y: 1266.494
        brightness: 1500
        quadraticFade: 0.86652
        coneAngle: 66
        innerConeAngle: 56
        eulerRotation.z: 89.63255
        eulerRotation.y: -88.40701
        eulerRotation.x: -86.68648
        z: -0.52515
        castsShadow: true
        shadowMapQuality: Light.ShadowMapQualityHigh
    }

    // DirectionalLight {
    //     id: directionalLight1
    //     x: 918.265
    //     y: 202.124
    //     eulerRotation.z: 0.00002
    //     eulerRotation.y: 90.87879
    //     eulerRotation.x: -0.00002
    //     z: -3.67983
    // }

    PerspectiveCamera {
        id: perspectiveCamera
        x: -906.231
        y: 295.767
        eulerRotation.z: -1.70024
        eulerRotation.y: -37.85281
        eulerRotation.x: -2.77373
        z: 1074.91223
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: Animation.Infinite
                duration: 10000
                to: 10000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 10000
        enabled: true

        KeyframeGroup {
            target: sketchfab_model
            property: "eulerRotation.y"
            Keyframe {
                id: keyFrame
                value: 360
                frame: 10000
            }
        }
    }

    // DirectionalLight {
    //     id: directionalLight2
    //     x: 0.022
    //     y: 170.638
    //     //brightness: 1
    //     eulerRotation.z: 0.72528
    //     eulerRotation.y: 178.47374
    //     eulerRotation.x: 0.01328
    //     z: -428.03329
    // }

    // DirectionalLight {
    //     id: directionalLight3
    //     x: 2.164
    //     y: 147.293
    //     eulerRotation.z: -0.10487
    //     eulerRotation.y: 1.15032
    //     eulerRotation.x: -4.58242
    //     brightness: 1
    //     z: -181.35747
    // }
    // DirectionalLight {
    //     id: directionalLight4
    //     x: 446.68
    //     y: 0
    //     eulerRotation.z: 0.00002
    //     eulerRotation.y: 85.5758
    //     eulerRotation.x: -0.00002
    //     z: 206.62
    // }
    PerspectiveCamera {
        id: perspectiveCamera1
        x: 2000
        y: 900
        eulerRotation.z: 0
        eulerRotation.y: 90
        eulerRotation.x: -36
        z: 48
    }

    Connections{
        target: Cluster
        function onSignal_light_high(mode){
            node.checkl = mode
            if (checkl && !checkd){
                check = mode
            }
            else if(!checkl && !checkd){
                check = mode
            }
        }
        function onSignal_light_dim(mode){
            node.checkd = mode
            if (!checkl && checkd){
                check = mode
            }
            else if(!checkl && !checkd){
                check = mode
            }
        }
        function onSignal_hazard(mode){
            node.hazard = mode
        }
        function onSignal_fog(mode){
            node.fog = mode
        }
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:10;cameraSpeed3dMultiplier:1;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
}
##^##*/
