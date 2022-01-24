#include<stdio.h>

int main(){

    unsigned int i=1;
    char *c=(char*)(&i+1);
    if(*c)
    printf("Little Endian\n");
    else
    {
        printf("Big Endian\n");
    }
    return 0;
    

}