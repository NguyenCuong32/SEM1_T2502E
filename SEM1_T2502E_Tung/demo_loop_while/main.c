// Ví dụ minh hoạ While

#include<stdio.h>
#include <stdbool.h>
void whileexample()
{
    int i = 0;
    while(i<=5)
    {
        printf("i = %d \r\n",i);
        i++;
    }
}
void whileexample2(int n)
{
    int i = 0;
    while(true)
    {
        if (i%2==0)
        {
            printf("i = %d \r\n",i);
        }
        else
        {
            printf("Invalid \r\n");
        }
        i++;
    }
    
}
int main()
{
    // whileexample();
    int n = 0;
    printf("Please enter a number : ");
    scanf("%d",&n);
    whileexample2(n);
    printf("End \r\n");
    return 0;
}