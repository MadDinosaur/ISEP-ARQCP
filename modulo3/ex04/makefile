vec_add_one: main.o vec_add_one.o
	gcc -m32 -g -Wall main.o vec_add_one.o -o vec_add_one

main.o: main.c vec_add_one.h
	gcc -m32 -g -Wall -c main.c
	
vec_add_one.o: vec_add_one.s
	gcc -m32 -g -Wall -c vec_add_one.s
	
run:
	./vec_add_one
	
clean:
	rm -f vec_add_one.o main.o vec_add_one