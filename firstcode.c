#include <stdio.h>
#include <stdlib.h>
#include <time.h> // For seeding the random number generator

int main() {
    // Seed the random number generator with the current time
    srand(time(NULL));

    // Generate a random number between 0 and RAND_MAX
    int value = rand();

    printf("The Random Value is: %d\n", value);

    // Generate 10 random numbers
    for (int i = 0; i < 10; i++) {
        value = rand();
        printf("%d ", value);
    }

    // Generate random numbers in a specific range (e.g., 0 to N)
    int N = 1000;
    for (int i = 0; i < 10; i++) {
        value = rand() % (N + 1);
        printf("%d ", value);
    }

    // Generate random numbers within a custom range (e.g., between lower_bound and upper_bound)
    int upper_bound = 1000;
    int lower_bound = 100;
    for (int i = 0; i < 10; i++) {
        value = rand() % (upper_bound - lower_bound + 1) + lower_bound;
        printf("%d ", value);
    }

    return 0;
}
