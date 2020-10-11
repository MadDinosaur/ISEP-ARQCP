#include <stdio.h>

int main(void) {
	char x[] = "123.456";
	int x_int = integer_part(x);
	int x_frac = fractional_part(x);
	
	printf("Parte inteira: %d\n", x_int);
	printf("Parte fracionária: %d\n", x_frac);
	
	return 0;
}

int integer_part(char *x) {
	int i = 0;
	int x_int = 0;
	
	while(x[i] != '.') {
		x_int += x[i] - 48;
		x_int *= 10;
		i++;
	}
	
	x_int /= 10;
	return x_int;
}

int fractional_part(char *x) {
	int i = 0;
	int x_frac = 0;
	
	while(x[i] != '.') {
		i++;
	}
	
	i++;
	
	while(x[i] != 0) {
		x_frac += x[i] - 48;
		x_frac *= 10;
		i++;
	}
	
	x_frac /= 10;
	return x_frac;
}