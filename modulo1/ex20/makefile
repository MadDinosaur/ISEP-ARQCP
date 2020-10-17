find_all_words: find_all_words.o main.o
	gcc find_all_words.o main.o -o find_all_words 
	
find_all_words.o: find_all_words.c find_word.h
	gcc -g -Wall -c find_all_words.c -o find_all_words.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
run:
	./find_all_words
	
clean:
	rm -f find_all_words.o main.o find_all_words