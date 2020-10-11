#include <stdio.h>

int main(void) {
	int v[] = {0,5,6,5,5,1};
	int value = 5;
	int n = sizeof(v)/sizeof(v[0]);
	count(v, n, value);
	return 0;
}

int count (int *vec, int n, int value) {
	int cont = 0;
	int i;
	for(i = 0; i < n; i++) {
		if (vec[i] == value) {
			cont++;
		}
	}
	printf("O valor %d aparece %u vezes\n",value,cont);
	return cont;
}