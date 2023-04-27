// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.cpp"
# 9 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.cpp"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.h" 1
typedef int in_int_t;
typedef int out_int_t;
typedef int inout_int_t;







void kernel_2mm(in_int_t alpha, in_int_t beta, inout_int_t tmp[10][10], in_int_t A[10][10], in_int_t B[10][10], in_int_t C[10][10], inout_int_t D[10][10]);
# 10 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.cpp" 2

void kernel_2mm(in_int_t alpha, in_int_t beta, inout_int_t tmp[10][10], in_int_t A[10][10], in_int_t B[10][10], in_int_t C[10][10], inout_int_t D[10][10])
{
  int i, j, k;

  for (i = 0; i < 10; i++)
    for (j = 0; j < 10; j++)
      {
 tmp[i][j] = 0;
 for (k = 0; k < 10; ++k)
   tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
  for (i = 0; i < 10; i++)
    for (j = 0; j < 10; j++)
      {
 D[i][j] *= beta;
 for (k = 0; k < 10; ++k)
   D[i][j] += tmp[i][k] * C[k][j];
  }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_kernel_2mm_ir(int, int, int (*)[10], int (*)[10], int (*)[10], int (*)[10], int (*)[10]);
#ifdef __cplusplus
extern "C"
#endif
void kernel_2mm_hw_stub(int alpha, int beta, int (*tmp)[10], int (*A)[10], int (*B)[10], int (*C)[10], int (*D)[10]){
kernel_2mm(alpha, beta, tmp, A, B, C, D);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_kernel_2mm_sw(int alpha, int beta, int (*tmp)[10], int (*A)[10], int (*B)[10], int (*C)[10], int (*D)[10]){
apatb_kernel_2mm_ir(alpha, beta, tmp, A, B, C, D);
return ;
}
#endif
# 29 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/2mm/src/kernel_2mm.cpp"

