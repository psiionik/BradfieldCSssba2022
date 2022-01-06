#include <stdio.h>

int main() {
    char ascii = 'a';

    for (int i = 0; i < 26; i++) {
        printf("Character is: %c\n", ascii + i);
    }

    return 0;
}
