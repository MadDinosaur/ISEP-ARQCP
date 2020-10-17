#define _GNU_SOURCE

#include "find_word.h"
#include <string.h>

void find_all_words(char* str, char* word, char** addrs) {
	char* initial_addr = str;
	char* found_addrs;
	do {
		found_addrs = find_word(str, word, initial_addr);
		if (found_addrs != 0) {
			*addrs = found_addrs;
			addrs++;
			initial_addr = found_addrs + 1;
		}
	} while (found_addrs != 0);
}

char* find_word(char* str, char* word, char* initial_addr)
{

	if(*str == 0 || *word == 0 || *initial_addr == 0)
	{
		return 0;
	}	
	
	char* temp;
	
	temp = strcasestr(initial_addr,word);

	return temp;
}