#include <stdio.h>

int main() {
    // Write C code here
    // khai b?o
    int day, month;
    scanf("%d",&day);
    scanf("%d",&month);
    // code logic
    int dayOfYear = day;
    switch(month){
        case 1:
        //dayOfYear = dayOfYear + day;
            dayOfYear = day;
            break;
        case 2:
            dayOfYear = 31+day;
            break;
        case 3:
            dayOfYear = 31+28+day;
            break;
        case 4:
            dayOfYear = 31+28+31+day;
            break;
        case 5:
            dayOfYear = 31+28+31+30+day;
            break;
        case 6:
            dayOfYear = 31+28+31+30+31+day;
            break;
        case 7:
            dayOfYear = 31+28+31+30+31+30+day;
            break;
        case 8:
            dayOfYear = 31+28+31+30+31+30+31+day;
            break;
        case 9:
            dayOfYear = 31+28+31+30+31+30+31+31+day;
            break;
        case 10:
            dayOfYear = 31+28+31+30+31+30+31+31+30+day;
            break;
        case 11:
            dayOfYear = 31+28+31+30+31+30+31+31+30+31+day;
            break;
        case 12:
            dayOfYear = 31+28+31+30+31+30+31+31+30+31+30+day;
            break;
        default:
            printf("Our of Range");
            break;
    }
    printf("Day of year: %d \n",dayOfYear);

    switch(dayOfYear%7){
        case 0: 
            printf("Chu nhat");
            break;
        case 1: 
            printf("Thu 2");
            break;
        case 2: 
            printf("Thu 3");
            break;
        case 3: 
            printf("Thu 4");
            break;
        case 4: 
            printf("Thu 5");
            break;
        case 5: 
            printf("Thu 6");
            break;
        case 6: 
            printf("Thu 7");
            break;
    }
    // tra ve gia tri 

    return 0;
}
