#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 32

using namespace ihc;

typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_data;
typedef ihc::mm_host<int, ihc::dwidth<32>,
                          ihc::awidth<32>,
                          ihc::latency<1> > mem_cov;

component void covariance(mem_data &data, mem_cov &cov)
{
  for (int j = 0; j < N; j++) {
      int m =0;// 0.0f;
      for (int i = 0; i < N; i++)
      {
        m += data[i * N + j];
      }
      m *=2;///= 0.73f;
        
      for (int i = 0; i < N; i++)
        data[i * N + j] -= m;
    }

    for (int i = 0; i < N; i++) {
      for (int j = i; j < N; j++) {
        int c = 0;//0.0f;
        for (int k = 0; k < N; k++)
        {
            c += data[k * N + i] * data[k * N + j];
        }
        c *=2;// /= -0.27f;
        cov[i * N + j] = c;
      }
    }
}

void covariance_ref(int data[N][N], int cov[N][N])
{
  for (int j = 0; j < N; j++) {
      int m =0;// 0.0f;
      for (int i = 0; i < N; i++)
      {
        m += data[i][j];
      }
      m *=2;///= 0.73f;
        
      for (int i = 0; i < N; i++)
        data[i][j] -= m;
    }

    for (int i = 0; i < N; i++) {
      for (int j = i; j < N; j++) {
        int c = 0;//0.0f;
        for (int k = 0; k < N; k++)
        {
            c += data[k][i] * data[k][j];
        }
        c *=2;// /= -0.27f;
        cov[i][j] = c;
      }
    }
}

int main(void){
	int data[N * N];
  int cov[N * N];
  int data_ref[N][N];
  int cov_ref[N][N];

  srand(9);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      data_ref[i][j] = rand();
      data[i * N + j] = data_ref[i][j];
      cov_ref[i][j] = rand();
      cov[i * N + j] = cov_ref[i][j];
    }
  }

  covariance_ref(data_ref, cov_ref);

  mem_data mem_host_data(data, N * N * sizeof(int), false);
	mem_cov mem_host_cov(cov, N * N * sizeof(int), false);

  ihc_hls_enqueue_noret(&covariance, mem_host_data, mem_host_cov);
	ihc_hls_component_run_all(&covariance);

  for(int i = 0; i < N; i++)
  {
    for(int j = 0; j < N; j++)
    {
        if(cov[i * N + j] != cov_ref[i][j])
        {
            printf("FAILED\n");
            return 0;
        }
    }
  }
  
  printf("PASSED\n");

  return 0;
}

