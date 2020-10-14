power: power.o main.o
	gcc power.o main.o -o power 

power.o: power.c
	gcc -g -Wall -c power.c -o power.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./power
	
clean:
	rm -f power.o main.o power