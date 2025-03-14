#include<stdio.h>
void struct_exampe(){
    // Định nghĩa một struct Employee
    struct Employee
    {
        int no;
        char name[30];
    };
    // Sủ dụng struct Employee
    struct Employee emp1 = {1,"Nam"};
    struct Employee emp2 = {2,"Nga"};

    printf("Emp 1 - no :%d \r\n",emp1.no);
    printf("Emp 1 - name :%s \r\n",emp1.name);

    printf("Emp 2 - no :%d \r\n",emp2.no);
    printf("Emp 2 - name: %s \r\n",emp2.name);
}
//1. Tạo ra một struct Employee và nhập các thông tin của struct đó từ bàn phím
//2. Tạo ra một struct Employee và nhập các thông tin của struct đó từ bàn phím, lưu dữ liệu về struct đó 
// vào một mảng. Sau đó lấy các thông tin đó ra và hiển thị lên màn hình.

int main(){
    struct_exampe();
    return 0;
}