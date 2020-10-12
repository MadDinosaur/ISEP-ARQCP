#include <stdio.h>
#include <string.h>

int main()
{	
	char str3[] = "Ola como estás";
	
	int countWords (char *frase);
	
	int palavras = countWords(str3);
	
	printf ("O numero de palavras é: %d \n", palavras);
	
	return 0;
}

int countWords (char *frase)
{
	int contador = 0, i, comprimento;
	char ultimoC;
	
	comprimento = strlen(frase);
	if (comprimento > 0)
	{
		ultimoC = frase[0];
	}
	
	for(i=0; i<=comprimento; i++)
	{
		if ((frase[i] == ' ' || frase[i] == '\0') && ultimoC != ' ')
		{
			contador ++;
		}
		
		ultimoC = frase[i];
		
	}

	return contador;	
}