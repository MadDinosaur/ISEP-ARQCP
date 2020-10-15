#include <stdio.h>
#include "sort_copy.h"

int sort_without_reps(int *src, int n, int *dest)
{
	copy_array(src, n, dest);
	
	// copia array
	
	sort_array(dest, n);
	
	// já está a ordenar o array
	
	int vezes = n;
	
	remove_repeated(dest,n, &vezes);
	// retira os repetidos
	
	return vezes;
}