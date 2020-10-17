#include <stdio.h>
#include "find_word.h"

int main (void) {
	char str[] = "Hello world, it's a great world, world!";
	char* addr[5] = {0};
	
	find_all_words(str, "world", addr);
	
	int i;
	for (i = 0; i < 5; i++) {
		printf(" %p ", addr[i]);
	}
	printf("\n");
	
	return 0;
}