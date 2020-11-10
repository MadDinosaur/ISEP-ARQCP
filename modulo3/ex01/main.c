#include <stdio.h>
#include "zero_count.h"

char *ptr1;
int main()
{
	int x;
	char * s1 = "";
	char * s2 = "000";
	char * s3 = "asjdlsad00ask";
	
	ptr1 = s1;
	x = zero_count();
	printf("num=%d\n",x);
	
	ptr1 = s2;
	x = zero_count();
	printf("num=%d\n",x);
	
	ptr1 = s3;
	x = zero_count();
	printf("num=%d\n",x);
	
	return 0;
}