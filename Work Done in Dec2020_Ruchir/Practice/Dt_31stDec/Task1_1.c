#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv, char **envp){
FILE *fp;
if(access("text.txt",F_OK)==0){
    remove("text.txt");
}

fp=fopen("text.txt","a");

while(1){
    fprintf(fp,"%s\n","This is a string.");
}
fclose(fp);
return 0;
}