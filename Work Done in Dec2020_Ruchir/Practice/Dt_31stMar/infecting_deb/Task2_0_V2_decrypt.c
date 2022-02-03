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
    
    if(argc!=4){
        fprintf(stdout,"Usage: %s <file_to_decrypt> <location_to_place_decrypted_file> <password>\n",argv[0]);
        exit(2);
    }

    FILE *finput=fopen(argv[1],"r");
    if(finput==NULL){
        printf("Input file do not exist\n");
        fclose(finput);
        exit(1);
    }

    FILE *foutput=fopen(argv[2],"w");
    if(foutput==NULL){
        printf("Output file do not exist\n");
        fclose(foutput);
        exit(1);
    }
    int ch;
    while((ch = fgetc(finput)) != EOF){
        int pass=atoi(argv[3]);
        ch-=pass;
        if(ch<0)
            ch=256+ch;
        fprintf(foutput,"%c",(char)ch);
    }
    printf("Decrypted at %s\n",argv[2]);
    fclose(foutput);
    fclose(finput);
    return 0;
}