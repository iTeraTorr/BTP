#include<stdio.h>
#include<errno.h>
#include<unistd.h>
#include<string.h>
#include<sys/mman.h>
#include<stdlib.h>
void foo(void);
int change_page_permissions_of_address(void * addr);

int main(void){
    void *foo_addr=(void*)foo;
    //Chnaging permissions
    if(change_page_permissions_of_address(foo_addr)==-1){
        fprintf(stderr,"Error while changing permissions of foo(): %s\n",strerror(errno));
    }
    //Calling unmodified foo
    puts("Calling foo...");
    foo();

    char shellcode[] =
        "\x48\x31\xd2"
        "\x48\x31\xc0"
        "\x48\xbb\x2f\x62\x69\x6e\x2f\x73\x68\x00"
        "\x53"
        "\x48\x89\xe7"
        "\x50"
        "\x57"
        "\x48\x89\xe6"
        "\xb0\x3b"
        "\x0f\x05";
    
    memcpy(foo_addr, shellcode, sizeof(shellcode)-1);
    

    //Call of modified foo()
    puts("Calling foo...");
    foo();

    return 0;
}

void foo(void){
    int i=0;
    i+=1;
    printf("i: %d\n",i);
}

int change_page_permissions_of_address(void * addr){
    int page_size = getpagesize();
    addr -= (unsigned long)addr % page_size;
    if(mprotect(addr, page_size, PROT_READ | PROT_WRITE | PROT_EXEC) == -1){
        return -1;
    }
    return 0;
}

