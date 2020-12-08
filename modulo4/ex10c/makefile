count_bits_zero: main.o count_bits_zero.o
	gcc -m32 -g -Wall main.o count_bits_zero.o -o count_bits_zero

main.o: main.c header.h
	gcc -m32 -g -Wall -c main.c
	
count_bits_zero.o: count_bits_zero.s
	gcc -m32 -g -Wall -c count_bits_zero.s
	
run:
	./count_bits_zero
	
clean:
	rm -f count_bits_zero.o main.o count_bits_zero