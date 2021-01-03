NAME=types

.PHONY: all
all: x86_x64 llvm dump


.PHONY: x86_x64 
x86_x64:
	mkdir -p ./x86_x64
	gcc -S -O0 -g -masm=intel $(NAME).c -o ./x86_x64/$(NAME)-0.s
	gcc -S -O1 -g -masm=intel $(NAME).c -o ./x86_x64/$(NAME)-1.s
	gcc -S -O2 -g -masm=intel $(NAME).c -o ./x86_x64/$(NAME)-2.s

.PHONY: llvm 
llvm:
	mkdir -p ./llvm
	clang -S -O0 -g -emit-llvm $(NAME).c -o ./llvm/$(NAME)-0.ll
	clang -S -O1 -g -emit-llvm $(NAME).c -o ./llvm/$(NAME)-1.ll
	clang -S -O2 -g -emit-llvm $(NAME).c -o ./llvm/$(NAME)-2.ll

.PHONY: dump
dump:
	mkdir -p ./dump
	gcc -O0 -g $(NAME).c -o ./dump/gcc-$(NAME)-0.o
	objdump -M intel -S ./dump/gcc-$(NAME)-0.o > ./dump/gcc-$(NAME)-0.dump
	gcc -O1 -g $(NAME).c -o ./dump/gcc-$(NAME)-1.o
	objdump -M intel -S ./dump/gcc-$(NAME)-1.o > ./dump/gcc-$(NAME)-1.dump
	gcc -O2 -g $(NAME).c -o ./dump/gcc-$(NAME)-2.o
	objdump -M intel -S ./dump/gcc-$(NAME)-2.o > ./dump/gcc-$(NAME)-2.dump
	clang -O0 -g $(NAME).c -o ./dump/clang-$(NAME)-0.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-$(NAME)-0.o > ./dump/clang-$(NAME)-0.dump
	clang -O1 -g $(NAME).c -o ./dump/clang-$(NAME)-1.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-$(NAME)-1.o > ./dump/clang-$(NAME)-1.dump
	clang -O2 -g $(NAME).c -o ./dump/clang-$(NAME)-2.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-$(NAME)-2.o > ./dump/clang-$(NAME)-2.dump

.PHONY: clean
clean:
	rm -rf ./llvm ./x86_x64 ./dump

