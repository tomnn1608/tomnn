#include <stdio.h>
int main(){
	int n;
	int i;  
	int p=0; 
	printf("Nhap so n :"); 
	scanf("%d",&n); 
    for(i=1 ; i<=n ; i++ ){
    	if(n%i==0 ) {
    		p=p+1; 
		}
	}
		if(p==2){
		printf("n la so nguyen to %d",n); 
	}
	}

