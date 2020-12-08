#include <stdio.h>
#include "header.h"

int main(void) {
	int a = 2;
	int b[] = {2, 3, 4, 5};
	int c = 4;
	
	int result = calc(a, b, c);
	
	printf("%d\n", result);
	
	return 0;
}