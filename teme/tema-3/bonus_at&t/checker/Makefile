ASM=as
ASMFLAGS=--32
CC=gcc
CFLAGS=-m32 -fno-pie
MAKEFLAGS=--silent
TASKNAME = bonus_at_t
IMPL = ../../$(TASKNAME)/$(TASKNAME).asm
SKEL = ../$(TASKNAME).asm

build: checker

check:
	./check.sh

checker: checker.o bonus_at_t.o
	$(CC) $(CFLAGS) $^ -o $@
 
bonus_at_t.o: bonus_at_t.S
	$(CC) -c $(CFLAGS) $^

checker.o: checker.c
	$(CC) -c $(CFLAGS) $^

copy:
	if [ -f $(IMPL) ]; then cp $(IMPL) .; else cp $(SKEL) .; fi

clean:
	rm checker *.o