#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char* argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Nincs paraméter\n");
        exit(1);
    }

    int t = atoi(argv[1]);

    while (t--) {
        sleep(1);
    }

    printf("\n");
    return 0;
}
