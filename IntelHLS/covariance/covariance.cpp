#include <HLS/hls.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 32

using namespace ihc;

component void covariance(int data[N][N], int cov[N][N])
{
    hls_memory hls_singlepump int data_local[N][N];
    hls_memory hls_singlepump int cov_local[N][N];

    INIT:for(int i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            data_local[i][j] = data[i][j];
            cov_local[i][j] = cov[i][j];
        }
    }

   WORK_1:for (int j = 0; j < N; j++) {
    int m = 0;
    for (int i = 0; i < N; i++)
    {
        m += data_local[i][j];
    }
    m *=2;
      
    for (int i = 0; i < N; i++)
    {
        data_local[i][j] -= m;
    }      
  }

  int i = 0;
  WORK_J:for (i = 0; i < N; i++) {
    for (int j = i; j < N; j++) {
      int c = 0;//0.0f;
      for (int k = 0; k < N; k++)
      {
        c += data_local[k][i] * data_local[k][j];
      }
      c *=2;///= -0.27f;
      cov_local[i][j] = c;
    }
  }

    OUT:for(i = 0; i < N; i++)
    {
        for(int j = 0; j < N; j++)
        {
            cov[i][j] = cov_local[i][j];
        }
    }
}

int main(void){
	int data[N][N];
  int cov[N][N];
  int data_[N][N], cov_[N][N];

  srand(9);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      data[i][j] = rand();
      data_[i][j] = data[i][j];
      cov[i][j] = rand();
      cov_[i][j] = cov[i][j];
    }
  }

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

  covariance(data_, cov_);

  for(int i = 0; i < N; i++)
  {
    for(int j = 0; j < N; j++)
    {
        if(cov[i][j] != cov_[i][j])
        {
            printf("%d\n", cov[i][j]);
            printf("%d\n", cov_[i][j]);
            printf("FAILED\n");
            return 0;
        }
    }
  }
  
  printf("PASSED\n");

  return 0;
}

