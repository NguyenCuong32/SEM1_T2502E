#include<stdio.h>
int main(){
    int val = 500;
    int *poiter_val;
    printf("Value %d, Address of variable %p\r\n",val,&val);
    poiter_val =&val;
    printf("Value of Pointer = %p\r\n",poiter_val);
    printf("Address of Pointer = %p\r\n",&poiter_val);
    printf("Value reference %d",*poiter_val);
    return 0;
}