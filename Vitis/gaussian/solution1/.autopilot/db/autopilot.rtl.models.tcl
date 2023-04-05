set SynModuleInfo {
  {SRCNAME gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 MODELNAME gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 RTLNAME gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3
    SUBMODULES {
      {MODELNAME gaussian_mul_32s_32s_32_1_1 RTLNAME gaussian_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_flow_control_loop_pipe_sequential_init RTLNAME gaussian_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gaussian_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gaussian MODELNAME gaussian RTLNAME gaussian IS_TOP 1
    SUBMODULES {
      {MODELNAME gaussian_mul_5ns_6ns_9_1_1 RTLNAME gaussian_mul_5ns_6ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
