test_even: main.o test_even.o vec_sum_even.o
	gcc -m32 -g -Wall main.o test_even.o vec_sum_even.o -o test_even

main.o: main.c test_even.h
	gcc -m32 -g -Wall -c main.c
	
test_even.o: test_even.s
	gcc -m32 -g -Wall -c test_even.s
	
vec_sum_even.o: vec_sum_even.s
	gcc -m32 -g -Wall -c vec_sum_even.s
	
run:
	./test_even
	
clean:
	rm -f test_even.o main.o test_even