void power_ref(int* x, int y) {
	int i;
	int result = 1;
	
	if (y == 0) {
		*x = 1;
	} else {
		for (i = 0; i < y; i++) {
			result *= *x;
		}
		*x = result;
	}
}