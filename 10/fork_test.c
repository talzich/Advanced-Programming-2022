#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
	fork();
	fork();
	fork();
	printf("Hello\n");
	return 0;
}
