#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "header_file/cluster.h"
#include "header_file/fuelarc.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    Cluster cluster;
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("Cluster", &cluster);
    qmlRegisterType<FuelArcImageOverlay>("Fuel", 1, 0, "FuelShader");
    qmlRegisterType<CoolantArcImageOverlay>("Fuel", 1, 0, "CoolantShader");


    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(QUrl::fromLocalFile("C:/Users/PC/Documents/myCluster/Main.qml"));

    return app.exec();
}
