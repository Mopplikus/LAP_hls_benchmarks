set SynModuleInfo {
  {SRCNAME matvec_Pipeline_VITIS_LOOP_7_1 MODELNAME matvec_Pipeline_VITIS_LOOP_7_1 RTLNAME matvec_matvec_Pipeline_VITIS_LOOP_7_1
    SUBMODULES {
      {MODELNAME matvec_mul_32s_32s_32_1_1 RTLNAME matvec_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matvec_flow_control_loop_pipe_sequential_init RTLNAME matvec_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matvec_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matvec MODELNAME matvec RTLNAME matvec IS_TOP 1}
}
