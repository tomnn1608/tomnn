#include<stdio.h>
#include<stdlib.h>
#include<math.h> 

int main(){
    int n;
    printf("nhap so phan tu:");
    scanf("%d",&n);
    float a[100];
    for(int i = 0 ; i < n ; i++){
    	printf("[%d] :",i);
    	scanf("%f",&a[i]);
	}  
		
	float max=a[0];
	for(int i=0 ; i < n ; i ++){
		if (max = a[i]>max){
			max = a[i];
		}
	}
	float min=a[0];
	for(int i=0 ; i < n ; i ++){
		if(min=a[i]){
			min = a[i];
		}
	}
	printf("\n [%.3f , %.3f]",min,max);
	return 0;
}
