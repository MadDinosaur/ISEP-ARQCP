#include <stdio.h>
#include "str_copy_h"

char *ptr1,*ptr2;

int main()
{
	char s1[] = "bbv";
	
	ptr1 = s1;
	ptr2 = s1;
	str_copy_porto2();
	printf("%s\n",ptr2);

	return 0;
}