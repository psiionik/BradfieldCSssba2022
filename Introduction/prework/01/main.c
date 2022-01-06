#include <stdio.h>
#include <time.h>

int main() {
    
    clock_t start = clock();

    for (int i = 0; i < 10000000; i++) {
    }

    float seconds = (float)(clock() - start) / CLOCKS_PER_SEC;
    float operations = 10000000 / seconds;

    printf("Clock speed approx %.3f GHz\n", operations / 1000000000.0);

    return 0;
}
