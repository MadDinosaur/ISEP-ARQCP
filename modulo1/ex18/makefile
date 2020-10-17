compress: compress.o main.o
	gcc compress.o main.o -o compress 
	
compress.o: compress.c
	gcc -g -Wall -c compress.c -o compress.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./compress
	
clean:
	rm -f compress.o main.o compress