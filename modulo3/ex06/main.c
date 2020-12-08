#include <stdio.h>
#include "encrypt.h"

char* ptr1;

int main(void) {
	char s1[] = "i am very happy";
	
	ptr1 = s1;
	
	printf("%d\n", encrypt());
	
	return 0;
}