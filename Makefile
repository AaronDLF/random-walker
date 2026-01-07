CC = gcc
CFLAGS = -Wall -Wextra -g -O0 -std=c11
LDFLAGS = -lSDL2
TARGET = random_walk
SRC = random_walk.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
