#include <stdio.h>
#include <unistd.h>
#include <signal.h>
/*
SIGABRT – abnormal termination.
SIGFPE – floating point exception.
SIGILL – invalid instruction.
SIGINT – interactive attention request sent to the program.
SIGSEGV – invalid memory access.
SIGTERM – termination request sent to the program.
*/
void sigintHandler(int sig_num){
    signal(SIGINT, sigintHandler);
    printf("\nCannot be terminated using Ctrl+C \n");
    fflush(stdout);
}

int main(int argc, char **argv, char **envp){

FILE *fp;
if(access("text.txt",F_OK)==0){
    remove("text.txt");
}

fp=fopen("text.txt","a");

signal(SIGINT, sigintHandler);

while(1){
    fprintf(fp,"%s\n","This is a string.");
}
fclose(fp);
return 0;

}