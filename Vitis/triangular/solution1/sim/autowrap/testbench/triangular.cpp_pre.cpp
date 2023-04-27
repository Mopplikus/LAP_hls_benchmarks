# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.h" 1
typedef int in_int_t;
typedef int inout_int_t;

int triangular( in_int_t x[100], inout_int_t A[100][100] , in_int_t n);
# 2 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/triangular/src/triangular.cpp" 2




int triangular( in_int_t x[100], inout_int_t A[100][100] , in_int_t n) {
 int i;
    for (i=n-1; i>=0; i--) {

     for (int k=i-1;k>=0; k--) {
            A[k][n] -= A[k][i] * x[i];
        }
 }

 return i + n;
}
