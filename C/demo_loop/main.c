#include <stdio.h>
void forexample(){
    printf("Begin loop \r\n");
    for(int i =0;i<=5;i++){
        printf("i = %d \r\n",i);
    }
    printf("End \r\n");
}
void forexample2(){
    printf("Begin \r\n");
    printf("Please enter a number \r\n");
    int n;
    scanf("%d",&n);
    for(int i =0; i<=n; i++){
        printf("i = %d \r\n",i);
    }
}
// Viết chương trình in ra các số chẵn
void forexample3()
{
    printf("Begin \r\n");
    printf("Please enter a number \r\n");
    int n;
    scanf("%d",&n);
    for(int i=0; i<=n;i++){
        if(i%2==0){
            printf("i = %d \r\n",i);
        }
        else{
            printf("Invalid \r\n");
        }
    }
}

void forexample4(){
    printf("Begin \r\n");
    printf("Please enter a number \r\n");
    int n;
    scanf("%d",&n);
    for(int i=0;i<=n;){
        printf("i = %d \r\n",i);
        i=i+2;
    }
}
// Viết hàm với tham số 
void forexample5(int n)
{
    for(int i =0;i<=n;i++){
        if(i%2==0)
        {
            printf("i = %d \r\n",i);
        }
        else{
            printf("Invalid\r\n");
        }
    }
}
// Viết chương trình hiển thị ra các số theo tứ tụ giảm dần
void forexample6(int n){
    for (int i = n; i >0; i--)
    {
       if (i%2==0)
       {
        printf("i = %d\r\n",i);
       }
       else{
        printf("Invalid \r\n");
       }
       
    }
    
}
void whileexample(){
    int i =0;
    while(i<=5)
    {
        printf("i = %d\r\n",i);
        i++;
    }
}
void whileexample2(int n){
    int i=0;
    while (1)
    {
       if (i%2==0)
       {
        printf("i =%d\r\n",i);
       }
       else{
        printf("Invalid \r\n");
       }
       i++;
    }
    
}
void dowhileexample(int n){
    printf("Do while example \r\n");
    int i =5;
    do{
        printf("i =%d\r\n",i);
        i++;
    }while(i<n);
}
void whileexampe(int n){
    printf("While example \r\n");
    int i =5;
    while (i<n)
    {
      printf("i =%d\r\n",i);
      i++;
    }
    
}
void nestedexample(int n, int m){
   for (int i = 0; i < n; i++)
   {
    for (int j = 0; j < m; j++)
    {
        printf("i = %d j =%d \r\n",i,j);
    }
   }
}
void nestedexample2(int n, int m)
{
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            if (j>6)
            {
                break;
            }
            printf("i = %d j =%d \r\n",i,j);
        }
        
    }
    
}
//1. Sử vòng lặp while viết một chương trình nhập vào hai số n,m và hiển thị các giá trị trong vòng lặp
//2. Sử vòng lặp do while viết một chương trình nhập vào hai số n,m và hiển thị các giá trị trong vòng lặp
void  nestedexample3(int n, int m){
    int i =0;
    while (i<n) 
    {
        int j =0;
        printf("i = %d \r\n",i);
        while (j<m)
        {
            printf("i =%d j =%d \r\n",i,j);
            j++;
        }
       i++;
    } 
}
int main(){
    // forexample();
    // forexample2();
    // forexample3();
    // forexample4();
    // printf("Please enter a number \r\n");
    // int n;
    // scanf("%d",&n);
    // forexample5(n);
    // printf("Please enter a number \r\n");
    // int m;
    // scanf("%d",&m);
    // forexample6(m);
    // whileexample();
    // printf("Please enter a number \r\n");
    // int n =0;
    // scanf("%d",&n);
    // // whileexample2(n);
    // dowhileexample(n);
    // whileexampe(n);
    // printf("End \r\n");


    printf("Please enter n = \r\n");
    int n,m =0;
    scanf("%d",&n);
    printf("Please enter m = \r\n");
    scanf("%d",&m);
    // nestedexample(n,m);
    nestedexample3(n,m);
    printf("End \r\n");
    
    return 0;
}