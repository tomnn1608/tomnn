#include<stdio.h>
int main(){
    int n;
    printf("Nhap so mang n=");
    scanf("%d",&n);
    int ary[n];
    for(int i=0;i<n;i++){
        scanf("%d",&ary[i]);
        }
        printf("Cac gia tri dao nguoc la ");
        for(int i=n-1;i>=0;i--){
            printf("%d ",ary[i]);
    }
}
