#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
//Finding the nth prime number

int prime(int n){
    int ans=-1;
    int MAX_SIZE=1000005;
    bool isPrime[MAX_SIZE];
    for(int i=0;i<MAX_SIZE;i++)
        isPrime[i]=true;
    isPrime[1]=false;
    isPrime[0]=false;
    for(int p=2;p*p < MAX_SIZE;p++){
        if(isPrime[p]){
            for(int i=p*p;i<MAX_SIZE;i+=p)
                isPrime[i]=false;
        }
    }
    int cnt=0;
    for(int p=2;p<MAX_SIZE;p++)
        if(isPrime[p]){
            cnt++;
            if(cnt==n){
                ans=p;
                break;
            }
        }
    return ans;
}

int main(int argc, char **argv, char **envp){
    int n;
    FILE *fp=fopen("input.txt","r");
    if(fp == NULL){
        printf("Can't open file for reading\n");
    }else {
        fscanf(fp,"%d",&n);
        printf("%d! = %d\n",n,prime(n));
        fclose(fp);
    }
    return 0;
}