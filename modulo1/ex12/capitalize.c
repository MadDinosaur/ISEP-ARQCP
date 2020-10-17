void capitalize(char *str) {
	//Check first letter
	if (*str > 96) {
		*str -= 32;
	}
	//Check remaining letters
	while (*str != 0) {
		if (*str == 32 && *(str + 1) > 96 && *(str + 1) != 0) {
			*(str + 1) -= 32;
		}
		str++;
	}
}