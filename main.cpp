#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>

#include "qmlhelpers.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QMLHelpers helpers;
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("qmlHelpers", &helpers);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
