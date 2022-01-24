#include<stdio.h>
#include <stdlib.h>

void takeInput(int *n, int*m){
printf("Enter row count: ");
scanf("%d", n);
printf("Enter column count: ");
scanf("%d", m);
}
void fillRight(int n, int m, int ***matrix, int *r, int *c, int *i){
    for(;*c<m && (*matrix)[*r][*c]==-1;(*c)++){
        (*matrix)[*r][*c]=(*i)++;
    }
    (*r)++;
    (*c)--;
}
void fillDown(int n, int m, int ***matrix, int *r, int *c, int *i){
    for(;*r<n && (*matrix)[*r][*c]==-1;(*r)++){
        (*matrix)[*r][*c]=(*i)++;
    }
    (*c)--;
    (*r)--; 
}
void fillLeft(int n, int m, int ***matrix, int *r, int *c, int *i){
    for(;*c>=0 && (*matrix)[*r][*c]==-1;(*c)--){
        (*matrix)[*r][*c]=(*i)++;
    }
    (*r)--;
    (*c)++;
}
void fillUp(int n, int m, int ***matrix, int *r, int *c, int *i){
    for(;*r>=0 && (*matrix)[*r][*c]==-1;(*r)--){
        (*matrix)[*r][*c]=(*i)++;
    }
    (*c)++;
    (*r)++;
}
void printMatrix(int ***matrix, int n, int m){

    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            printf("%d  ",(*matrix)[i][j]);
        }
        printf("\n");
    }
}
int main(){
int n,m;
takeInput(&n,&m);

int **matrix=(int **)malloc(n*sizeof(int *));
for(int i=0;i<n;i++){
    matrix[i]=(int *)malloc(m*sizeof(int));
    for(int j=0;j<m;j++){
        matrix[i][j]=-1;
    }
}
int i=1;

int r=0,c=0;

while(i<=n*m){
    fillRight(n,m,&matrix,&r,&c,&i);
    fillDown(n,m,&matrix,&r,&c,&i);
    fillLeft(n,m,&matrix,&r,&c,&i);
    fillUp(n,m,&matrix,&r,&c,&i);
}


printMatrix(&matrix,n,m);

for(int i=0;i<n;i++){
    free(matrix[i]);
}
return 0;
}