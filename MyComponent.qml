import QtQuick 2.0
Rectangle{
    id: rect

    color:"lightyellow"
    width: 330
    height: 430
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top


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
            id: colorArea0
            width: 25
            height: 25
            anchors.leftMargin: -12.5
            anchors.top: parent.top
            anchors.topMargin: -12.5
            anchors.left: parent.left
            color:Game.gameQML[0]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[0])?colorHexShade(Game.current_color, -0.5):(Game.clickedCase==0)?Game.current_color:Game.gameQML[0];
            }
        }
        Rectangle{
            id: colorArea1
            width: 25
            height: 25
            anchors.top: parent.top
            anchors.topMargin: -12.5
            anchors.horizontalCenter: parent.horizontalCenter
            color:Game.gameQML[1]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[1])?colorHexShade(Game.current_color, -0.5):(Game.clickedCase==1)?Game.current_color:Game.gameQML[1];
            }
        }


        Rectangle {
            id: colorArea2
            width: 25
            height: 25
            anchors.rightMargin: -12.5
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: -12.5
            color:Game.gameQML[2]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[2])?colorHexShade(Game.current_color, -0.5):(Game.clickedCase==2)?Game.current_color:Game.gameQML[2];
            }
        }

        Rectangle {
            id: colorArea3
            width: 25
            height: 25
            anchors.leftMargin: -12.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            color:Game.gameQML[3]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[3])?colorHexShade(Game.current_color,-0.5):(Game.clickedCase==3)?Game.current_color:Game.gameQML[3];
            }
        }

        Rectangle {
            id: colorArea4
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color:Game.gameQML[4]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[4])?colorHexShade(Game.current_color, -0.5):(Game.clickedCase==4)?Game.current_color:Game.gameQML[4];
            }
        }

        Rectangle {
            id: colorArea5
            width: 25
            height: 25
            anchors.rightMargin: -12.5
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            color:Game.gameQML[5]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[5])?colorHexShade(Game.current_color,-0.5):(Game.clickedCase==5)?Game.current_color:Game.gameQML[5];
            }

        }

        Rectangle {
            id: colorArea6
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.leftMargin: -12.5
            anchors.left: parent.left
            anchors.bottomMargin: -12.5
            color:Game.gameQML[6]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[6])?colorHexShade(Game.current_color,-0.5):(Game.clickedCase==6)?Game.current_color:Game.gameQML[6];
            }

        }

        Rectangle {
            id: colorArea7
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: -12.5
            color:Game.gameQML[7]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[7])?colorHexShade(Game.current_color,-0.5):(Game.clickedCase==7)?Game.current_color:Game.gameQML[7];
            }

        }

        Rectangle {
            id: colorArea8
            width: 25
            height: 25
            anchors.bottom: parent.bottom
            anchors.rightMargin: -12.5
            anchors.right: parent.right
            anchors.bottomMargin: -12.5
            color:Game.gameQML[8]
            border.width: 3
            border.color: {
                function colorHexShade(hex, lum) {
                    // convert to decimal and change luminosity
                    hex = String(hex).replace(/[^0-9a-f]/gi, '');
                    var rgbdarker = "#", c, i;
                    for (i = 0; i < 3; i++) {
                        c = parseInt(hex.substr(i*2,2), 16);
                        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
                        rgbdarker += ("00"+c).substr(c.length);
                    }
                    return rgbdarker;
                }
                (Game.availableCases[8])?colorHexShade(Game.current_color,-0.5):(Game.clickedCase==8)?Game.current_color:Game.gameQML[8];
            }

        }
        MouseArea {
            id: mouseArea0
            anchors.fill:colorArea0
            hoverEnabled: true;
            onExited: {
                if(colorArea0.color=="#c0c0c0")
                {
                    colorArea0.color="gainsboro"
                }

            }

            onEntered: {
                if(colorArea0.color=="#dcdcdc")
                {
                    colorArea0.color="silver"
                }
            }
            onClicked:{
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(0);
                    colorArea0.color=Game.gameQML[0]
                }
            }
        }


        MouseArea {
            id: mouseArea1
            anchors.fill:colorArea1
            hoverEnabled: true;
            onExited: {
                if(colorArea1.color=="#c0c0c0")
                {
                    colorArea1.color="gainsboro"
                }

            }

            onEntered: {
                if(colorArea1.color=="#dcdcdc")
                {
                    colorArea1.color="silver"
                }
            }
            onClicked:{
                if(Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(1);
                    colorArea1.color=Game.gameQML[1]
                }
            }
        }

        MouseArea {
            id: mouseArea2
            anchors.fill:colorArea2
            hoverEnabled: true;
            onExited: {
                if(colorArea2.color=="#c0c0c0")
                {
                    colorArea2.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea2.color=="#dcdcdc")
                {
                    colorArea2.color="silver"
                }
            }
            onClicked: {
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(2);
                    colorArea2.color=Game.gameQML[2]
                }
            }
        }

        MouseArea {
            id: mouseArea3
            anchors.fill:colorArea3
            hoverEnabled: true;
            onExited: {
                if(colorArea3.color=="#c0c0c0")
                {
                    colorArea3.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea3.color=="#dcdcdc")
                {
                    colorArea3.color="silver"
                }
            }
            onClicked:{
                if(Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(3);
                    colorArea3.color=Game.gameQML[3]
                }
            }
        }

        MouseArea {
            id: mouseArea4
            anchors.fill:colorArea4
            hoverEnabled: true;
            onExited: {
                if(colorArea4.color=="#c0c0c0")
                {
                    colorArea4.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea4.color=="#dcdcdc")
                {
                    colorArea4.color="silver"
                }
            }
            onClicked:{
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {

                    Game.gestion(4);
                    colorArea4.color=Game.gameQML[4]
                }
            }
        }

        MouseArea {
            id: mouseArea5
            anchors.fill:colorArea5
            hoverEnabled: true;
            onExited: {
                if(colorArea5.color=="#c0c0c0")
                {
                    colorArea5.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea5.color=="#dcdcdc")
                {
                    colorArea5.color="silver"
                }
            }
            onClicked:{
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {

                    Game.gestion(5);
                    colorArea5.color=Game.gameQML[5]

                }
            }
        }
        MouseArea {
            id: mouseArea6
            anchors.fill:colorArea6
            hoverEnabled: true;
            onExited: {
                if(colorArea6.color=="#c0c0c0")
                {
                    colorArea6.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea6.color=="#dcdcdc")
                {
                    colorArea6.color="silver"
                }
            }
            onClicked:{
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {

                    Game.gestion(6);
                    colorArea6.color=Game.gameQML[6]
                }
            }
        }

        MouseArea {
            id: mouseArea7
            anchors.fill:colorArea7
            hoverEnabled: true;
            onExited: {
                if(colorArea7.color=="#c0c0c0")
                {
                    colorArea7.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea7.color=="#dcdcdc")
                {
                    colorArea7.color="silver"
                }
            }
            onClicked:{
                if( Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(7);
                    colorArea7.color=Game.gameQML[7]
                }
            }
        }

        MouseArea {
            id: mouseArea8
            anchors.fill:colorArea8
            hoverEnabled: true;
            onExited: {
                if(colorArea8.color=="#c0c0c0")
                {
                    colorArea8.color="gainsboro"
                }
            }

            onEntered: {
                if(colorArea8.color=="#dcdcdc")
                {
                    colorArea8.color="silver"
                }
            }
            onClicked: {
                if(Game.winner_color!==Game.player1Color&&Game.winner_color!==Game.player2Color)
                {
                    Game.gestion(8);
                    colorArea8.color=Game.gameQML[8]

                }
            }
        }


    }
    Rectangle{
        id: restart
        anchors.horizontalCenter: parent.horizontalCenter
        width: 115
        height: 30
        color: "#cd853f"
        radius:10
        anchors.horizontalCenterOffset: 0
        anchors.top: main_rect.bottom
        anchors.topMargin: 44

        Text{
            id:text_restart
            text: qsTr("Restart")
            anchors.centerIn: restart
            color: "#ffffff"
            font.family: "Helvetica"
            font.pointSize: 16
        }
        MouseArea{
            id:mouse_restart
            anchors.fill:restart
            hoverEnabled: true;
            onEntered: {
                restart.color="#a0522d"
            }
            onExited: {
                restart.color="#cd853f"
            }
            onClicked: {
                Game.restart()
                colorArea0.color=Game.gameQML[0]
                colorArea1.color=Game.gameQML[1]
                colorArea2.color=Game.gameQML[2]
                colorArea3.color=Game.gameQML[3]
                colorArea4.color=Game.gameQML[4]
                colorArea5.color=Game.gameQML[5]
                colorArea6.color=Game.gameQML[6]
                colorArea7.color=Game.gameQML[7]
                colorArea8.color=Game.gameQML[8]

            }
        }

    }

    Rectangle{
        id: rec_turn
        y: 18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 79
        width: 115
        height: 30
        color: "transparent"
        anchors.horizontalCenterOffset: 0

        Rectangle{
            id: turn_box
            x: -108
            y: 345
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

            MouseArea {
                id: changeColor
                width: 25
                height: 25
                acceptedButtons: Qt.LeftButton
                onClicked: {
                    if(turn_box.color ==Game.player1Color.toLowerCase()){
                        Game.changePlayer1Color("");
                        colorArea0.color=Game.gameQML[0]
                        colorArea1.color=Game.gameQML[1]
                        colorArea2.color=Game.gameQML[2]
                        colorArea3.color=Game.gameQML[3]
                        colorArea4.color=Game.gameQML[4]
                        colorArea5.color=Game.gameQML[5]
                        colorArea6.color=Game.gameQML[6]
                        colorArea7.color=Game.gameQML[7]
                        colorArea8.color=Game.gameQML[8]
                    }
                    else if (turn_box.color==Game.player2Color.toLowerCase()){
                        Game.changePlayer2Color("");
                        colorArea0.color=Game.gameQML[0]
                        colorArea1.color=Game.gameQML[1]
                        colorArea2.color=Game.gameQML[2]
                        colorArea3.color=Game.gameQML[3]
                        colorArea4.color=Game.gameQML[4]
                        colorArea5.color=Game.gameQML[5]
                        colorArea6.color=Game.gameQML[6]
                        colorArea7.color=Game.gameQML[7]
                        colorArea8.color=Game.gameQML[8]
                    }
                }
            }
        }

    }

    Rectangle {
        id: rec_scores
        x: 0
        y: 8
        width: 202
        height: 30
        color: "#00000000"
        anchors.horizontalCenterOffset: 1
        Rectangle {
            id: score_box1
            x: 0
            y: 0
            width: 25
            height: 25
            color: Game.player1Color
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }

        Rectangle {
            id: score_box2
            x: 0
            y: 5
            width: 25
            height: 25
            color: Game.player2Color
            anchors.bottom: parent.bottom
            anchors.right: parent.right
        }
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 8
    }


}


