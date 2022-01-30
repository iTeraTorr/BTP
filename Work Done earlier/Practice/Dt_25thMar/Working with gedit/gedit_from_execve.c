#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int
main(int argc, char **argv) {
	char *args[] = {"gedit", 0};
	char *env[] = { "DISPLAY=:0", 0 };
	// char *env[] = { 0 };

	printf("About to run /usr/bin/gedit\n");
	execve("/usr/bin/gedit", args, env);
	perror("execve");
	exit(1);
}