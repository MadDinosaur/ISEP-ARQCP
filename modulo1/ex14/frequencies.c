#include <stdio.h>

void frequencies(float *grades, int n, int *freq) {
	if (n > 0) {
		int absGrade = (int) *grades;
		*(freq + absGrade) += 1;
		
		frequencies(grades + 1, n - 1, freq);
	}
}