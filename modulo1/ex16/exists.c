#include <stdio.h>
#include "exists.h"

char* recursive_where_exists(char* str1, char* str2, char* starting_pos) {
	if (*str1 == 0) {
		return str2 - (str1 - starting_pos);
	}
	
	if (*str2 == 0) {
		return 0;
	}
	
	if (*str1 == *str2) {
		recursive_where_exists(str1 + 1, str2 + 1, starting_pos);
	} else {
		recursive_where_exists(starting_pos, str2 + 1, starting_pos);
	}
}

char* where_exists(char* str1, char* str2) {
	//Check for null entry
	if (*str1 == 0) {
		return 0;
	}
	
	char* p = recursive_where_exists(str1, str2, str1);
	return p;
}