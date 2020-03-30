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

    }

    Rectangle{
        id: rec_turn
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 40
        width: 115
        height: 30
        color: "transparent"


        Text {

            id: turn_text
            color: "saddlebrown"
            anchors.right: parent.right
            anchors.top: parent.top
            font.family: "Helvetica"
            font.pointSize: 20
            text:{


                if( Game.winner_color==="#ff8300"||Game.winner_color==="#0032a0")
                {
                     qsTr(" won!!!")
                }
                else
                {
                    qsTr("'s Turn")
                }

            }


        }
        Rectangle{
            id: turn_box
            width: 25
            height: 25
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color:{


                if( Game.winner_color==="#ff8300"||Game.winner_color==="#0032a0")
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

