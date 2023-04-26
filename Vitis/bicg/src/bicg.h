typedef int in_int_t;
typedef int inout_int_t;

#include <stdlib.h>
#include <stdio.h>

#define NX 30
#define NY 30
#define N 30

int bicg(in_int_t A[N][N], inout_int_t s[N], inout_int_t q[N], in_int_t p[N], in_int_t r[N]);
int bicg_cont(in_int_t A[N][N], inout_int_t s[N], inout_int_t q[N], in_int_t p[N], in_int_t r[N]);
