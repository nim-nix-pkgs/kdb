#include <stddef.h>
#include "k.h"

K km(int months) {
    K k = ki(months);
    k->t = -KM;
    return k;
}

K kmi(int minutes) {
    K k = ki(minutes);
    k->t = -KU;
    return k;
}

K kse(int seconds) {
    K k = ki(seconds);
    k->t = -KV;
    return k;
}

K kerr(char* x) {
    K k = ks(x);
    k->t = -128;
    return k;
}

void check_c_struct_offset() {
    printf("C-struct-offset:\n");
    printf("  m: %ld\n", offsetof(struct k0, m));
    printf("  a: %ld\n", offsetof(struct k0, a));
    printf("  t: %ld\n", offsetof(struct k0, t));
    printf("  u: %ld\n", offsetof(struct k0, u));
    printf("  r: %ld\n", offsetof(struct k0, r));
    printf("  k: %ld\n", offsetof(struct k0, k));
    printf("  n: %ld\n", offsetof(struct k0, n));
    printf(" g0: %ld\n", offsetof(struct k0, G0));
}
