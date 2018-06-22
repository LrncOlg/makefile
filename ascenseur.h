#ifndef ASCENSEUR_H
#define ASCENSEUR_H

//classe ascenseur
typedef struct Ascenseur ascenseur;
struct Ascenseur{
	int nbFloor;
	int nbPersonne;
	int capacite;
	int etageActuel;
	enum status={up=1, down=-1, stopped=0};
}

void DisplayAscenseur(ascenseur a);
#endif
