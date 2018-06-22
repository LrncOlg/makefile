CC = gcc #choix du compilateur
CFLAGS = -Wall #-I/Bureau/introdep/makefile/makefile/TmpRepo/include #afficher tous les warnings #../ncurses/include si on arrive a le mettre dans la bon fichier
LDFLAGS = #-L/Bureau/introdep/makefile/makefile/TmpRepo/lib -lncurses

PROG = elevator

all : $(PROG)

#pas de dependances pour un clean
#on supprime les .o
clean : 
	rm *.o
$(PROG) : main.o ascenseur.o
	$(CC) -o $@ main.o ascenseur.o $(LDFLAGS) 

#main.o depend de main.c et ascenseur.h
main.o : main.c ascenseur.h
	$(CC) -o $@ -c $<
# gcc -o main.o -c main.c

ascenseur.o : ascenseur.c ascenseur.h
	$(CC) $(CFLAGS) -o $@ -c $<

#export TERM=xterm-color
