#include <stdio.h>
#include <string.h>
#include "header.h"

int main()
{
	char numero[] = "12DF";
	
	char formato = base_comparar(numero);
	
    if (formato == 'H')
    {
        printf("Número: %s é hexadecimal \n", numero);
    }
	
    if (formato == 'D')
    {
        printf("Número: %s é decimal \n", numero);
    }
	
    if (formato == 'O')
    {
        printf("Número: %s é octal \n", numero);
    }
	
    if (formato == 'B')
    {
        printf("Número: %s é binario \n", numero);
    }
	
    if (formato == 'F')
    {
        printf("Não existe formato para este número.\n");
    }

    return 0;
}


