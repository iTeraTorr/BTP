#include<stdio.h>
void printName(char *str){
printf("Your name is %s\n",str);
}
int main(int argc, char**argv){
    int a=6;
    int b;
    char str[20];
    printf("Enter you name: ");
    scanf("%s",str);
    printf("Hello World! %d\n",a);
    printName(str);
}