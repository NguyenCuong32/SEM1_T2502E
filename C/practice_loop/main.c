#include<stdio.h>
void showseries(){
    for (int i = 100; i >=0; i--)
    {
        if (i%5==0)
        {
          printf("i = %d \r\n",i);
        }
        
    }
    
}
// Nhập vào từ bàn phím 1 số nguyên bất kỳ (n). Tính tổng các số nguyên từ 0 đến (n)  
// và hiển thị ra màn hình kết quả
int summary(int n){
    int result =0;
    for (int i = 0; i <= n; i++)
    {
      printf("result = %d + %d\r\n",result,i);
      result = result + i;
    }
    return result;
}
int multiple(int n){
    int result =1;
    for (int i = 1; i < n; i++)
    {
       printf("result = %d * %d \r\n",result,i);
       result = result*i;
    }
    return result;
    
}
int main(){
   int m =0;
   int n=0;
   while (1)
   {
        printf("Please enter a number \r\n");
        printf("Enter 1 to summary\r\n");
        printf("Enter 2 to multiple\r\n");
        printf("Enter 9 to exit\r\n");
        scanf("%d",&n);
        scanf("%d",&m);
        int result =0;
        if (n==1)
        {
            result = summary(m);
        }
        if (n==2)
        {
            result = multiple(m);
        }
        printf("Summary = %d \r\n",result);
        if (n==9)
        {
            break;
        }
   }
   return 0;

}