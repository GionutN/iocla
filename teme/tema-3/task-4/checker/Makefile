CC = gcc
CFLAGS = -m32 -no-pie
ASM = nasm
ASMFLAGS = -f elf
TASKNAME = task4

build: checker

check: 
	./check.sh

checker: checker.o task4.o
	$(CC) $(CFLAGS) $^ -o $@
 
task4.o: ../task4.asm
	$(ASM) $(ASMFLAGS) $^

checker.o: checker.c
	$(CC) -c $(CFLAGS) $^

clean:
	rm checker *.o *.out
