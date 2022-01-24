#include <signal.h>
#include <stdio.h>
#include <string.h>
int main(){
	char givenPassword[20];
	char realPassword[20];

	strncpy(realPassword, "ddddddddddddddd", 20);
	gets(givenPassword); //Note: it is different from fgets (which is much safer). Use of gets() should be avoided, bcoz it does not check for the size of input matches to the size of buffer or not. Hence it is also termed as unbounded functions.
	//Try entering 'a' 52 times
	
	if (0 == strncmp(givenPassword, realPassword, 20)){
		printf("SUCCESS!\n");
	}else{
		printf("FAILURE!\n");
	}
	raise(SIGINT);
	printf("givenPassword: %s\n", givenPassword);
	printf("realPassword: %s\n", realPassword);
	return 0;
}