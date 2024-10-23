#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main( int argc, char * argv[] )
{
    if (argc==1) {
        exit(1);
    }

    int c = atoi(argv[1]);

    while (c--) {
        sleep(1);
      printf("%i \n", c);
    }
 
}	
