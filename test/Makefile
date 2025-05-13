# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -O2 -lSDL2 -lSDL2_image

# Source files and output
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
TARGET = game

# Rules
all: $(TARGET)

libplume.so:
	make -C ..
	cp ../libplume.so .

$(TARGET): $(OBJ) ./libplume.so
	$(CC) $(CFLAGS) -o $@ $(OBJ) ./libplume.so
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean
