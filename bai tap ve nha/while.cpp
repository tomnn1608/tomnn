#include <stdio.h>
int main(){
	int n;
	printf("nhap n>0:");
	scanf("%d",&n);
	if("n<=0"){
		printf("nhap n > 0 \n");
	}
	int i;
	for ( i=1 ; i<n ; i+=2){
    	printf("%d\n",i);
    }
		return 0;
	} 

