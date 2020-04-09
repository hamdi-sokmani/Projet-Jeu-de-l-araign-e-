#ifndef GAME_H
#define GAME_H

#include <QObject>
#include "case.h"


typedef std::pair<QString, QString> pair;

class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QObject *parent = nullptr);
    Q_INVOKABLE void gestion(int position);//function called when case is pressed
    void phase1(int place); //gère la partie quand les 6 jetons ne sont pas encore mis
    void phase2_1(int place); //phase for taking pion
    void phase2_2(int place);//phase for putting pion
    void contrainte_deplacement(int case_number);
    void contrainte_takepion();

    Q_INVOKABLE QString getPhase(){return (compteur<6)?"Phase 1":"Phase 2";}// function to get the phase
    Q_PROPERTY(QString phase READ getPhase NOTIFY gamechanged)

    Q_INVOKABLE QString getPlayer1Color(){return playersColors.first;} // function to get player 1 color
    Q_INVOKABLE void changePlayer1Color(QString null); // function to change player 1 color
    Q_PROPERTY(QString player1Color READ getPlayer1Color WRITE changePlayer1Color NOTIFY gamechanged)

    Q_INVOKABLE QString getPlayer2Color(){return playersColors.second;} // function to get player 1 color
    Q_INVOKABLE void changePlayer2Color(QString null); // function to change player 1 color
    Q_PROPERTY(QString player2Color READ getPlayer2Color WRITE changePlayer2Color NOTIFY gamechanged)


    Q_INVOKABLE QList<QString> readPos(); //List of all available positions
    Q_PROPERTY(QList<QString> gameQML READ readPos NOTIFY gamechanged)//gameQML contains list of color

    Q_INVOKABLE QString which_turn();//to tell which turn
    Q_PROPERTY(QString current_color READ which_turn NOTIFY gamechanged)

    void condition_winner();//to check condition of win
    Q_INVOKABLE QString winner_color(); // to get winner's color
    Q_PROPERTY(QString winner_color READ winner_color NOTIFY gamechanged)//string of winner color used in the part QML

    Q_INVOKABLE int getScore1(){ return Scores[0];} // to get player1 score
    Q_PROPERTY(int score1 READ getScore1 NOTIFY gamechanged)

    Q_INVOKABLE int getScore2() { return Scores[1];} // to get player2 score
    Q_PROPERTY(int score2 READ getScore2 NOTIFY gamechanged)

    Q_INVOKABLE QList<bool> getAvailableCases(); // to get the boxes that you can move the selected box to
    Q_PROPERTY(QList<bool> availableCases READ getAvailableCases() NOTIFY gamechanged)

    Q_INVOKABLE int getClickedCase(); // to get the box that a player want to move
    Q_PROPERTY(int clickedCase READ getClickedCase() NOTIFY gamechanged)

    Q_INVOKABLE void restart();//if restart button is pushed, this function is called

signals:
    void gamechanged();//signal that tells when we call Q_PROPERTY

private:
    int compteur;//to see which player and what phase it is, this value increases as the game proceed
    int th_phase2; // threshold after which phase2 begins
    int indexOfClicked; // the index of the box to be moved
    pair playersColors; // pair of players colors
    int Scores[2]; // Players scores
    Case listecases[9];//main list
    Case listecases_copy1[9];//sub list for contrainte_deplacement
    Case listecases_copy2[9];//sub ;ist for contrainte_takepion
    bool color_exist=true;//which phase we are in, take pion or put pion
    int winner=0;//if game is not finished winner=0, if finished winner=1 or 2
};

#endif // GAME_H
