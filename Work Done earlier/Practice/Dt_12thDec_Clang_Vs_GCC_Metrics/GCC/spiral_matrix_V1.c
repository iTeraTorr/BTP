#include<stdio.h>
#include <stdlib.h>
#include<time.h>
void takeInput(int *n, int*m){
printf("Enter row count: ");
scanf("%d", n);
printf("Enter column count: ");
scanf("%d", m);
}

void fill(int n, int m, int ***matrix, int *r, int *c, int *i, int mode){
    switch(mode)
    {
        case 1:
            for(;*c<m && (*matrix)[*r][*c]==-1;(*c)++){
                (*matrix)[*r][*c]=(*i)++;
            }
            (*r)++;
            (*c)--;
            break;
        case 2:
            for(;*r<n && (*matrix)[*r][*c]==-1;(*r)++){
                (*matrix)[*r][*c]=(*i)++;
            }
            (*c)--;
            (*r)--; 
            break;
        case 3:
            for(;*c>=0 && (*matrix)[*r][*c]==-1;(*c)--){
                (*matrix)[*r][*c]=(*i)++;
            }
            (*r)--;
            (*c)++;
            break;
        case 4:
            for(;*r>=0 && (*matrix)[*r][*c]==-1;(*r)--){
                (*matrix)[*r][*c]=(*i)++;
            }
            (*c)++;
            (*r)++;
    }
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
clock_t t; 
t = clock();
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
    for(int k=1;k<=4;k++)
        fill(n,m,&matrix,&r,&c,&i,k);
}

printMatrix(&matrix,n,m);

for(int i=0;i<n;i++){
    free(matrix[i]);
}
free(matrix);
t = clock() - t;
double time_taken = ((double)t)/CLOCKS_PER_SEC;
printf("Program took %f seconds to execute \n", time_taken);
return 0;
}