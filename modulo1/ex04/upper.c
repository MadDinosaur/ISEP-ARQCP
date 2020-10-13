void upper1(char *str) {
	while(*str != 0) {
		if (*str >= 97 && *str <=122) {
			*str -= 32;
		}
		str++;
	}
}