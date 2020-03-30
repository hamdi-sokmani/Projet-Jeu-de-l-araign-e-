#include "game.h"
#include <iostream>

using namespace std;

Game::Game(QObject *parent) : QObject(parent)
{

}
void Game::gestion(int place)
{
    if (compteur<6)
    {
        if(listecases[place].getJoueur()==0)
        {
            Game::phase1(place);
            compteur++;
        }

    }
    else
    {

        Game::phase2(place);

    }
    gamechanged();
}

void Game::phase1(int place){
    listecases[place].setJoueur(compteur%2+1);
}

void Game::phase2(int place){
    if(color_exist)
    {
        if (listecases[place].getJoueur()==(compteur%2+1))
        {
            listecases[place].setJoueur(0);
            color_exist=false;
        }

    }
    else
    {
        if (listecases[place].getJoueur()==0)
        {
            listecases[place].setJoueur(compteur%2+1);
            color_exist=true;
            compteur++;
        }
    }



}

QList<QString> Game::readPos()
{
    QString gris="gainsboro", orange="#ff8300", bleu="#0032a0";
    QList<QString> positions;
    for(int j=0;j<9;j++)
    {
        positions<<gris;
    }

    for(int i=0; i<9; i++)
    {

        if(listecases[i].getJoueur()==0)
        {
            positions[i]=gris;
        }
        if(listecases[i].getJoueur()==1)
        {
            positions[i]=bleu;
        }
        if(listecases[i].getJoueur()==2)
        {
            positions[i]=orange;
        }
    }
    return positions;
}

QString Game::which_turn()
{
     QString orange="#ff8300", bleu="#0032a0";
     QString current_color;


     cout<<compteur<<endl;
     if (compteur%2==0)
     {
         current_color=bleu;
     }
     if (compteur%2==1)
     {
        current_color=orange;
     }


     return current_color;

}

