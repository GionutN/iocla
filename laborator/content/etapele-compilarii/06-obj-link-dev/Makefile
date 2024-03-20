CC = gcc
CFLAGS = -g -Wall -Wextra -Werror -fno-pic -masm=intel

.PHONY: all clean

all: main


# TODO: Add dependecies here so that the Makefile works
main: main.c libops.a
	$(CC) $(CFLAGS) -o $@ $^ -L. -lops

libops.a: shop.o
	ar rc $@ $^

clean:
	-rm -f main main.o libops.a
