void capitalize(char *str) {
	while (*str != 0) {
		if (*str == 32 && *(str + 1) > 96 && *(str + 1) != 0) {
			*(str + 1) -= 32;
		}
		str++;
	}
}