#include <stdio.h>
#include<math.h> 
bool tamgiac(int a,int b,int c){
    if (a+b>c && a+c>b && b+c>a){
        return true;
        }else{ 
        return false;}
    }

int chuvi(int a,int b, int c){
int cv;
  cv=a+b+c;
  return cv;
}

float dientich(int a, int b, int c){
    int p;
    int s;
        p=chuvi(a,b,c)/2;
        s=sqrt(p*(p-a)*(p-b)*(p-c));
        return s;
}
int main(){
   int a,b,c;
  printf("nhap a");
  scanf("%d",&a);
   printf("nhap b");
  scanf("%d",&b);
   printf("nhap c");
  scanf("%d",&c);

  if (tamgiac(a,b,c)){

  int cv=chuvi(a,b,c);
   printf("%d",cv);
   }else{
       printf(" abc khong phai la 3 canh tam giac");
   }
 float s=dientich(a,b,c);
   printf("\ndien tich tam giac la:%.2f",s);
}
   
