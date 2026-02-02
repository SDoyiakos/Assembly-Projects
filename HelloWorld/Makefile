HelloWorld.out: HelloWorld.o
	ld HelloWorld.o -o HelloWorld.out

HelloWorld.o: HelloWorld.asm
	nasm -f elf64 HelloWorld.asm -o HelloWorld.o

clean:
	rm -f *.out
	rm -f *.o
	rm -f *~
