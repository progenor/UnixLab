#include <stdio.h>

extern char ** environ;

int main( int argc, char * argv[] )
{
	int i;	
	for (i=0; i< argc;i++)
		printf ("%s\n",*argv++);

    printf ("A környezeti változók:\n");

	for ( ; *environ != NULL; environ++){
		printf ("%s\n",*environ);
	}	

	return 0;
}	
	
