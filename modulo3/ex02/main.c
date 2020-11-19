#include <stdio.h>
#include "str_copy_porto.h"

char* ptr1;
char* ptr2;

int main(void) {
	char s1[] = "vvvbvvbvvvbola";
	char s2[] = "aaaaaaaaaaaaaa";
	
	ptr1 = s1;
	ptr2 = s2;
	
	str_copy_porto();
	
	printf("%s\n", ptr2);
	
	return 0;
}