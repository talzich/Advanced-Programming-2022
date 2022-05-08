#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
	char *arglist[3];
	arglist[0] = "ls";
	arglist[1] = "-l";
	arglist[2] = 0;
	printf("About to execute ls\n");
	execvp("ls", arglist);
	printf("finished\n");
	return 0;
}
