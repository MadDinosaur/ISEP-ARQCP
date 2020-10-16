#include <string.h>
#include <ctype.h>

char* find_word(char* str, char* word, char* initial_addr)
{

	if(*str == 0 || *word == 0 || *initial_addr == 0)
	{
		return NULL;
	}	
	
	char *temp;
	
	temp = strcasestr(initial_addr,word);

	return temp;
}