int odd_sum(int* p) {
	int size = *p;
	int sum = 0;
	int i;
	
	for (i = 1; i < size; i++) {
		p++;
		if (*p % 2 == 1) {sum += *p;}
	}
	
	return sum;
}