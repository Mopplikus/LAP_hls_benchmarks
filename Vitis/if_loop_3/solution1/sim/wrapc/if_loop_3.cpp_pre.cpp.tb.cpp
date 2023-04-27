// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp"




# 1 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.h" 1
typedef int in_int_t;

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n);
# 6 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp" 2

int if_loop_3 (in_int_t a[100], in_int_t b[100], in_int_t n) {
 int i;
  int dist;
 int sum = 1000;

 for (i=0; i<n; i++) {
  dist = a[i] - b[i];

  if (dist >= 0){

  sum = (sum /dist);

    }

 }
return sum;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_if_loop_3_ir(int *, int *, int);
#ifdef __cplusplus
extern "C"
#endif
int if_loop_3_hw_stub(int *a, int *b, int n){
int _ret = if_loop_3(a, b, n);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_if_loop_3_sw(int *a, int *b, int n){
int _ret = apatb_if_loop_3_ir(a, b, n);
return _ret;
}
#endif
# 23 "C:/Users/Elija/Documents/LAP_hls_benchmarks/Vitis/if_loop_3/src/if_loop_3.cpp"

