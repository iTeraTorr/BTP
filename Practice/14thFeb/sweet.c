#include <stdio.h>

int main(){
	printf("Sweet world!\n");
	goto INFECT;
	int a=2, b=3;
	printf("This will not be printed.");
INFECT:
	printf("Welcome back\n");
	return 0;
}
