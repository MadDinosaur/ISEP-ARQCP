#include <stdbool.h>

void array_sort2(int* vec, int n) {
	int aux;
	int i;
	bool isSorted;
	
	if (n > 1) {
		do {
			isSorted = true;
			for (i = 0; i < n - 1; i++) {
				vec++;
				if (*vec < *(vec - 1)) {
					aux = *vec;
					*vec = *(vec - 1);
					*(vec - 1) = aux;
					isSorted = false;
				}
			}
			vec -= n - 1;
		} while (isSorted == false);
	}
}