#include <stdio.h>
#include <stdlib.h>

int factorial(int n){
    if(n==1 || n==0){
        return (int)1;
    }
    return n*factorial(n-1);
}
int main(int argc, char **argv, char **envp){
    int n;
    FILE *fp=fopen("input.txt","r");
    if(fp == NULL){
        printf("Can't open file for reading\n");
    }else {
        fscanf(fp,"%d",&n);
        printf("%d! = %d\n",n,factorial(n));
        fclose(fp);
    }
    return 0;
}