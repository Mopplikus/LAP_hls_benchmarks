# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/jacobi_1d/src/jacobi_1d.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/jacobi_1d/src/jacobi_1d.cpp"






# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/jacobi_1d/src/jacobi_1d.h" 1

typedef int inout_int_t;




int jacobi_1d(inout_int_t A_1[100], inout_int_t A_2[100], inout_int_t B[100]);
# 8 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/jacobi_1d/src/jacobi_1d.cpp" 2



int jacobi_1d(inout_int_t A_1[100], inout_int_t A_2[100], inout_int_t B[100])
{

 int t, i, j;

 for (t = 0; t < 3; t++)
 {

  for (i = 1; i < 100 - 1; i++) {
      B[i] = 3 * (A_1[i-1] + A_1[i] + A_1[i + 1]);
  }

  for (j = 1; j < 100 - 1; j++) {
      A_2[j] = B[j];
  }

 }

 return t;

}
