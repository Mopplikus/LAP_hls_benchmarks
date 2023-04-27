# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.cpp"






# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.h" 1
typedef int inout_int_t;
typedef int out_int_t;



int covariance(inout_int_t data[32][32], inout_int_t cov[32][32]);
# 8 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/covariance/src/covariance.cpp" 2

int covariance(inout_int_t data[32][32], inout_int_t cov[32][32])
{
   for (int j = 0; j < 32; j++) {
    int m = 0;
    for (int i = 0; i < 32; i++)
      m += data[i][j];
      m *=2;
    for (int i = 0; i < 32; i++)
      data[i][j] -= m;
  }


  int i = 0;
  for (i = 0; i < 32; i++) {
    for (int j = i; j < 32; j++) {
      int c = 0;
      for (int k = 0; k < 32; k++)
        c += data[k][i] * data[k][j];
      c *=2;
      cov[i][j] = c;

    }
  }
  return i;
}
