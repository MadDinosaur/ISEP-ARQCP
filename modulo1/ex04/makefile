upper: upper.o main.o
	gcc upper.o main.o -o upper 

upper.o: upper.c
	gcc -g -Wall -c upper.c -o upper.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./upper
	
clean:
	rm -f upper.o main.o upper