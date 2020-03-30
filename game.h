#ifndef GAME_H
#define GAME_H

#include <QObject>
#include "case.h"

class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QObject *parent = nullptr);
    Q_INVOKABLE void gestion(int position);
    void phase1(int place); //gère la partie quand les 6 jetons ne sont pas encore mis
    void phase2_1(int place); //phase for taking pion
    void phase2_2(int place);//phase for putting pion
    void contrainte_deplacement(int case_number);
    void contrainte_takepion();
    Q_INVOKABLE QList<QString> readPos(); //liste des positions utilisées
    Q_PROPERTY(QList<QString> gameQML READ readPos NOTIFY gamechanged);
    Q_INVOKABLE QString which_turn();
    Q_PROPERTY(QString current_color READ which_turn NOTIFY gamechanged);
    void condition_winner();//to check condition of win
    Q_INVOKABLE QString winner_color();
    Q_PROPERTY(QString winner_color READ winner_color NOTIFY gamechanged);//string of winner color used in the part QML
    Q_INVOKABLE void restart();//if restart button is pushed, this function is called

signals:
    void gamechanged();//signal that tells when we call Q_INVOKABLE function


private:
    int compteur=0;//pour voir on est dans quelle phase, this value increases as the game proceed
    Case listecases[9];//main list
    Case listecases_copy1[9];//sub list for contrainte_deplacement
    Case listecases_copy2[9];//sub ;ist for contrainte_takepion
    bool color_exist=true;//which phase we are in, take pion or put pion
    int winner=0;//if game is not finished winner=0, if finished winner=1 or 2

};

#endif // GAME_H
