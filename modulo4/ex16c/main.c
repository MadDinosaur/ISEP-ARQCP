#include <stdio.h>
#include "header.h"

int main(void) {
	int vec[] = {3840, 240};
	changes(&(vec[0]));
	
	printf("%d\n", vec[0]);
	
	changes_vec(vec, 2);
	
	printf("%d %d\n", vec[0], vec[1]);
	
	return 0;
}