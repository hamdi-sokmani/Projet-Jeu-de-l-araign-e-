#include "case.h"
#include <iostream>
using namespace std;

Case::Case(){
joueur=0;
}

Case::Case(int player)
{
    if(player==1||player==2)
    joueur=player;
}


int Case::getJoueur(){
    return joueur;
}


void Case::setJoueur(int player){
    joueur=player;
}
