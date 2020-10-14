frequencies: frequencies.o main.o
	gcc frequencies.o main.o -o frequencies 

frequencies.o: frequencies.c
	gcc -g -Wall -c frequencies.c -o frequencies.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./frequencies
	
clean:
	rm -f frequencies.o main.o frequencies