# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -O2

# Source files and output
SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
TARGET = plume.so

# Rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ -shared -fPIC
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean