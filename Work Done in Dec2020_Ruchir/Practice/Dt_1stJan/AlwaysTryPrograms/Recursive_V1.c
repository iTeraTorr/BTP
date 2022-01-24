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
    scanf("%d",&n);
    printf("%d! = %d\n",n,factorial(n));
    return 0;
}