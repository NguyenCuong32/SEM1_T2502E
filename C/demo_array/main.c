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
// Bài tập: Viết chương trình hiển thị ra các ký tự trong tên của bạn.
int main(){
   
    countVowels();
    return 0;
}