#include<stdio.h>
int main(){
	int n;
	int a [10];  
	do{
	printf("nhap so phan tu mang  n:");
	scanf("%d",&n); 
      }while (n<=0 || n>10);
      
      for (int i = 0 ; i<n ; i++){
      	printf("nhap a[%d]",i);
		  scanf("%d",&a[i]); 
       }
       printf("mang sau khi nhap la : \n");
	        for (int i = 0 ; i < n ; i++ ){
	   	         printf("%d \t",a[i]); 
	   }      
	            int  avg , sum=0 ; 
				int dem; 
	             for(int i=0 ; i<n ; i++){
	   	            if(a[i]%2!=0 ){
		            sum = sum + a[i];
					dem++ ;}
					}avg = sum/dem;
					printf("avg=%d",avg); 
					return 0; 
}
