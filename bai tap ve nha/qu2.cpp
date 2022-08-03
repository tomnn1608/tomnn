#include <stdio.h>

int main(){
	// input num
	int num;
	printf("Nhap num= ");
	scanf("%d",&num);
	if ( num < 0 ){// num am
	printf ("%d la so am\n",num);
    }else  
	     if (num > 0){// num duong
	     printf ("%d la so duong\n",num);
         }else 
         	if (num == 0){// bang khong
         	printf("%d la so 0\n",num);
			 }	
} 
