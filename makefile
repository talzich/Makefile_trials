CC=gcc
CFLAGS=-c -Wall
SOURCES=a.c b.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=prog1

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o prog1
