CC = gcc
CFLAGS = -m32
ASM = nasm
ASMFLAGS = -f elf
TASKNAME = bonus_cpuid
IMPL = ../../$(TASKNAME)/$(TASKNAME).asm
SKEL = ../$(TASKNAME).asm

build: checker

check: 
	./check.sh

checker: checker.o bonus_cpuid.o
	$(CC) $(CFLAGS) $^ -o $@
 
bonus_cpuid.o: bonus_cpuid.asm
	$(ASM) $(ASMFLAGS) $^

checker.o: checker.c
	$(CC) -c $(CFLAGS) $^

copy:
	if [ -f $(IMPL) ]; then cp $(IMPL) .; else cp $(SKEL) .; fi

clean:
	rm checker *.o