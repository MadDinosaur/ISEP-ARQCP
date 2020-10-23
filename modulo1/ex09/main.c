#include <stdio.h>
#include "sort_without_reps.h"

int main(){
    int vec[10]= {2,1,3,2,4,3,5,4,5,6};
    int vec2[10];
	int *ptr2 = vec2;

    int x = sort_without_reps(vec, 10, vec2);
    printf("\nNº de elementos do array: %d\n", x);
    
    
    //Print do array!!
    printf("Array final: {");
    int max=x;
    while(x!=0){
        if(x==max){
            printf("%d",*ptr2);
            ptr2++;
            x--;
            continue;
        }
        if(*ptr2!=0){
            printf(",%d",*ptr2);
        }
        ptr2++;
        x--;
    }
    printf("}\n\n");
    
    return 0;
}
