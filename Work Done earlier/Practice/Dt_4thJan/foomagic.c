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

    //Changing the immediate value in the addl instruction in foo() to 42
    unsigned char *instruction=(unsigned char*)foo_addr + 18;
    *instruction =0x2A;

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
//5573f50e26a1
