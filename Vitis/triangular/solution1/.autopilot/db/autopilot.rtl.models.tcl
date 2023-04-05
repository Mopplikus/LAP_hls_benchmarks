set SynModuleInfo {
  {SRCNAME triangular_Pipeline_VITIS_LOOP_7_2 MODELNAME triangular_Pipeline_VITIS_LOOP_7_2 RTLNAME triangular_triangular_Pipeline_VITIS_LOOP_7_2
    SUBMODULES {
      {MODELNAME triangular_mul_32s_32s_32_1_1 RTLNAME triangular_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME triangular_mul_mul_14s_7ns_14_4_1 RTLNAME triangular_mul_mul_14s_7ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME triangular_flow_control_loop_pipe_sequential_init RTLNAME triangular_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME triangular_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME triangular MODELNAME triangular RTLNAME triangular IS_TOP 1}
}
