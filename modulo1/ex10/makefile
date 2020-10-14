sum: sum.o main.o
	gcc sum.o main.o -o sum 

sum.o: sum.c
	gcc -g -Wall -c sum.c -o sum.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./sum
	
clean:
	rm -f sum.o main.o sum