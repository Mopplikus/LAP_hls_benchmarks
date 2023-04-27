// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
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
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_jacobi_1d_ir(int *, int *, int *);
#ifdef __cplusplus
extern "C"
#endif
int jacobi_1d_hw_stub(int *A_1, int *A_2, int *B){
int _ret = jacobi_1d(A_1, A_2, B);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_jacobi_1d_sw(int *A_1, int *A_2, int *B){
int _ret = apatb_jacobi_1d_ir(A_1, A_2, B);
return _ret;
}
#endif
# 31 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/jacobi_1d/src/jacobi_1d.cpp"

