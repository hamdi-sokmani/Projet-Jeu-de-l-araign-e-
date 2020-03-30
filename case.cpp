#include "case.h"
#include <iostream>
using namespace std;

Case::Case()
{
    joueur=0;
}

int Case::getJoueur(){
    return joueur;
}


void Case::setJoueur(int player){
    joueur=player;
}

void Case::initialize()
{
    joueur=0;
}
