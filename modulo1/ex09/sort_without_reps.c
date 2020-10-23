int sort_without_reps(int *str,int n,int *dest){
	int size = n;
	int *pointer = dest;
	
	//Fazer uma cópia do array!!
	while(n!=0){
        *pointer=*str;
        n--;
        str++;
        pointer++;
    }
    
    //Ordenar o array!!
    int i=0;
	int boolean = 0;
	int *ptr1= dest;
	int *ptr2= dest;
		do{
			ptr2++;
			boolean=0;
            while(i<size-1){
				if(*ptr1>*ptr2){
					int temp=*ptr1;
					*ptr1=*ptr2;
					*ptr2 =temp;
                    boolean=1;
               }
                i++;
                ptr1++;
                ptr2++;
           }    
		   i=0;
		   ptr1=dest;
		   ptr2=dest;
        }while(boolean!=0); 
    
    //Saber o nº de elementos do array!!
    int h;
    int j;
    int k;
    
    for( h = 0; h < size; h++ ){
        for( j = h + 1; j < size; ){
            if( dest[j] == dest[h] ){
                for( k = j; k < size; k++ ){
					dest[k] = dest[k + 1];
				}
                size--;
            }
            else{
                j++;
            }
        }
	}
		
	
    return size;
}
