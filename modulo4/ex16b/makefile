changes: main.o changes.o
	gcc -m32 -g -Wall main.o changes.o -o changes

main.o: main.c header.h
	gcc -m32 -g -Wall -c main.c
	
changes.o: changes.s
	gcc -m32 -g -Wall -c changes.s
	
run:
	./changes
	
clean:
	rm -f changes.o main.o changes