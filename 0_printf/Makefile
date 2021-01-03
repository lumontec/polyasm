

.PHONY: all
all: x86_x64 llvm dump


.PHONY: x86_x64 
x86_x64:
	mkdir -p ./x86_x64
	gcc -S -O0 -g -masm=intel printf.c -o ./x86_x64/printf-0.s
	gcc -S -O1 -g -masm=intel printf.c -o ./x86_x64/printf-1.s
	gcc -S -O2 -g -masm=intel printf.c -o ./x86_x64/printf-2.s

.PHONY: llvm 
llvm:
	mkdir -p ./llvm
	clang -S -O0 -g -emit-llvm printf.c -o ./llvm/printf-0.ll
	clang -S -O1 -g -emit-llvm printf.c -o ./llvm/printf-1.ll
	clang -S -O2 -g -emit-llvm printf.c -o ./llvm/printf-2.ll

.PHONY: dump
dump:
	mkdir -p ./dump
	gcc -O0 -g printf.c -o ./dump/gcc-printf-0.o
	objdump -M intel -S ./dump/gcc-printf-0.o > ./dump/gcc-printf-0.dump
	gcc -O1 -g printf.c -o ./dump/gcc-printf-1.o
	objdump -M intel -S ./dump/gcc-printf-1.o > ./dump/gcc-printf-1.dump
	gcc -O2 -g printf.c -o ./dump/gcc-printf-2.o
	objdump -M intel -S ./dump/gcc-printf-2.o > ./dump/gcc-printf-2.dump
	clang -O0 -g printf.c -o ./dump/clang-printf-0.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-printf-0.o > ./dump/clang-printf-0.dump
	clang -O1 -g printf.c -o ./dump/clang-printf-1.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-printf-1.o > ./dump/clang-printf-1.dump
	clang -O2 -g printf.c -o ./dump/clang-printf-2.o
	llvm-objdump --x86-asm-syntax=intel -S ./dump/clang-printf-2.o > ./dump/clang-printf-2.dump

.PHONY: clean
clean:
	rm -rf ./llvm ./x86_x64 ./dump

