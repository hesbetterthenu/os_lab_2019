CC=gcc
CFLAGS=-I.

all : mutex modfact deadlock

deadlock : deadlock.c
	$(CC) -lpthread deadlock.c -o deadlock $(CFLAGS)

modfact : modfact.c
	$(CC) -lpthread modfact.c -o modfact $(CFLAGS)

mutex : mutex.c
	$(CC) -lpthread mutex.c -o mutex $(CFLAGS)

clean :
	rm -f mutex modfact deadlock
