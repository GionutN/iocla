ASM = nasm
ASMFLAGS = -f elf64
TASKNAME = bonus_vectorial
SKEL = ../$(TASKNAME).asm

build: checker

check: 
	./check.sh

checker: checker.o bonus_vectorial.o
 
bonus_vectorial.o: $(SKEL)
	$(ASM) $(ASMFLAGS) $^

checker.o: checker.c

clean:
	rm checker *.o
