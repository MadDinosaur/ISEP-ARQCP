capitalize: capitalize.o main.o
	gcc capitalize.o main.o -o capitalize 

capitalize.o: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./capitalize
	
clean:
	rm -f capitalize.o main.o capitalize