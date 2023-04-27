set SynModuleInfo {
  {SRCNAME getTanh MODELNAME getTanh RTLNAME getTanh IS_TOP 1
    SUBMODULES {
      {MODELNAME getTanh_mul_32s_32s_32_5_1 RTLNAME getTanh_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME getTanh_flow_control_loop_pipe RTLNAME getTanh_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME getTanh_flow_control_loop_pipe_U}
    }
  }
}
