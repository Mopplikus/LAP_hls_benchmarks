#include <HLS/hls.h>

#define NX 30
#define NY 30
#define N 30

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_A;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_s;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_q;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_p;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_r;

component void bicg(mem_A &A, mem_s &s, mem_q &q, mem_p &p, mem_r &r)
{
    int i, j;

  int tmp_q = 0;

  for (i = 0; i < NX; i++)
    {
      tmp_q = q[i];
      for (j = 0; j < NY; j++)
        {
            int tmp =  A[i * N + j];
          s[j] = s[j] + r[i] * tmp;
          tmp_q = tmp_q + tmp * p[j];
        }
       q[i] = tmp_q;

    }
}

void bicg_ref(int A[N][N], int s[N], int q[N], int p[N], int r[N])
{
  int i, j;

  int tmp_q = 0;

  for (i = 0; i < NX; i++)
    {
      tmp_q = q[i];
      for (j = 0; j < NY; j++)
        {
            int tmp =  A[i][j];
          s[j] = s[j] + r[i] * tmp;
          tmp_q = tmp_q + tmp * p[j];
        }
       q[i] = tmp_q;

    }
}

int main(void){
    int A[N * N];
    int s[N];
    int q[N];
    int p[N];
    int r[N];
    int A_ref[N][N];
    int s_ref[N];
    int q_ref[N];
    int p_ref[N];
    int r_ref[N];
    
    for(int y = 0; y < N; ++y){
        s_ref[y] = rand()%100;
        q_ref[y] = rand()%100;
        p_ref[y] = rand()%100;
        r_ref[y] = rand()%100;
        s[y] = s_ref[y];
        q[y] = q_ref[y];
        p[y] = p_ref[y];
        r[y] = r_ref[y];
        for(int x = 0; x < N; ++x){
            A_ref[y][x] = rand()%100;
            A[y * N + x] = A_ref[y][x];
        }
    }

    bicg_ref(A_ref, s_ref, q_ref, p_ref, r_ref);

    mem_A mem_host_A(A, N * N * sizeof(int), false);
	mem_s mem_host_s(s, N * sizeof(int), false);
    mem_q mem_host_q(q, N * sizeof(int), false);
    mem_p mem_host_p(p, N * sizeof(int), false);
	mem_r mem_host_r(r, N * sizeof(int), false);

    ihc_hls_enqueue_noret(&bicg, mem_host_A, mem_host_s, mem_host_q, mem_host_p, mem_host_r);
	ihc_hls_component_run_all(&bicg);

    for(int i = 0; i < N; i++)
    {
        if(q[i] != q_ref[i])
        {
            printf("FAILED\n");
            return 0;
        }
    }

    printf("PASSED\n");
    return 0;
}
