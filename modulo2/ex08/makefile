crossSumBytes: main.o crossSumBytes.o
	gcc -m32 -g -Wall main.o crossSumBytes.o -o crossSumBytes

main.o: main.c crossSumBytes.h
	gcc -m32 -g -Wall -c main.c
	
crossSumBytes.o: crossSumBytes.s
	gcc -m32 -g -Wall -c crossSumBytes.s
	
run:
	./crossSumBytes
	
clean:
	rm -f crossSumBytes.o main.o crossSumBytes