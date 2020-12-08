#include <stdio.h>
#include "header.h"

int main(void) {
	int vec[] = {1, 2, 3};
	
	int result = count_bits_zero(vec[0]);
	
	int result2 = vec_count_bits_zero(vec, 3);
	
	printf("%d %d\n", result, result2);
	
	return 0;
}