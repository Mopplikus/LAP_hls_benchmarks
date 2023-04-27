set SynModuleInfo {
  {SRCNAME kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 MODELNAME kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2 RTLNAME kernel_3mm_kernel_3mm_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2
    SUBMODULES {
      {MODELNAME kernel_3mm_flow_control_loop_pipe_sequential_init RTLNAME kernel_3mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_3mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kernel_3mm_Pipeline_VITIS_LOOP_25_4_VITIS_LOOP_26_5 MODELNAME kernel_3mm_Pipeline_VITIS_LOOP_25_4_VITIS_LOOP_26_5 RTLNAME kernel_3mm_kernel_3mm_Pipeline_VITIS_LOOP_25_4_VITIS_LOOP_26_5}
  {SRCNAME kernel_3mm_Pipeline_VITIS_LOOP_32_7_VITIS_LOOP_33_8 MODELNAME kernel_3mm_Pipeline_VITIS_LOOP_32_7_VITIS_LOOP_33_8 RTLNAME kernel_3mm_kernel_3mm_Pipeline_VITIS_LOOP_32_7_VITIS_LOOP_33_8}
  {SRCNAME kernel_3mm MODELNAME kernel_3mm RTLNAME kernel_3mm IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel_3mm_mul_32s_32s_32_5_1 RTLNAME kernel_3mm_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
