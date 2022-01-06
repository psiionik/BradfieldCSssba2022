#include <stdio.h>

int main() {
    unsigned long value = 0;
    value = 1L << 63;
    
    printf("1 << 63 = %lu\n", value);
    printf("1 << 64 = %lu\n", value << 1); 

    printf("Size of uintptr_t %d\n", sizeof(uintptr_t));

    return 0;
}
