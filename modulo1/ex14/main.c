#include "frequencies.h"
#include <stdio.h>

int main(void){
	float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67,
16.23, 18.75};
	int freq[21] = {0};
	
	frequencies(grades, sizeof(grades)/sizeof(grades[0]), freq);
	
	printf("grades = {");
	int i;
	for (i = 0; i < sizeof(grades)/sizeof(grades[0]); i++) {
		printf("%.2f,",grades[i]);
	}
	printf("}\n");
	
	printf("freq = {");
	int j;
	for (j = 0; j < 21; j++) {
		printf("%d,",freq[j]);
	}
	printf("}\n");
	
	return 0;
}