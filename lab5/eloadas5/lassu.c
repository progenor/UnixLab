#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main( int argc, char * argv[] )
{
	char c = '?';

    if (argc>1) {
        c = *argv[1];
    }

    while (1) {
        fprintf(stdout, "%c ", c);
        fflush(stdout);
        sleep(1);
    }
 
}	
