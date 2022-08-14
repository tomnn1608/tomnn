#include <stdio.h>

int main(){
	int n; 
	float s,i;
	printf("nhap n:");
	scanf("%d",&n); 
    i = 1 ;
	s = 0 ;
	while(i<=n){
		s=s+i;
		i++; 
	} 
	printf("s = %f\n",s);
	return 0; 
} 
