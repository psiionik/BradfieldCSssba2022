#include <stdio.h>
#include <time.h>

int main() {
    
    clock_t start = clock();

    int x = 2;
    int y = 10;
    for (int i = 0; i < 1000000000; i++) {
        x = x / y;
    }

    float seconds = (float)(clock() - start) / CLOCKS_PER_SEC;
    float operations = 1000000000 / seconds;

    printf("Clock speed approx %.3f GHz\n", operations / 1000000000.0);

    return 0;
}
