#include <stdio.h>
#include "average.h"

int main(){
	int v[] = {1,2};
	int r = 0;
	
	r = average(v[0], v[1]);
	printf("average =%d\n", r);
	r = average_array(v, sizeof(v)/sizeof(v[0]));
	printf("array average =%d\n", r);
	return 0;
}