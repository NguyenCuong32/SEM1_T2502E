#include<stdio.h>
void printfNumber(){
    int numbers[7]={1,2,3,4,5,9,11};
    for (int i = 0; i < 7; i++)
    {
        printf("number i =%d numbers = %d \r\n",i,numbers[i]);
    }
}
void printChar(){
    char characters[6] = {'t','2','5','0','2','e'};
    for (int i = 0; i < 6; i++)
    {
        printf("Character i = %d value = %c \r\n",i,characters[i]);
    }
     
}
void countVowels(){
    char characters[20] ={'a','b','c','c','4','f','o','u','d','g','y','l','k','9','i','u','x','m','r','5'};
    int count =0;
    for (int i = 0; i < 20; i++)
    {
        if (characters[i]=='a'||characters[i]=='i'||characters[i]=='e'||characters[i]=='u'||characters[i]=='o')
        {
            count++;
            printf("Char is %c\r\n",characters[i]);
        }
        
    }
    printf("Count of vowels : %d",count);
    
}
void printfNumberAdv(int n){
    int numbers[n];
    for (int i = 0; i < n; i++)
    {
        printf("Please enter a number: \r\n");
        scanf("%d",&numbers[i]);
    }
    for (int j = 0; j < n; j++)
    {
        printf("Value is %d\r\n",numbers[j]);
    }
    
}
// Bài tập: Viết chương trình hiển thị ra các ký tự trong tên của bạn.
// Bài tập 2: Viết chương trình nhập vào từ bạn phím một số nguyên n. 
// Nhập một mảng n ký tự
// và hiển thị các ký tự đã nhập ra màn hình.
// Bài tập 3: Viết một chương trình cho phép thực hiện việc nhập dữ liệu vào mảng ký tự
// Chương trình chỉ dừng lại khi nhập vào giá trị là | hoặc là khi bấm ESC. 


void getcharExample(int n){
    char charArrays[n];
    char letter;
    for (int i = 0; i < n; i++)
    {
        letter = getchar();
        if (letter==27)
        {
            printf("Enter ESC");
        }
        
        charArrays[i]=letter;
    }
   for (int j = 0; j < n; j++)
   {
        printf("Element i =%d %c \r\n",j,charArrays[j]);
   }
   
    
    
}
int main(){
    int n =10;
    // printf("Please enter size of array \r\n");
    // scanf("%d",&n);
    getcharExample(n);
    return 0;
}