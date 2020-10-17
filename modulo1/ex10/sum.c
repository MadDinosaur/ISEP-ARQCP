int odd_sum(int* p) {
	int size = *p;
	int sum = 0;
	int i;
	
	for (i = 0; i < size; i++) {
		p++;
		if (*p % 2 != 0) {sum += *p;}
	}
	
	return sum;
}