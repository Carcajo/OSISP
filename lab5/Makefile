
CC = gcc
CFLAGS = -Wall -Wextra -pthread 

EXECUTABLE = main

SOURCES = main.c sort.c

OBJECTS = $(SOURCES:.c=.o)

HEADERS = sort.h

all: $(EXECUTABLE) clean

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ -lm


%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS)