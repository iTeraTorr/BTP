#include<bits/stdc++.h>
#define V vector<int>
#define VV vector<V>
using namespace std;

void takeInput(int *n, int*m){
cout<<"Enter row count: ";
cin>>*n;
cout<<"Enter column count: ";
cin>>*m;
}
void fillRight(int n, int m, VV &matrix, int &r, int &c, int &i){
    for(;c<m && matrix[r][c]==-1;c++){
        matrix[r][c]=i++;
    }
    r++;
    c--;
}
void fillDown(int n, int m, VV &matrix, int &r, int &c, int &i){
    for(;r<n && matrix[r][c]==-1;r++){
        matrix[r][c]=i++;
    }
    c--;
    r--; 
}
void fillLeft(int n, int m, VV &matrix, int &r, int &c, int &i){
    for(;c>=0 && matrix[r][c]==-1;c--){
        matrix[r][c]=i++;
    }
    r--;
    c++;
}
void fillUp(int n, int m, VV &matrix, int &r, int &c, int &i){
    for(;r>=0 && matrix[r][c]==-1;r--){
        matrix[r][c]=i++;
    }
    c++;
    r++;
}
void printMatrix(VV &matrix, int &n, int &m){

    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            cout<<matrix[i][j]<<"  ";
        }
        cout<<endl;
    }
}
int main(){
int n,m;
takeInput(&n,&m);

VV matrix(n,V(m,-1));

int i=1;

int r=0,c=0;
while(i<=n*m){
    fillRight(n,m,matrix,r,c,i);
    fillDown(n,m,matrix,r,c,i);
    fillLeft(n,m,matrix,r,c,i);
    fillUp(n,m,matrix,r,c,i);
}

printMatrix(matrix,n,m);

// int *a= new int(10);
int *a=(int*)malloc(32);
a[0]=5;
return 0;
}