#include "copy.h"
#include <stdio.h>

int main(void) {
	//Test
	int vec1[] = {1,2,3,4,5};
	int vec2[5];
	
	int *vec1Ptr = vec1;
	int *vec2Ptr = vec2;
	
	copy_vec(vec1Ptr, vec2Ptr, sizeof(vec1)/sizeof(vec1[0]));
	
	printf("vec1={%d,%d,%d}, vec2={%d,%d,%d}\n", vec1[0], vec1[1], vec1[2], vec2[0], vec2[1], vec2[2]);
	
	return 0;
}