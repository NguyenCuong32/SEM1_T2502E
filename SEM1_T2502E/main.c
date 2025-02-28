// Viết phương trình in các số theo thứ tự giảm dần

#include <stdio.h>
void forexample(int n)
{
    for( int i = n; i > 0;)
    {
        if(i%2==0)
        {
            printf("i = %d \r\n",i);
            i = i - 2;
        }
        else
        {
            printf("Invalid \r\n");
        }
    }
}
int main()
{
    int n;
    printf("Please enter a number : ");
    scanf("%d",&n);
    forexample(n);
    return 0;
}