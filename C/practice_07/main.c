#include<stdio.h>
void display_pattern(){
    int result=0;
    for (int i = 1; i <= 5; i++)
    {
       for (int j = 1; j <= i; j++)
       {
            printf("%d",j);
       }
       printf("\r\n");
    }
}
/*
12345
1234
123
12
1
*/
void display_pattern_2(){
    for (int i = 5; i >=1; i--)
    {
       for (int j = 1; j<=i ; j++)
       {
        printf("%d",j);
       }
       printf("\r\n");
    }
    
}
int main(){
    // display_pattern();
    display_pattern_2();
    return 0;
}