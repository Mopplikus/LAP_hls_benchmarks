// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp"
# 9 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.h" 1
typedef int in_int_t;
typedef int out_int_t;
typedef int inout_int_t;
# 12 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.h"
void kernel_3mm(in_int_t A[10][10], in_int_t B[10][10], in_int_t C[10][10], in_int_t D[10][10], inout_int_t E[10][10], inout_int_t F[10][10], out_int_t G[10][10]);
# 10 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp" 2

void kernel_3mm(in_int_t A[10][10], in_int_t B[10][10], in_int_t C[10][10], in_int_t D[10][10], inout_int_t E[10][10], inout_int_t F[10][10], out_int_t G[10][10])


{
  int i, j, k;

  for (i = 0; i < 10; i++)
    for (j = 0; j < 10; j++)
      {
 E[i][j] = 0;
 for (k = 0; k < 10; ++k)
   E[i][j] += A[i][k] * B[k][j];
      }

  for (i = 0; i < 10; i++)
    for (j = 0; j < 10; j++)
      {
 F[i][j] = 0;
 for (k = 0; k < 10; ++k)
   F[i][j] += C[i][k] * D[k][j];
      }
  for (i = 0; i < 10; i++)
    for (j = 0; j < 10; j++)
      {
 G[i][j] = 0;
 for (k = 0; k < 10; ++k)
   G[i][j] += E[i][k] * F[k][j];
      }

}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_kernel_3mm_ir(int (*)[10], int (*)[10], int (*)[10], int (*)[10], int (*)[10], int (*)[10], int (*)[10]);
#ifdef __cplusplus
extern "C"
#endif
void kernel_3mm_hw_stub(int (*A)[10], int (*B)[10], int (*C)[10], int (*D)[10], int (*E)[10], int (*F)[10], int (*G)[10]){
kernel_3mm(A, B, C, D, E, F, G);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_kernel_3mm_sw(int (*A)[10], int (*B)[10], int (*C)[10], int (*D)[10], int (*E)[10], int (*F)[10], int (*G)[10]){
apatb_kernel_3mm_ir(A, B, C, D, E, F, G);
return ;
}
#endif
# 40 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/3mm/src/kernel_3mm.cpp"

