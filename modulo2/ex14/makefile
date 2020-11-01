getArea: main.o getArea.o
	gcc -m32 -g -Wall main.o getArea.o -o getArea

main.o: main.c getArea.h
	gcc -m32 -g -Wall -c main.c
	
getArea.o: getArea.s
	gcc -m32 -g -Wall -c getArea.s
	
run:
	./getArea
	
clean:
	rm -f getArea.o main.o getArea