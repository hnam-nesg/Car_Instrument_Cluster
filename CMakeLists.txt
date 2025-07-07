cmake_minimum_required(VERSION 3.16)

project(myCluster VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Core 3DCore 3DQuick 3DRender SerialPort)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appmyCluster
    main.cpp
)

qt_add_qml_module(appmyCluster
    URI myCluster
    VERSION 1.0
    QML_FILES

        QML_FILES
        QML_FILES
        QML_FILES
        RESOURCES resource.qrc
        QML_FILES
        QML_FILES
        SOURCES
        SOURCES cluster.h cluster.cpp
        SOURCES fuelarc.h fuelarc.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmyCluster PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmyCluster
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmyCluster
    PRIVATE Qt6::Quick Qt6::Core Qt6::3DCore Qt6::3DQuick Qt6::3DRender Qt6::SerialPort
)

include(GNUInstallDirs)
install(TARGETS appmyCluster
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
