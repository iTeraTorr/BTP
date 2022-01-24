#include<stdio.h>
void foo(void);
void print_function_instructions(void * func_ptr, size_t func_len);
void bar(void);

int main(void){
    void *foo_addr=(void*)foo;
    void *bar_addr=(void*)bar;
    print_function_instructions(foo_addr, bar_addr-foo_addr);
    return 0;
}

void foo(void){
    int i=0;
    i+=1;
    printf("i: %d\n",i);
}

void bar(void){}

void print_function_instructions(void * func_ptr, size_t func_len){
    for(unsigned char i=0;i<func_len;i++){
        unsigned char *instructions = (unsigned char*)func_ptr+i;
        printf("%p (%2u): %x\n",func_ptr+i,i,*instructions);
    }
}
//5573f50e26a1
