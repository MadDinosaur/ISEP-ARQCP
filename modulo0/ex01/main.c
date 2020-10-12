#include <stdio.h>

int main()
{
	char n = 'A';
	int i = -1450;
	unsigned int i2 = 2000;
	long i3 = 5000000;
	short i4 = -32000;
	float i5 = 1.45;
	double i6 = 2.3456;
	
	printf ("O tamanho de armazenamento de uma variável char é: %u \n", sizeof(n));	
	printf ("O tamanho de armazenamento de uma variável int é: %u \n", sizeof(i));
	printf ("O tamanho de armazenamento de uma variável unsigned int é: %u \n", sizeof(i2));
	printf ("O tamanho de armazenamento de uma variável long é: %u \n", sizeof(i3));
	printf ("O tamanho de armazenamento de uma variável short é: %u \n", sizeof(i4));
	printf ("O tamanho de armazenamento de uma variável float é: %d \n", sizeof(i5));
	printf ("O tamanho de armazenamento de uma variável double é: %u \n", sizeof(i6));
	
	return 0;	
}