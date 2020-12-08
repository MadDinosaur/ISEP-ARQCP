#include <stdio.h>
#include "test_even.h"

int even;
int* ptrvec;
int num;

int main(void) {
	even = 3;	
	printf("%d\n", test_even());
	
	even = 2;	
	printf("%d\n", test_even());
	
	int vec1[] = {1,3,4,6,2};
	num = 5;
	ptrvec = vec1;
	printf("%d\n", vec_sum_even());
	
	return 0;
}