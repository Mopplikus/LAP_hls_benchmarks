// ccs_block_macros.h
#include "ccs_testbench.h"

#ifndef EXCLUDE_CCS_BLOCK_INTERCEPT
#ifndef INCLUDE_CCS_BLOCK_INTERCEPT
#define INCLUDE_CCS_BLOCK_INTERCEPT
#ifdef  CCS_DESIGN_FUNC_main
extern void mc_testbench_capture_IN();
extern void mc_testbench_capture_OUT(int _retvalue,);
extern void mc_testbench_wait_for_idle_sync();

#define ccs_intercept_main_53 \
  ccs_real_main();\
  int main()\
{\
    static bool ccs_intercept_flag = false;\
    if (!ccs_intercept_flag) {\
      std::cout << "SCVerify intercepting C++ function 'main' for RTL block 'main'" << std::endl;\
      ccs_intercept_flag=true;\
    }\
    mc_testbench_capture_IN();\
    int _retvalue = ccs_real_main();\
    mc_testbench_capture_OUT(_retvalue,);\
    return _retvalue;\
}\
  int ccs_real_main
#else
#define ccs_intercept_main_53 main
#endif //CCS_DESIGN_FUNC_main
#endif //INCLUDE_CCS_BLOCK_INTERCEPT
#endif //EXCLUDE_CCS_BLOCK_INTERCEPT

// histogram 8 BLOCK
#define ccs_intercept_histogram_8 histogram
// value 3017 INLINE
#define ccs_intercept_value_3017 value
// value 1422 INLINE
#define ccs_intercept_value_1422 value
// float_helper 1509 INLINE
#define ccs_intercept_float_helper_1509 float_helper
// float_helper 1510 INLINE
#define ccs_intercept_float_helper_1510 float_helper
// float_helper 1511 INLINE
#define ccs_intercept_float_helper_1511 float_helper
// float_helper 1514 INLINE
#define ccs_intercept_float_helper_1514 float_helper
// set_data 1518 INLINE
#define ccs_intercept_set_data_1518 set_data
// set_data 1519 INLINE
#define ccs_intercept_set_data_1519 set_data
// double_helper 1635 INLINE
#define ccs_intercept_double_helper_1635 double_helper
// double_helper 1636 INLINE
#define ccs_intercept_double_helper_1636 double_helper
// double_helper 1637 INLINE
#define ccs_intercept_double_helper_1637 double_helper
// double_helper 1640 INLINE
#define ccs_intercept_double_helper_1640 double_helper
// set_data 1644 INLINE
#define ccs_intercept_set_data_1644 set_data
// set_data 1647 INLINE
#define ccs_intercept_set_data_1647 set_data
