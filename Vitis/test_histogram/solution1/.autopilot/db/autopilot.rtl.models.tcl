set SynModuleInfo {
  {SRCNAME histogram_Pipeline_LOOP_INIT MODELNAME histogram_Pipeline_LOOP_INIT RTLNAME histogram_histogram_Pipeline_LOOP_INIT
    SUBMODULES {
      {MODELNAME histogram_flow_control_loop_pipe_sequential_init RTLNAME histogram_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME histogram_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME histogram_Pipeline_LOOP_I MODELNAME histogram_Pipeline_LOOP_I RTLNAME histogram_histogram_Pipeline_LOOP_I
    SUBMODULES {
      {MODELNAME histogram_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME histogram_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME histogram_sitofp_32ns_32_5_no_dsp_1 RTLNAME histogram_sitofp_32ns_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME histogram_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME histogram_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME histogram_Pipeline_LOOP_END MODELNAME histogram_Pipeline_LOOP_END RTLNAME histogram_histogram_Pipeline_LOOP_END}
  {SRCNAME histogram MODELNAME histogram RTLNAME histogram IS_TOP 1
    SUBMODULES {
      {MODELNAME histogram_hist_local_RAM_AUTO_1R1W RTLNAME histogram_hist_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
