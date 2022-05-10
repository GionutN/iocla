ASM=as
ASMFLAGS=--32
CC=gcc
CFLAGS=-m32 -fno-pie -no-pie
MAKEFLAGS=--silent
TASKNAME = bonus_at_t
SKEL = ../$(TASKNAME).S

build: checker

check:
	./check.sh

checker: checker.o bonus_at_t.o
	$(CC) $(CFLAGS) $^ -o $@
 
bonus_at_t.o: $(SKEL)
	$(CC) -c $(CFLAGS) $^

checker.o: checker.c
	$(CC) -c $(CFLAGS) $^

clean:
	rm checker *.o
