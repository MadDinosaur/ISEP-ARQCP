#include "compress.h"
#include <stdio.h>

int main(void){
	short shorts[] = {1,2,3,4,5,6,7,8};
	int n_shorts = sizeof(shorts)/sizeof(shorts[0]); 
	int integers[4] = {};
	
	compress_shorts(shorts, n_shorts, integers);
	
	int i;
	for (i = 0; i < n_shorts/2; i++) {
		printf(" %d ", integers[i]);
	}
	
	return 0;
}