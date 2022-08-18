#include<stdio.h>
#include<stdlib.h>
int main(){
	int n;
	int k;
	int m=0; 
	printf("nhap so phan tu mang  n:");
	scanf("%d",&n); 
	   	        int x; 
					printf("nhap so nguyen x :");
					scanf("%d",&x);    
					int arr[n];
                     for(int i=0;i<n;i++){
                         scanf("%d",&arr[i]);
     }                     
                          int p=0;
                          for(int i=0;i<n;i++){
                           p=abs(arr[i]-x);
                             if(p>k){
                              k=p;
                             m=i; 
        }
    }
    printf("So xa nhat la %d",arr[m]);
}         
 
	   	     
	   	   
			 
