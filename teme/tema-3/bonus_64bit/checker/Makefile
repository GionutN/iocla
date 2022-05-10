ASM=nasm
ASMFLAGS=-f elf64
MAKEFLAGS=--silent
TASKNAME = bonus_x64
SKEL = ../$(TASKNAME).asm

build: checker

check:
	./check.sh

checker: checker.o bonus_x64.o
 
bonus_x64.o: $(SKEL)
	$(ASM) $(ASMFLAGS) $^

checker.o: checker.c

clean:
	rm checker *.o
