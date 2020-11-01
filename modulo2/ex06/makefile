concatBytes: main.o concatBytes.o
	gcc -m32 -g -Wall main.o concatBytes.o -o concatBytes

main.o: main.c concatBytes.h
	gcc -m32 -g -Wall -c main.c
	
concatBytes.o: concatBytes.s
	gcc -m32 -g -Wall -c concatBytes.s
	
run:
	./concatBytes
	
clean:
	rm -f concatBytes.o main.o concatBytes