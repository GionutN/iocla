MAKEFLAGS=--silent

all: run clean

run: checker

checker:
	./check_all.sh

clean:
	rm */checker/*.o
	rm */checker/checker
	rm */checker/*.asm

zip:
	bash -c 'zip assignment3.zip */*.{S,asm} *.md'
