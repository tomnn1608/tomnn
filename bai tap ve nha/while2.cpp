#include <stdio.h>
int main(){
	int n; 
	scanf("%d",&n);
	int max = 0; 
	for(int i=0 ; i<n ; i++){
		if(i%2==0 && i%3==0){
			max = i ; 
			 }
		}
	printf("max: %d",max); 
}
