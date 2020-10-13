#include <stdio.h>
#include "averageglobalarray.h"

int g_n;
int g_v[100];

int main()
{
	int r = 0;
	
	r = average_global_array();
	
	printf("Average = %d \n", r);
	
	return 0;
}

