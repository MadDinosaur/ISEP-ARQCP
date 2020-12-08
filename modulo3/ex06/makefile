encrypt: main.o encrypt.o
	gcc -m32 -g -Wall main.o encrypt.o -o encrypt

main.o: main.c encrypt.h
	gcc -m32 -g -Wall -c main.c
	
encrypt.o: encrypt.s
	gcc -m32 -g -Wall -c encrypt.s
	
run:
	./encrypt
	
clean:
	rm -f encrypt.o main.o encrypt