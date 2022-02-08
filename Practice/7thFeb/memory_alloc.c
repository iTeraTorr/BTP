#include<stdlib.h>
#include<stdio.h>
int f(int a, int b){
int c=a+b;
return c;
}
int main(){
    int *p=malloc(2*sizeof(int));
    int a=2,b=3;
    p[0]=23;
    p[1]=24;
    
    printf("Hello numbers: %d and %d and %d\n",p[0],p[1],f(a,b));
    free(p);
    return 0;
}