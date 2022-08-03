#include <stdio.h>
int main(){
	// input a,b 
	int a,b;
	printf("Nhap so a=");
	scanf("%d",&a);
	
	printf("Nhap so b=");
	scanf("%d",&b);
	
	if ( a>b){ // a lon hon b
	printf("a lon hon b\n");
	} else 
	    if ( b > a){// b lon hon a
		printf("b lon hon a\n");
	}
	
	
}
