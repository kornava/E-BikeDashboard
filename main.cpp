#include <QApplication>
#include <QQmlApplicationEngine>

// http://doc.qt.io/qt-5/qtqml-cppintegration-interactqmlfromcpp.html

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
