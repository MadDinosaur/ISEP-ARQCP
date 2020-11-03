check_num: main.o check_num.o
	gcc -m32 -g -Wall main.o check_num.o -o check_num

main.o: main.c check_num.h
	gcc -m32 -g -Wall -c main.c
	
check_num.o: check_num.s
	gcc -m32 -g -Wall -c check_num.s
	
run:
	./check_num
	
clean:
	rm -f check_num.o main.o check_num