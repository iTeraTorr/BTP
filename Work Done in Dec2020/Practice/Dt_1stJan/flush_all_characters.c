#include <unistd.h>
#include <pwd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <dirent.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char **argv, char **envp){
    FILE *fp = fopen("text.txt","a");
    for(int i=0;i<130;i++){
        fprintf(fp,"%c",(char)i);
    }
    fclose(fp);
}