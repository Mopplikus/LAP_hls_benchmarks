// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.cpp"



# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.h" 1
typedef int in_int_t;

int if_loop_2 (in_int_t a[100], in_int_t n);
# 5 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.cpp" 2

int if_loop_2 (in_int_t a[100], in_int_t n) {
 int i;
 int tmp;
 int sum = 0;

 for (i=0; i<n; i++) {
  tmp = a[i];

  if (tmp > 10) {

   sum = tmp + sum;
  }

 }

return sum;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_if_loop_2_ir(int *, int);
#ifdef __cplusplus
extern "C"
#endif
int if_loop_2_hw_stub(int *a, int n){
int _ret = if_loop_2(a, n);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_if_loop_2_sw(int *a, int n){
int _ret = apatb_if_loop_2_ir(a, n);
return _ret;
}
#endif
# 22 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_2/src/if_loop_2.cpp"

