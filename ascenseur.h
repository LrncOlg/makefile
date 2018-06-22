#ifndef ASCENSEUR_H
#define ASCENSEUR_H

//classe ascenseur
typedef struct Ascenseur ascenseur;
struct Ascenseur{
	int nbFloor;
	int nbPersonne;
	int capacite;
	int etageActuel;
	enum status={up, down, stopped};
}

void DisplayAscenseur(ascenseur a);
#endif
