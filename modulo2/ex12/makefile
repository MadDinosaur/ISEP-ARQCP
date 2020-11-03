isMultiple: main.o isMultiple.o
	gcc -m32 -g -Wall main.o isMultiple.o -o isMultiple

main.o: main.c isMultiple.h
	gcc -m32 -g -Wall -c main.c
	
isMultiple.o: isMultiple.s
	gcc -m32 -g -Wall -c isMultiple.s
	
run:
	./isMultiple
	
clean:
	rm -f isMultiple.o main.o isMultiple