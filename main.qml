import QtQuick 2.6
import QtQuick.Window 2.2


Window {
    id: window
    visible: true
    width: 330
    height: 500
    color:"lightyellow"
    title: qsTr("Jeu de l'Araignée")
    MyComponent{
        x: 0
        y: 0
        width: 330
        height: 500
        anchors.horizontalCenterOffset: 1
        anchors.topMargin: 0
        Text {
            id: phase
            x: 103
            y: 48
            width: 124
            height: 50
            text: Game.phase;
            color: "saddlebrown";
            font.pixelSize: 18
            font.bold: true
            font.family: "Helvetica"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

    Rectangle{
        id: rec_turn
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 80
        width: 115
        height: 30
        color: "transparent"
        anchors.horizontalCenterOffset: 2


        Text {

            id: turn_text
            x: 31
            color: "saddlebrown"
            text: {
                if( Game.winner_color===Game.player1Color||Game.winner_color===Game.player2Color)
                {
                    qsTr(" won!!!")
                }
                else
                {
                    qsTr("'s Turn")
                }

            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.right: parent.right
            anchors.top: parent.top
            font.family: "Helvetica"
            font.underline: false
            font.bold: true
            anchors.rightMargin: 7
            anchors.topMargin: 3
            font.pixelSize: 24


        }


    }

    Rectangle {
        id: rec_score
        x: 0
        y: 0
        width: 161
        height: 50
        color: "#00000000"
        anchors.horizontalCenterOffset: 2

        Text {
            id: text_scorep1
            x: 0
            y: 0
            width: 50
            height: 50
            color: "#8b4513"
            text: Game.score1

            font.bold: true
            font.family: "Helvetica"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 34
        }

        Text {
            id: text_scoredp
            x: 56
            y: 0
            width: 50
            height: 50
            color: "#8b4513"
            text: ":"
            font.bold: true
            font.family: "Helvetica"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }

        Text {
            id: text_scorep2
            x: 112
            y: 0
            width: 50
            height: 50
            color: "#8b4513"
            text: Game.score2
            font.bold: true
            font.family: "Helvetica"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 34
        }
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
    }
}

