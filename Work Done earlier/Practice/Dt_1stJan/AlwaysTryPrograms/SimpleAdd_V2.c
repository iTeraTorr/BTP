#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv, char **envp){
    int a,b;
    FILE *fp=fopen("input.txt","r");
    if(fp == NULL){
        printf("Can't open file for reading\n");
    }else {
        fscanf(fp,"%d%d",&a,&b);
        printf("%d + %d = %d\n",a,b,a+b);
        fclose(fp);
    }
    return 0;
}