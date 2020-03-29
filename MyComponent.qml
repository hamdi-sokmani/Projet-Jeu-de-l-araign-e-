import QtQuick 2.0
Rectangle{
    id: rect
    color:"lightyellow"
    width: 500
    height: 500


    Rectangle{
        id: main_rect
        color:"lightyellow"
        width: 200
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Rectangle {
            id: rec_left_top
            width: 100
            height: 100
            color: "lightyellow"
            anchors.left: parent.left
            anchors.top: parent.top
            border.width: 1
        }

        Rectangle {
            id: rec_right_top
            width: 100
            height: 100
            color: "lightyellow"
            anchors.right: parent.right
            anchors.top: parent.top
            border.width: 1
        }

        Rectangle {
            id: rec_right_bottom
            width: 100
            height: 100
            color: "lightyellow"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            border.width: 1
        }

        Rectangle {
            id: rec_left_bottom
            width: 100
            height: 100
            color: "lightyellow"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            border.width: 1
        }


        Rectangle {
            id: rect_for_border
            color:"#00000000"
            width: 200
            height: 200
            border.width: 2
            anchors.centerIn: parent
        }
        Rectangle {
            id: rect_diag_1
            width: 2
            height: 280
            color: "#00000000"
            rotation: 45
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Rectangle {
            id: rect_diag_2
            width: 2
            height: 280
            color: "#00000000"
            rotation: -45
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }

        border.width: 1
        Rectangle {
            id: colorArea1
            width: 25
            height: 25
            anchors.leftMargin: -12.5
            anchors.top: parent.top
            anchors.topMargin: -12.5
            anchors.left: parent.left


        }
        Rectangle{
            id: colorArea2
            width: 25
            height: 25
            anchors.top: parent.top
            anchors.topMargin: -12.5
            anchors.horizontalCenter: parent.horizontalCenter

        }


        Rectangle {
            id: colorArea3
            width: 25
            height: 25
            anchors.rightMargin: -12.5
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: -12.5

        }

        Rectangle {
            id: colorArea4
            width: 25
            height: 25
            anchors.leftMargin: -12.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left

        }

        Rectangle {
            id: colorArea5
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Rectangle {
            id: colorArea6
            width: 25
            height: 25
            anchors.rightMargin: -12.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right

        }

        Rectangle {
            id: colorArea7
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.leftMargin: -12.5
            anchors.left: parent.left
            anchors.bottomMargin: -12.5

        }

        Rectangle {
            id: colorArea8
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: -12.5

        }

        Rectangle {
            id: colorArea9
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.rightMargin: -12.5
            anchors.right: parent.right
            anchors.bottomMargin: -12.5

        }
        MouseArea {
            id: mouseArea1
            anchors.fill:colorArea1
            hoverEnabled: true;
            onExited: {
                colorArea1.color="white"
            }

            onEntered: {
                colorArea1.color="green"
            }

            onClicked: Game.gestion(1);
        }


        MouseArea {
            id: mouseArea2
            anchors.fill:colorArea2
            hoverEnabled: true;
            onExited: {
                colorArea2.color="white"
            }

            onEntered: {
                colorArea2.color="green"
            }
            onClicked: Game.gestion(2);
        }

        MouseArea {
            id: mouseArea3
           anchors.fill:colorArea3
           hoverEnabled: true;
           onExited: {
               colorArea3.color="white"
           }

           onEntered: {
               colorArea3.color="green"
           }
            onClicked: Game.gestion(3);
        }

        MouseArea {
            id: mouseArea4
            anchors.fill:colorArea4
            hoverEnabled: true;
            onExited: {
                colorArea4.color="white"
            }

            onEntered: {
                colorArea4.color="green"
            }
            onClicked: Game.gestion(4);
        }

        MouseArea {
            id: mouseArea5
            anchors.fill:colorArea5
            hoverEnabled: true;
            onExited: {
                colorArea5.color="white"
            }

            onEntered: {
                colorArea5.color="green"
            }
            onClicked: Game.gestion(5);
        }

        MouseArea {
            id: mouseArea6
            anchors.fill:colorArea6
            hoverEnabled: true;
            onExited: {
                colorArea6.color="white"
            }

            onEntered: {
                colorArea6.color="green"
            }
            onClicked: Game.gestion(6);
        }

        MouseArea {
            id: mouseArea7
            anchors.fill:colorArea7
            hoverEnabled: true;
            onExited: {
                colorArea7.color="white"
            }

            onEntered: {
                colorArea7.color="green"
            }
            onClicked: Game.gestion(7);
        }

        MouseArea {
            id: mouseArea8
            anchors.fill:colorArea8
            hoverEnabled: true;
            onExited: {
                colorArea8.color="white"
            }

            onEntered: {
                colorArea8.color="green"
            }
            onClicked: Game.gestion(8);
        }

        MouseArea {
            id: mouseArea9
            anchors.fill:colorArea9
            hoverEnabled: true;
            onExited: {
                colorArea9.color="white"
            }

            onEntered: {
                colorArea9.color="green"
            }
            onClicked: Game.gestion(9);
        }


    }


}


