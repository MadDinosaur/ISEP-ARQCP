sum_smaller: main.o sum_smaller.o
	gcc -m32 -g -Wall main.o sum_smaller.o -o sum_smaller

main.o: main.c header.h
	gcc -m32 -g -Wall -c main.c
	
sum_smaller.o: sum_smaller.s
	gcc -m32 -g -Wall -c sum_smaller.s
	
run:
	./sum_smaller
	
clean:
	rm -f sum_smaller.o main.o sum_smaller