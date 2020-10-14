#include "sort.h"
#include <stdio.h>

int main(void){
	int vec[] = {9,1,5,7,3,2,0};
	int n = sizeof(vec)/sizeof(vec[0]);
	
	int i;
	printf("Before: {");
	for (i = 0; i < n; i++) {
		printf("%d,", vec[i]);
	}
	printf("}\n");
	
	array_sort2(vec, n);
	
	int j;
	printf("After: {");
	for (j = 0; j < n; j++) {
		printf("%d,", vec[j]);
	}
	printf("}\n");
	
	return 0;
}