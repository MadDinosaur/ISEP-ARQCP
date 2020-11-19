zero_count: main.o zero_count.o
	gcc -m32 -g -Wall main.o zero_count.o -o zero_count

main.o: main.c zero_count.h
	gcc -m32 -g -Wall -c main.c
	
zero_count.o: zero_count.s
	gcc -m32 -g -Wall -c zero_count.s
	
run:
	./zero_count
	
clean:
	rm -f zero_count.o main.o zero_count