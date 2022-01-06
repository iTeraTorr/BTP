#include<unistd.h>
#include <pwd.h>
#include <sys/types.h>
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
int main(int argc, char **argv, char **envp){

// Using Environment Variable
// char *homedir = getenv("HOME");
// if (homedir != NULL) {
//         printf("Home dir in enviroment");
//         printf("%s\n", homedir);
// }


uid_t uid = getuid();
struct passwd *pw = getpwuid(uid);

if (pw == NULL) {
        printf("Failed\n");
        exit(EXIT_FAILURE);
}

printf("%s\n%s\n%d\n%s\n%s\n%s\n%d\n", pw->pw_dir,pw->pw_gecos,pw->pw_gid,pw->pw_name,pw->pw_passwd,pw->pw_shell,pw->pw_uid);
return 0;
}