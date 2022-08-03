#include <stdio.h>
int main(){
	// input a,b,c
	int a,b,c;
	printf("Nhap so a=");
	scanf("%d",&a);
	printf("Nhap so b =");
	scanf("%d",&b);
	printf("Nhap so c=");
	scanf("%d",&c);
	
	 if ( a > b&& a>c) {// a la so lon nhat
	 	printf ( " a la so lon nhat\n");
	 }else
	    if ( b >a&& b>c) {// b la so lon nhat
	    printf (" b la so lon nhat\n");
		}else
		   if(c >a&&c>b) {// c la so lon nhat
		   printf (" c la so lon nhat\n");
		   }
} 
