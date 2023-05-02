#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - the program loops infinitely
 *
 * Return: 0 always success
 */
int infinite_while(void)
{
        while (1)
        {
		sleep(1);
	}
	return (0);
}

/**
 * main - program entry point
 *
 * Return: 5 zombie processes
 */
int main(void)
{
	int count;
	pid_t zombie;

	for (count = 0; count < 5; count++)
	{
		zombie = fork();
		if (!zombie)
			return (0);
		printf("Zombie process created, PID: %d\n", zombie);
	}
	infinite_while();
	return (0);
}
