copy: copy.o main.o
	gcc copy.o main.o -o copy 

copy.o: copy.c
	gcc -g -Wall -c copy.c -o copy.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./copy
	
clean:
	rm -f copy.o main.o copy