calc: main.o calc.o
	gcc -m32 -g -Wall main.o calc.o -o calc

main.o: main.c header.h
	gcc -m32 -g -Wall -c main.c
	
calc.o: calc.s
	gcc -m32 -g -Wall -c calc.s
	
run:
	./calc
	
clean:
	rm -f calc.o main.o calc