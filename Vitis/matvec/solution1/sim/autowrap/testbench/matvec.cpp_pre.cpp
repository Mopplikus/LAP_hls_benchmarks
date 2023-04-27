# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/matvec/src/matvec.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/matvec/src/matvec.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/matvec/src/matvec.h" 1
typedef int in_int_t;
typedef int out_int_t;

int matvec (in_int_t M[30][30], in_int_t V[30], out_int_t Out[30]);
# 2 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/matvec/src/matvec.cpp" 2

int matvec (in_int_t M[30][30], in_int_t V[30], out_int_t Out[30]) {
 int i, j;
 int tmp = 0;

 for (i=0;i<30;i++) {
  tmp = 0;

  for (j=0;j<30;j++) {
   tmp += V[j]* M[i][j];
  }
  Out[i] = tmp;
 }

 return tmp;

}
