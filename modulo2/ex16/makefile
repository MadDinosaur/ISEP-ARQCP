steps: main.o steps.o
	gcc -m32 -g -Wall main.o steps.o -o steps

main.o: main.c steps.h
	gcc -m32 -g -Wall -c main.c
	
steps.o: steps.s
	gcc -m32 -g -Wall -c steps.s
	
run:
	./steps
	
clean:
	rm -f steps.o main.o steps