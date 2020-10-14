#include "sum.h"
#include <stdio.h>

int main(void){
	int vec[] = {6,6,4,3,1,7,2};
	
	printf("Sum of odd numbers in array {");
	int i;
	for (i = 0; i < vec[0]; i++) {
		printf("%d,",vec[i + 1]);
	}
	printf("} is %d.\n", odd_sum(vec));
	
	return 0;
}