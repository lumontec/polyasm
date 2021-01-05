NAME=types

.PHONY: all
all: 
	nasm ./printhex.asm -felf64 -g -o ./printhex.o && ld ./printhex.o -o ./printhex 
	chmod u+x ./printhex 

.PHONY: clean
clean:
	rm -rf ./printhex.o ./printhex

