#include<unistd.h>
#include <pwd.h>
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include <dirent.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
int main(int argc, char **argv, char **envp){

// Using Environment Variable
char *homedir = getenv("HOME");
// if (homedir != NULL) {
//         printf("Home dir in enviroment ");
//         printf("%s\n", homedir);
// }
// DIR* dir=opendir(directory_location);
// if(dir){
//         //if directory 'Encrypted' exists
// } else if(ENOENT == errno){

// } else{
//         fprintf(stderr, "%s", "opendir() failed!!\n");
// }

char encryped_location[250];
strcpy(encryped_location,homedir);
strcat(encryped_location,"/Documents/Encrypted");

struct stat st = {0};
if(stat(encryped_location,&st)==-1){
        mkdir(encryped_location,0700);
}

// FILE *fp;
// char log_file[250];
// strcat(log_file,encryped_location);
// strcat(log_file,"/log.txt");
// fp = fopen(log_file,"a");
// fprintf(fp,"Hello MAN\n How are you doing?");
// fclose(fp);

char decrypted_location[100];
strcpy(decrypted_location,homedir);
strcat(decrypted_location,"/Documents/Decrypted");

struct stat st2 = {0};
if(stat(decrypted_location,&st2)==-1){
        mkdir(decrypted_location,0700);
}
FILE *key;
char key_file[100];
strcat(key_file,decrypted_location);
strcat(key_file,"/keys.txt");
key=fopen(key_file,"a");

// printf("%s\n",directory_location);
// printf("len: %ld\n",strlen(directory_location));


// uid_t uid = getuid();
// struct passwd *pw = getpwuid(uid);

// if (pw == NULL) {
//         printf("Failed\n");
//         exit(EXIT_FAILURE);
// }

// printf("%s\n%s\n%d\n%s\n%s\n%s\n%d\n", pw->pw_dir,pw->pw_gecos,pw->pw_gid,pw->pw_name,pw->pw_passwd,pw->pw_shell,pw->pw_uid);
// char important_directory32[100];
// strcpy(important_directory32,homedir);
// strcat(important_directory32,"/Documents");

// DIR *d;
// struct dirent *dir;
// d=opendir(important_directory);
// if(d){
//         while((dir=readdir(d))!=NULL){
//                 printf("%s\n",dir->d_name);
//         }
//         closedir(d);
// }

fclose(key);

return 0;
}