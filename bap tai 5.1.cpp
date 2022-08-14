#include <stdio.h> 
int main(){
	int n;
	int gt;
	do{
	printf("nhap n>0 :");
	scanf("%d",&n);} 
	while(n<0);
	gt = 1;
	for(int i=1 ; i <=n ; i++){
		gt = gt * i; }
	printf("gt = %d",gt);
	return 0;  
} 
