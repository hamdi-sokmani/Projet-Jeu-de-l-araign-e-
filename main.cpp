#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>
#include <QtQml>
#include <iostream>
#include <string>
#include "game.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Game game;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Game",&game);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}


