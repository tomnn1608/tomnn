#include<stdio.h>
int main(){
    float s=0;
    int n;
    printf("Nhap so n=");
    scanf("%d",&n);
    bool f=false;
    if (n>0){
        f=true;
    for(float i=1;i<=n;i++){
        s=s+1/i;
    }
    }
    else{
        f=false;
    }
    if(f==true){
    printf("Tong S=%f",s);
}
else{
    printf("ERROR");
}
}
 
