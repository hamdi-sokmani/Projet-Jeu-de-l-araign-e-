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

        MouseArea {
            id: mouseArea1
            width: 50
            height: 50
            anchors.leftMargin: -25
            anchors.top: parent.top
            anchors.topMargin: -25
            anchors.left: parent.left
            //onClicked: vueGame.gestion(0);
        }

        MouseArea {
            id: mouseArea2
            width: 50
            height: 50
            anchors.top: parent.top
            anchors.topMargin: -25
            anchors.horizontalCenter: parent.horizontalCenter
            //onClicked: vueGame.gestion(1);
        }

        MouseArea {
            id: mouseArea3
            width: 50
            height: 50
            anchors.rightMargin: -25
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: -25
            //onClicked: vueGame.gestion(2);
        }

        MouseArea {
            id: mouseArea4
            width: 50
            height: 50
            anchors.leftMargin: -25
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            //onClicked: vueGame.gestion(3);
        }

        MouseArea {
            id: mouseArea5
            width: 50
            height: 50
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            ////onClicked: vueGame.gestion(4);
        }

        MouseArea {
            id: mouseArea6
            width: 50
            height: 50
            anchors.rightMargin: -25
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            //onClicked: vueGame.gestion(5);
        }

        MouseArea {
            id: mouseArea7
            width: 50
            height: 50
            anchors.bottom: parent.bottom
            anchors.leftMargin: -25
            anchors.left: parent.left
            anchors.bottomMargin: -25
            //onClicked: vueGame.gestion(6);
        }

        MouseArea {
            id: mouseArea8
            width: 50
            height: 50
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: -25
            //onClicked: vueGame.gestion(7);
        }

        MouseArea {
            id: mouseArea9
            width: 50
            height: 50
            anchors.bottom: parent.bottom
            anchors.rightMargin: -25
            anchors.right: parent.right
            anchors.bottomMargin: -25
            //onClicked: vueGame.gestion(8);
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


    }


}


