#include <stdio.h>
#include <math.h>

int rotate_right (int num, int nbits){
    unsigned int ret = num;
    while (nbits>0)
    {
        int carryFlag;
        if (ret%2==0){
            carryFlag=0;
        }else{
            carryFlag=1;
        }
        
        ret = ret >> 1;
        unsigned int mask = carryFlag * pow(2,31);
        ret = ret | mask;
        nbits--;
        
    }
    return ret;
}

int rotate_left (int num, int nbits){
    while (nbits>0)
    {
        int carryFlag;
        if (num>=0){
            carryFlag=0;
        }else{
            carryFlag=1;
        }
		
        num = num << 1;
        
        num = num | carryFlag;
        nbits--;
        
    }
    return num;
}