set SynModuleInfo {
  {SRCNAME stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2 MODELNAME stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2 RTLNAME stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2
    SUBMODULES {
      {MODELNAME stencil_2d_mul_32s_32s_32_1_1 RTLNAME stencil_2d_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME stencil_2d_flow_control_loop_pipe_sequential_init RTLNAME stencil_2d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME stencil_2d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME stencil_2d MODELNAME stencil_2d RTLNAME stencil_2d IS_TOP 1}
}
