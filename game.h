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
    Q_PROPERTY(QList<QString> gameQML READ readPos);

signals:


private:
    int compteur=0;//pour voir on est dans quelle phase
    Case listecases[9];
    bool color_exist=true;
};

#endif // GAME_H
