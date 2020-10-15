#include "exists.h"
#include <stdio.h>

int main(void){
	char str1[] = "World";
	char str2[] = "Hello World!";
	
	char* p = where_exists(str1, str2);
	
	printf("%c\n", *p);
	
	return 0;
}