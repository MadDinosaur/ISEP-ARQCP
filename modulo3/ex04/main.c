#include <stdio.h>
#include "vec_add_one.h"

int num;
int* ptrvec;

int main(void) {
	int vec1[] = {0,1,2,3,4,5,0};
	num = 7;
	
	ptrvec = vec1;
	
	vec_add_one();
	
	int i;
	for (i = 0; i < num; i++) {
		printf("%d\n", vec1[i]);
	}

	
	return 0;
}