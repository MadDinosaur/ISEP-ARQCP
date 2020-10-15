exists: exists.o main.o
	gcc exists.o main.o -o exists 
	
exists.o: exists.c
	gcc -g -Wall -c exists.c -o exists.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./exists
	
clean:
	rm -f exists.o main.o exists