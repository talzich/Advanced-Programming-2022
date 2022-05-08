#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#define DELAY 2

int main()
{
	int new_pid;
	void child_code(), parent_code();

	printf("before: mypid is %d\n", getpid());
	new_pid = fork();
	if(new_pid == -1)
		perror("fork");
	else if(new_pid == 0)
		child_code(DELAY);
	else
		parent_code(new_pid);
	return 0;
}

void child_code(int delay)
{
	sleep(delay);
	printf("child %d done. about to exit\n", getpid());
	exit(10);
}
void parent_code(int childpid)
{
	int status;
	int wait_rv = wait(&status);
	printf("child %d exited with code: %d and rv: %d\n", childpid, status >> 8, wait_rv);
}
