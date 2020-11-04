f: main.o f4.o f3.o f2.o f.o
	gcc -Wall -g -m32 main.o f4.o f3.o f2.o f.o -o f
	
main.o: main.c f.h
	gcc -Wall -g -m32 -c main.c
	
f4.o: f4.s
	gcc -Wall -g -m32 -c f4.s
	
f3.o: f3.s
	gcc -Wall -g -m32 -c f3.s
	
f2.o: f2.s
	gcc -Wall -g -m32 -c f2.s
	
f.o: f.s
	gcc -Wall -g -m32 -c f.s
	
run:
	./f
	
clean:
	rm main.o f4.o f3.o f2.o f.o f