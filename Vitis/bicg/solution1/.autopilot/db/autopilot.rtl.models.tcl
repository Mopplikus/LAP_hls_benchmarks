set SynModuleInfo {
  {SRCNAME bicg_Pipeline_VITIS_LOOP_16_1 MODELNAME bicg_Pipeline_VITIS_LOOP_16_1 RTLNAME bicg_bicg_Pipeline_VITIS_LOOP_16_1
    SUBMODULES {
      {MODELNAME bicg_mul_32s_32s_32_5_1 RTLNAME bicg_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME bicg_flow_control_loop_pipe_sequential_init RTLNAME bicg_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bicg_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME bicg MODELNAME bicg RTLNAME bicg IS_TOP 1}
}
