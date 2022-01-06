#include <stdio.h>
#include <stdlib.h>

int square(int n) {
    return n * n;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s n\n", argv[0]);
        exit(-1);
    }
    int n = atoi(argv[1]);
    printf("%d * %d = %d\n", n, n, square(n));
}
