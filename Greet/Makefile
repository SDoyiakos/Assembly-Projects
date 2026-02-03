Greet.out: Greet.o
	ld Greet.o -o Greet.out

Greet.o: Greet.asm
	nasm -f elf64 Greet.asm -o Greet.o

clean:
	rm *~
	rm *.o
	rm *.out
