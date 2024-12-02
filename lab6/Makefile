CC = gcc
CFLAGS = -Wall -Wextra -lpthread

SERVER_SRC = server.c
CLIENT_SRC = client.c

all: server client clean

server: server.c
	$(CC) $(CFLAGS) -o server $(SERVER_SRC)

client: client.c
	$(CC) $(CFLAGS) -o client $(CLIENT_SRC)

clean:
	rm -f *.o
