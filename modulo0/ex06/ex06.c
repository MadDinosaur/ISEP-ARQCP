#include <stdio.h>

int main(void) {
	char str[100];
	
	printf("Insira os valores:\n");
	int a = string_to_int(gets(str));
	int b = string_to_int(gets(str));
	printf("A média é %.2f.\n", (a+b)/2.0f);
	
	return 0;
}

int string_to_int (char *str) {
	int i = 0;
	int d = 0;
	while (str[i] != 0) {
		d += str[i] - 48;
		d *= 10;
		i++;
	}
	return d/10;
}