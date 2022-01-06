#include <stdlib.h>	/* needed to define exit() */
#include <unistd.h>	/* needed to define getpid() */
#include <stdio.h>	/* needed for printf() */

int
main(int argc, char **argv) {
	char *args[] = {"gedit", 0};	/* each element represents a command line argument */

	printf("About to run gedit\n");
	execvp("/usr/bin/gedit", args);
	perror("execvp");	/* if we get here, execvp failed */
	exit(1);
}