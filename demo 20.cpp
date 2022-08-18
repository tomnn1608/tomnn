#include<stdio.h>
#include<stdlib.h>
#include<math.h> 

int main(){
int n;
printf("nhap so phan tu :",n); 
scanf("%d",&n);
  int x=0;
  int a[n];
  for(int i=0;i<n;i++){
  	printf("a[%d]",i);
  	scanf("%f",&a[i]);
  }
     for(int i=0 ; i < n ;){
	   if(abs(a[i])>x){
		x =abs(a[i]);
		}
	 }
	  printf ("\n [%d , %d]",-x,x);
}
  
