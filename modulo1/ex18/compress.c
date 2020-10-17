void compress_shorts(short* shorts, int n_shorts, int* integers) {
	short* compressor = (short*) integers;
	
	int i;
	for (i = 0; i < n_shorts; i++) {
		*compressor = *shorts;
		compressor++;
		shorts++;
	}
}