#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define N 32

#define AMOUNT_OF_TEST 1

int covariance(int data[N][N], int cov[N][N])
{
   for (int j = 0; j < N; j++) {
    int m = 0;//0.0f;
    for (int i = 0; i < N; i++)
      m += data[i][j];
      m *=2;///= 0.73f;
    for (int i = 0; i < N; i++)
      data[i][j] -= m;
  }


  int i = 0;
  for (i = 0; i < N; i++) {
    for (int j = i; j < N; j++) {
      int c = 0;//0.0f;
      for (int k = 0; k < N; k++)
        c += data[k][i] * data[k][j];
      c *=2;///= -0.27f;
      cov[i][j] = c;
      //cov[j][i] = c;
    }
  }
  return i;
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
      cov_[i][j] = cov_[i][j];
    }
  }

  {
    for (int j = 0; j < N; j++) {
      int m =0;// 0.0f;
      for (int i = 0; i < N; i++)
        m += data[i][j];
      m *=2;///= 0.73f;
      for (int i = 0; i < N; i++)
        data[i][j] -= m;
    }

    for (int i = 0; i < N; i++) {
      for (int j = i; j < N; j++) {
        int c = 0;//0.0f;
        for (int k = 0; k < N; k++)
          c += data[k][i] * data[k][j];
        c *=2;// /= -0.27f;
        cov[i][j] = c;
        cov[j][i] = c;
      }
    }
  }

  covariance(data_, cov_);
}

