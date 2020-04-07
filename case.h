#ifndef CASE_H
#define CASE_H

class Case
{
public:
    Case(); // Constructor
    int getJoueur(); //get player number
    void setJoueur(int player);//set player number
    void initialize(); //Intialization
private:
    int joueur; //Player number(0:not occupied,1:player1,2:player2)
};

#endif // CASE_H
