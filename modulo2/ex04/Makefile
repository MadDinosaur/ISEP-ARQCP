sum_v3: main.o sum_v3.o
	gcc -m32 -g -Wall main.o sum_v3.o -o sum_v3

main.o: main.c sum_v3.h
	gcc -m32 -g -Wall -c main.c
	
sum_v3.o: sum_v3.s
	gcc -m32 -g -Wall -c sum_v3.s
	
run:
	./sum_v3
	
clean:
	rm -f sum_v3.o main.o sum_v3