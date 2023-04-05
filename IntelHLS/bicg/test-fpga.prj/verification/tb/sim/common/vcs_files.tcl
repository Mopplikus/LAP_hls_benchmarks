source [file join [file dirname [info script]] ./../../../ip/tb/mm_agent_bicg_avmm_0_rw/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../../components/bicg/bicg/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_done/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_cwfsw/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_bicg_s/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/clock_reset/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_bicg_q/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_bicg_r/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/bicg_en_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_bicg_A/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/dpic_bicg/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sp_cstart/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_bicg_p/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/bicg_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/bicg_ir_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/main_dpi_controller/sim/common/vcs_files.tcl]

namespace eval tb {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [mm_agent_bicg_avmm_0_rw::get_memory_files "$QSYS_SIMDIR/../../ip/tb/mm_agent_bicg_avmm_0_rw/sim/"]]
    set memory_files [concat $memory_files [bicg::get_memory_files "$QSYS_SIMDIR/../../../components/bicg/bicg/sim/"]]
    set memory_files [concat $memory_files [cat_done::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set memory_files [concat $memory_files [cat_cwfsw::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set memory_files [concat $memory_files [sso_bicg_s::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_s/sim/"]]
    set memory_files [concat $memory_files [clock_reset::get_memory_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set memory_files [concat $memory_files [sso_bicg_q::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_q/sim/"]]
    set memory_files [concat $memory_files [sso_bicg_r::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_r/sim/"]]
    set memory_files [concat $memory_files [bicg_en_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/bicg_en_cfan/sim/"]]
    set memory_files [concat $memory_files [sso_bicg_A::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_A/sim/"]]
    set memory_files [concat $memory_files [dpic_bicg::get_memory_files "$QSYS_SIMDIR/../../ip/tb/dpic_bicg/sim/"]]
    set memory_files [concat $memory_files [sp_cstart::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set memory_files [concat $memory_files [sso_bicg_p::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_p/sim/"]]
    set memory_files [concat $memory_files [bicg_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/bicg_cfan/sim/"]]
    set memory_files [concat $memory_files [bicg_ir_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/bicg_ir_cfan/sim/"]]
    set memory_files [concat $memory_files [main_dpi_controller::get_memory_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [mm_agent_bicg_avmm_0_rw::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/mm_agent_bicg_avmm_0_rw/sim/"]]
    set design_files [dict merge $design_files [bicg::get_common_design_files "$QSYS_SIMDIR/../../../components/bicg/bicg/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_s::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_s/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_q::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_q/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_r::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_r/sim/"]]
    set design_files [dict merge $design_files [bicg_en_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_en_cfan/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_A::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_A/sim/"]]
    set design_files [dict merge $design_files [dpic_bicg::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_bicg/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_p::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_p/sim/"]]
    set design_files [dict merge $design_files [bicg_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_cfan/sim/"]]
    set design_files [dict merge $design_files [bicg_ir_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [mm_agent_bicg_avmm_0_rw::get_design_files "$QSYS_SIMDIR/../../ip/tb/mm_agent_bicg_avmm_0_rw/sim/"]]
    set design_files [dict merge $design_files [bicg::get_design_files "$QSYS_SIMDIR/../../../components/bicg/bicg/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_s::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_s/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_q::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_q/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_r::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_r/sim/"]]
    set design_files [dict merge $design_files [bicg_en_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_en_cfan/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_A::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_A/sim/"]]
    set design_files [dict merge $design_files [dpic_bicg::get_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_bicg/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [sso_bicg_p::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_bicg_p/sim/"]]
    set design_files [dict merge $design_files [bicg_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_cfan/sim/"]]
    set design_files [dict merge $design_files [bicg_ir_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/bicg_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    dict set design_files "tb_altera_irq_mapper_1920_trjgw7i.sv" "$QSYS_SIMDIR/../altera_irq_mapper_1920/sim/tb_altera_irq_mapper_1920_trjgw7i.sv"
    dict set design_files "tb.v"                                 "$QSYS_SIMDIR/tb.v"                                                              
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [mm_agent_bicg_avmm_0_rw::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [bicg::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_done::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_cwfsw::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_bicg_s::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [clock_reset::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_bicg_q::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_bicg_r::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [bicg_en_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_bicg_A::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [dpic_bicg::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sp_cstart::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_bicg_p::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [bicg_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [bicg_ir_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [main_dpi_controller::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [mm_agent_bicg_avmm_0_rw::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [bicg::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_done::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_cwfsw::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_bicg_s::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [clock_reset::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_bicg_q::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_bicg_r::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [bicg_en_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_bicg_A::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [dpic_bicg::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sp_cstart::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_bicg_p::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [bicg_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [bicg_ir_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [main_dpi_controller::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [mm_agent_bicg_avmm_0_rw::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [bicg::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_done::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_cwfsw::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_bicg_s::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [clock_reset::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_bicg_q::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_bicg_r::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [bicg_en_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_bicg_A::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [dpic_bicg::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sp_cstart::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_bicg_p::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [bicg_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [bicg_ir_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [main_dpi_controller::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
