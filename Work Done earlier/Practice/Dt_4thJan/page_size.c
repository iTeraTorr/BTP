#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>

int main(void){

    int psize=getpagesize();
    printf("%d\n",psize);
    return 0;
}