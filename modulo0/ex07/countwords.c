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