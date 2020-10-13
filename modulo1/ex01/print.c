#include <stdio.h>

void print(int x, int *xPtr, float y, int vec[]) {
	printf("Value of x=%d and y=%.2f.\n", x, y);
	printf("Address of x=%p and xPtr=%p.\n", &x, xPtr);
	printf("Value pointed by xPtr=%d.\n", *xPtr);
	printf("Address of vec=%p.\n", vec);
	printf("Value of vec[0]=%d, vec[1]=%d, vec[2]=%d, vec[3]=%d.\n", vec[0], vec[1], vec[2], vec[3]);
	printf("Address of vec[0]=%p, vec[1]=%p, vec[2]=%p, vec[3]=%p.\n", &vec[0], &vec[1], &vec[2], &vec[3]);	
}
	