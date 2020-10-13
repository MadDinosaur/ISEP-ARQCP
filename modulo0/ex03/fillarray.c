void fill_array(int vet[])
{
	int i=0;
	int p = 0;
	int soma = 0;
	
	for(i=0; i<30; i++)
	{
		printf("Insira o número que quer colocar no vetor. \n");
		scanf("%d",&p);
		vet[i] = p;
				
		soma = soma + p;	
	}
	
	float average = (float) soma / (float) i;
	
	printf ("A média do vetor é: %.2f \n", average);
}