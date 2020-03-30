#include "game.h"
#include <iostream>
#include <case.h>
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
        if(color_exist)
        {
            contrainte_takepion();
            if (listecases_copy2[place].getJoueur()!=3)
            {
                Game::phase2_1(place);
            }
        }
        else
        {
            Game::phase2_2(place);
        }

    }
    condition_winner();
    gamechanged();
}

void Game::phase1(int place){
    listecases[place].setJoueur(compteur%2+1);
}

void Game::phase2_1(int place){

        if (listecases[place].getJoueur()==(compteur%2+1))
        {
            contrainte_deplacement(place);
            listecases[place].setJoueur(0);
            color_exist=false;
        }
}
void Game::phase2_2(int place){

        if (listecases_copy1[place].getJoueur()==0)
        {
            listecases[place].setJoueur(compteur%2+1);
            color_exist=true;
            compteur++;
        }
}
void Game::contrainte_deplacement(int case_number)
{

    for (int i=0;i<9;i++)
    {
        listecases_copy1[i].setJoueur(listecases[i].getJoueur());
    }
    if(case_number==0)
    {
        listecases_copy1[2].setJoueur(3);
        listecases_copy1[5].setJoueur(3);
        listecases_copy1[6].setJoueur(3);
        listecases_copy1[7].setJoueur(3);
        listecases_copy1[8].setJoueur(3);
    }
    if(case_number==1)
    {
        listecases_copy1[3].setJoueur(3);
        listecases_copy1[5].setJoueur(3);
        listecases_copy1[6].setJoueur(3);
        listecases_copy1[7].setJoueur(3);
        listecases_copy1[8].setJoueur(3);
    }
    if(case_number==2)
    {
        listecases_copy1[0].setJoueur(3);
        listecases_copy1[3].setJoueur(3);
        listecases_copy1[6].setJoueur(3);
        listecases_copy1[7].setJoueur(3);
        listecases_copy1[8].setJoueur(3);
    }
    if(case_number==3)
    {
        listecases_copy1[1].setJoueur(3);
        listecases_copy1[2].setJoueur(3);
        listecases_copy1[5].setJoueur(3);
        listecases_copy1[7].setJoueur(3);
        listecases_copy1[8].setJoueur(3);
    }
    if(case_number==5)
    {
        listecases_copy1[0].setJoueur(3);
        listecases_copy1[1].setJoueur(3);
        listecases_copy1[3].setJoueur(3);
        listecases_copy1[6].setJoueur(3);
        listecases_copy1[7].setJoueur(3);
    }
    if(case_number==6)
    {
        listecases_copy1[0].setJoueur(3);
        listecases_copy1[1].setJoueur(3);
        listecases_copy1[2].setJoueur(3);
        listecases_copy1[5].setJoueur(3);
        listecases_copy1[8].setJoueur(3);
    }
    if(case_number==7)
    {
        listecases_copy1[0].setJoueur(3);
        listecases_copy1[1].setJoueur(3);
        listecases_copy1[2].setJoueur(3);
        listecases_copy1[3].setJoueur(3);
        listecases_copy1[5].setJoueur(3);
    }
    if(case_number==8)
    {
        listecases_copy1[0].setJoueur(3);
        listecases_copy1[1].setJoueur(3);
        listecases_copy1[2].setJoueur(3);
        listecases_copy1[3].setJoueur(3);
        listecases_copy1[6].setJoueur(3);
    }
}
void Game::contrainte_takepion()
{
    for (int i=0;i<9;i++)
    {
        listecases_copy2[i].setJoueur(listecases[i].getJoueur());
    }
    if(listecases[1].getJoueur()!=0 && listecases[3].getJoueur()!=0 && listecases[4].getJoueur()!=0)
    {
        listecases_copy2[0].setJoueur(3);
    }
    if(listecases[0].getJoueur()!=0 && listecases[2].getJoueur()!=0 && listecases[4].getJoueur()!=0)
    {
        listecases_copy2[1].setJoueur(3);
    }
    if(listecases[1].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[5].getJoueur()!=0)
    {
        listecases_copy2[2].setJoueur(3);
    }
    if(listecases[0].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[6].getJoueur()!=0)
    {
        listecases_copy2[3].setJoueur(3);
    }
    if(listecases[2].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[8].getJoueur()!=0)
    {
        listecases_copy2[5].setJoueur(3);
    }
    if(listecases[3].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[7].getJoueur()!=0)
    {
        listecases_copy2[6].setJoueur(3);
    }
    if(listecases[6].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[8].getJoueur()!=0)
    {
        listecases_copy2[7].setJoueur(3);
    }

    if(listecases[5].getJoueur()!=0 && listecases[4].getJoueur()!=0 && listecases[7].getJoueur()!=0)
    {
        listecases_copy2[8].setJoueur(3);
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

void Game::condition_winner()
{
    for (int i=1;i<=2;i++)
    {
        if(listecases[0].getJoueur()==i && listecases[1].getJoueur()==i && listecases[2].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[3].getJoueur()==i && listecases[4].getJoueur()==i && listecases[5].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[6].getJoueur()==i && listecases[7].getJoueur()==i && listecases[8].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[0].getJoueur()==i && listecases[3].getJoueur()==i && listecases[6].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[1].getJoueur()==i && listecases[4].getJoueur()==i && listecases[7].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[2].getJoueur()==i && listecases[5].getJoueur()==i && listecases[8].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[2].getJoueur()==i && listecases[4].getJoueur()==i && listecases[6].getJoueur()==i)
        {
            winner=i;
        }
        if(listecases[0].getJoueur()==i && listecases[4].getJoueur()==i && listecases[8].getJoueur()==i)
        {
            winner=i;
        }

    }

}




QString Game::winner_color()
{
    QString gris="gainsboro", orange="#ff8300", bleu="#0032a0";
    QString color;
    if (winner==1)
    {
        color=bleu;
    }
    if (winner==2)
    {
        color=orange;
    }
    if (winner==0)
    {
        color=gris;
    }

    return color;
}

void Game::restart(){
    compteur =0; //0 compteur
    winner=0;
    for (int i=0;i<9;i++)
    {
        listecases[i].initialize();
    }

    color_exist=true;
    gamechanged();
}
