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
    void phase2(int place); //gère la suite
    Q_INVOKABLE QList<QString> readPos(); //liste des positions utilisées
    Q_PROPERTY(QList<QString> gameQML READ readPos NOTIFY gamechanged);
    Q_INVOKABLE QString which_turn();
    Q_PROPERTY(QString current_color READ which_turn NOTIFY gamechanged);
    void condition_winner();
    void win();
    Q_INVOKABLE QString winner_color();
    Q_PROPERTY(QString winner_color READ winner_color NOTIFY gamechanged);
    Q_INVOKABLE void restart();


signals:
    void gamechanged();


private:
    int compteur=0;//pour voir on est dans quelle phase
    Case listecases[9];
    bool color_exist=true;
    int winner=0;//if game is not finished winner=0, if finished winner=1 or 2
};

#endif // GAME_H
