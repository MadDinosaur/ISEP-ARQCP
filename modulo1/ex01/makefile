print: print.o main.o
	gcc print.o main.o -o print 

print.o: print.c
	gcc -g -Wall -c print.c -o print.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./print
	
clean:
	rm -f print.o main.o print