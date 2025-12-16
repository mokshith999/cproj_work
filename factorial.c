

#include "factorial.h"

long factorial(int n) {
    if (n < 0) return -1; // invalid case
    if (n == 0 || n == 1) return 1;
    return n * factorial(n - 1);
}

