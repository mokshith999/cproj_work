CC = gcc
CFLAGS = -Wall -g
OBJ = main.o biggest.o factorial.o
TARGET = myprogram

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

main.o: main.c biggest.h factorial.h
	$(CC) $(CFLAGS) -c main.c

biggest.o: biggest.c biggest.h
	$(CC) $(CFLAGS) -c biggest.c

factorial.o: factorial.c factorial.h
	$(CC) $(CFLAGS) -c factorial.c

clean:
	rm -f $(OBJ) $(TARGET)

