sort: sort.o main.o
	gcc sort.o main.o -o sort 

sort.o: sort.c
	gcc -g -Wall -c sort.c -o sort.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./sort
	
clean:
	rm -f sort.o main.o sort