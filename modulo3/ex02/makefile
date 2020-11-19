str_copy_porto: main.o str_copy_porto.o
	gcc -m32 -g -Wall main.o str_copy_porto.o -o str_copy_porto

main.o: main.c str_copy_porto.h
	gcc -m32 -g -Wall -c main.c
	
str_copy_porto.o: str_copy_porto.s
	gcc -m32 -g -Wall -c str_copy_porto.s
	
run:
	./str_copy_porto
	
clean:
	rm -f str_copy_porto.o main.o str_copy_porto