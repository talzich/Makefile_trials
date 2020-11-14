CC=gcc
CFLAGS=-c -Wall

prog1: a.o b.o
	$(CC) a.o b.o -o prog1

a.o: a.c a.h
	$(CC) $(CFLAGS) a.c -o a.o

b.o: b.c b.h
	$(CC) $(CFLAGS) b.c -o b.o
