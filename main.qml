import QtQuick 2.6
import QtQuick.Window 2.2


Window {
    id: window
    visible: true
    width: 330
    height: 430
    color:"lightyellow"
    title: qsTr("Jeu de l'Araignée")
    MyComponent{
        Text {
            id: phase
            x: 108
            y: 8
            width: 124
            height: 50
            text: Game.phase;
            color: "saddlebrown";
            font.pixelSize: 24
            font.bold: true
            font.family: "Helvetica"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

    Rectangle{
        id: rec_turn
        y: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
        width: 115
        height: 30
        color: "transparent"
        anchors.horizontalCenterOffset: 1


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
        Rectangle{
            id: turn_box
            width: 25
            height: 25
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color:{


                if( Game.winner_color===Game.player1Color||Game.winner_color===Game.player2Color)
                {
                    Game.winner_color
                }
                else
                {
                    Game.current_color
                }

            }
        }

    }





}

