operation: main.o operation.o
	gcc -m32 -g -Wall main.o operation.o -o operation

main.o: main.c operation.h
	gcc -m32 -g -Wall -c main.c
	
operation.o: operation.s
	gcc -m32 -g -Wall -c operation.s
	
run:
	./operation
	
clean:
	rm -f operation.o main.o operation