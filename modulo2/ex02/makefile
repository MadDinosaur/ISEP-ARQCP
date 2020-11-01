sum: main.o sum.o
	gcc -m32 -g -Wall main.o sum.o -o sum

main.o: main.c sum.h
	gcc -m32 -g -Wall -c main.c
	
sum.o: sum.s
	gcc -m32 -g -Wall -c sum.s
	
run:
	./sum
	
clean:
	rm -f sum.o main.o sum