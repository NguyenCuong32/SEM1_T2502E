// Ví dụ minh hoạ về Loop (Vòng lặp)

#include <stdio.h>
void forexample()
{
    printf("Begin loop \r\n");
    for(int i = 0; i <= 5; i++)
    {
        printf("i = %d \r\n",i);
    }
    printf("End \r\n");
}
void forexamble2()
{
    printf("Begin \r\n");
    printf("Hay nhap 1 so ");
    int n;
    scanf("%d",&n);
    for(int i = 0; i <= n; i++)
    {
    printf("i = %d \r\n",i);
    }
}
// Viết 1 phương trình in ra các số chẵn
void forexample3()
{
    printf("Begin \r\n");
    printf("Please enter a number : ");
    int n;
    scanf("%d",&n);
    for(int i = 0; i <= n; i++)
    {
        if (i%2==0)
        {
            printf("i = %d \r\n",i);
        }
        else 
        {
            printf("Invalid \r\n");
        }
        
    }
}

void forexample4()
{
    printf("Begin \r\n");
    printf("Please enter a number : ");
    int n;
    scanf("%d",&n);
    for(int i = 0; i <=n;)
    {
        printf("i = %d \r\n",i);
        i = i + 2;
    }
}

// Viết hàm với tham số
void forexample5(int n)
{
    for(int i = 0; i <= n ;)
    {
        if(i%2==0)
        {
            printf("i = %d \r\n",i);
            i = i +2;
        }
        else
        {
            printf("Invalid \r\n");
        }
    }
}
void forexample6(int m)
{
    for(int i = 0; i <= m;)
    {
        if(i%2==0)
        {
            printf("i = %d \r\n",i);
            i = i + 2;
        }
        else
        {
            printf("Invalid \r\n");
        }
    }
}
int main()
{
    //forexample();
    //forexamble2();
    //forexample3();
    //forexample4();
    // printf("Please enter a number \r\n");
    // int n;
    // scanf("%d",&n);
    // forexample5(n);
    // printf("Please enter a number :");
    int m;
    scanf("%d",&m);
    forexample6(m);
    printf("Please enter a number :");
    return 0;
}