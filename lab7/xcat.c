#include <stdio.h>
#include <stdlib.h>
/*
 * egyszerű C program az exit() függvény
 * kilépési kódjának bemutatására
 *
 */

int main(int argc, char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "nincs fájlnév\n");
        exit(1);  // nincs paraméter
    }

    FILE* fp;
    fp = fopen(argv[1], "r");

    if (fp == NULL) {  // nem lehet megnyitni a fájlt
        fprintf(stderr, "nem lehet megnyitni a fájlt\n");
        exit(2);
    }

    char buff[1024];
    while (fgets(buff, 1024, fp) != NULL) {
        printf("%s", buff);
    }

    if (ferror(fp)) {  // hiba olvasás közben
        fprintf(stderr, "fájl olvasási hiba\n");
        exit(3);
    }

    fclose(fp);
    return 0;
}
