prog1: a.o b.o
	gcc a.o b.o -o prog1

a.o: a.c a.h
	gcc -c -Wall a.c -o a.o

b.o: b.c b.h
	gcc -c -Wall b.c -o b.o
