MAKEFLAGS=--silent

all: run clean

run: checker

check:
	./check_all.sh

clean:
	rm */checker/*.o
	rm */checker/checker

zip:
	bash -c 'zip assignment3.zip */*.{S,asm} *.md'
