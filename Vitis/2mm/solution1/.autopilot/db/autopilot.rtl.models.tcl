set SynModuleInfo {
  {SRCNAME kernel_2mm_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2 MODELNAME kernel_2mm_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2 RTLNAME kernel_2mm_kernel_2mm_Pipeline_VITIS_LOOP_15_1_VITIS_LOOP_16_2
    SUBMODULES {
      {MODELNAME kernel_2mm_mul_32s_32s_32_5_1 RTLNAME kernel_2mm_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME kernel_2mm_flow_control_loop_pipe_sequential_init RTLNAME kernel_2mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_2mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kernel_2mm_Pipeline_VITIS_LOOP_22_4_VITIS_LOOP_23_5 MODELNAME kernel_2mm_Pipeline_VITIS_LOOP_22_4_VITIS_LOOP_23_5 RTLNAME kernel_2mm_kernel_2mm_Pipeline_VITIS_LOOP_22_4_VITIS_LOOP_23_5}
  {SRCNAME kernel_2mm MODELNAME kernel_2mm RTLNAME kernel_2mm IS_TOP 1}
}
