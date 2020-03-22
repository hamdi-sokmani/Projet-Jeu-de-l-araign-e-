import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 600
    height: 500
    title: qsTr("Jeu de l'Araignée")


    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
    }
}
