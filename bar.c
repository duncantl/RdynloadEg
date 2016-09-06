#include <stdlib.h>
#include <stdio.h>

extern void Rso(void);

void
foo()
{
 printf("Second External foo()\n");fflush(stdout);
 Rso();
}

void
selfReliant()
{
 printf("In selfReliant() (bar.c in T.so)\n"); fflush(stdout);
}
