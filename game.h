#ifndef GAME_H
#define GAME_H

#include <QObject>

class Game : public QObject
{
    Q_OBJECT
public:
    explicit Game(QObject *parent = nullptr);
    //Q_INVOKABLE void gestion(int position);

signals:

};

#endif // GAME_H
