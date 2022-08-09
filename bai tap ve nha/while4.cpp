#include <stdio.h>
int main(){
int n; 
int tmp; 
 int res = 0;
 scanf("%d",&n);
    while(n > 0){
        tmp = n % 10;
        res = res * 10 + tmp;
        n = n / 10;
    }
    printf("\ndao nguoc: %d",res);
}
