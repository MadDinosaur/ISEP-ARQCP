#include <stdio.h>
#include "todos.h"

int numero1, numero2, numero3, numero4, numero5, numero6, numero7, numero8, numero9, numero10, numero11 ;

int main (void)
{
  int valor;
  
  printf ("SELECIONE A OPÇÃO: 1.SOMA 2.SUBTRACAO 3.MULTIPLICAÇAO 4.DIVISAO 5.MODULO 6.POTENCIA 7.POTENCIACUBICA \n");
  scanf("%d", &valor);
  
  switch (valor)
  {
    case 1 :
	
	printf ("Soma: \n");
	printf ("Insira o nº1: \n");
	scanf("%d",&numero1);
	
	printf ("Insira o nº2: \n");
	scanf("%d",&numero2);
	
	int res = soma();
	
	printf("Resultado: %d \n",res);
	
	break;
	
    case 2 :
	
    printf ("Subtracao: \n");
	printf ("Insira o nº1: \n");
	scanf ("%d",&numero3);
	
	printf ("Insira o nº2: \n");
	scanf ("%d",&numero4);
	
	int res2 = subtracao();
	
	printf("Resultado: %d\n",res2);
	
	break;
    
    case 3 :
	
	printf ("Multiplicacao: \n");
	printf ("Insira o nº1: \n");
	scanf ("%d",&numero5);
	
	printf ("Insira o nº2: \n");
	scanf ("%d",&numero6);
	
	int res3 = multiplicacao();
	
	printf("Resultado: %d\n",res3);
	
	break;
    
    case 4 :
	
	printf ("Divisao: \n");
	printf ("Insira o nº1: \n");
	scanf ("%d",&numero7);
	
	printf ("Insira o nº2: \n");
	scanf ("%d",&numero8);
	
	int res4 = divisao();
	
	printf("Resultado: %d\n",res4);
	
	break;
    
    case 5 :
	
	printf ("Modulo: \n");
	printf ("Insira o nº: \n");
	scanf ("%d",&numero9);
	
	int res5 = modulo();
	
	printf("Resultado: %d\n",res5);
	
	break;
    
    case 6 :
	printf ("Potencia: \n");
	printf ("Insira o nº: \n");
	scanf ("%d",&numero10);
	
	int res6 = potencia2();
	
	printf("Resultado: %d\n",res6);
	
	break;
    
    case 7 :
	printf ("Potencia Cubica: \n");
	printf ("Insira o nº: \n");
	scanf ("%d",&numero11);
	
	int res7 = potencia3();
	
	printf("Resultado: %d\n",res7);
	
	break;
   
    default :
    printf ("Valor invalido!\n");
  }
  return 0;
}