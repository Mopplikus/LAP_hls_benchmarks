set SynModuleInfo {
  {SRCNAME histogram MODELNAME histogram RTLNAME histogram IS_TOP 1
    SUBMODULES {
      {MODELNAME histogram_fadd_32ns_32ns_32_6_full_dsp_1 RTLNAME histogram_fadd_32ns_32ns_32_6_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME histogram_flow_control_loop_pipe RTLNAME histogram_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME histogram_flow_control_loop_pipe_U}
    }
  }
}
