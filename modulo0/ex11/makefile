# Makefile do exercicio 11

ex11: averageglobalarray.o main.o 
		gcc -g -Wall averageglobalarray.o main.o -o ex11
	
averageglobalarray.o: averageglobalarray.c	
		gcc -g -Wall -c averageglobalarray.c -o averageglobalarray.o
	
main.o: main.c	
		gcc -g -Wall -c main.c -o main.o
	
clean:	
		rm -f *.o ex11

run: ex11
		./ex11