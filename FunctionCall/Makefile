FctnCall.out: FctnCall.o
	ld FctnCall.o -o FctnCall.out

FctnCall.o: FctnCall.asm
	nasm -f elf64 FctnCall.asm -o FctnCall.o
