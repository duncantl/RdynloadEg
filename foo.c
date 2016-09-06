#include <stdlib.h>
#include <stdio.h>

void
foo()
{
 printf("New External foo()\n");fflush(stdout);
}


void
incomplete()
{
 lulu();
}
