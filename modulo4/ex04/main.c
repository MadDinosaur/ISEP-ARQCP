#include <stdio.h>
#include "header.h"

int main(void) {
	int num1 = 1;
	int num2 = 2;
	int smaller = 0;
	int result = sum_smaller(num1, num2, &smaller);
	
	printf("%d %d\n", result, smaller);
	
	return 0;
}