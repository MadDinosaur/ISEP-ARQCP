sum2ints: main.o sum2ints.o
	gcc -m32 -g -Wall main.o sum2ints.o -o sum2ints

main.o: main.c sum2ints.h
	gcc -m32 -g -Wall -c main.c
	
sum2ints.o: sum2ints.s
	gcc -m32 -g -Wall -c sum2ints.s
	
run:
	./sum2ints
	
clean:
	rm -f sum2ints.o main.o sum2ints