source [file join [file dirname [info script]] ./../../../ip/tb/matvec_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/matvec_ir_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sp_cstart/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/main_dpi_controller/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_cwfsw/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../../components/matvec/matvec/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/clock_reset/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/dpic_matvec/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_matvec_Out0/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_matvec_V/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_matvec_M/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/matvec_en_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_done/sim/common/vcs_files.tcl]

namespace eval tb {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [matvec_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/matvec_cfan/sim/"]]
    set memory_files [concat $memory_files [matvec_ir_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/matvec_ir_cfan/sim/"]]
    set memory_files [concat $memory_files [sp_cstart::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set memory_files [concat $memory_files [main_dpi_controller::get_memory_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set memory_files [concat $memory_files [cat_cwfsw::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set memory_files [concat $memory_files [matvec::get_memory_files "$QSYS_SIMDIR/../../../components/matvec/matvec/sim/"]]
    set memory_files [concat $memory_files [clock_reset::get_memory_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set memory_files [concat $memory_files [dpic_matvec::get_memory_files "$QSYS_SIMDIR/../../ip/tb/dpic_matvec/sim/"]]
    set memory_files [concat $memory_files [sso_matvec_Out0::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_Out0/sim/"]]
    set memory_files [concat $memory_files [sso_matvec_V::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_V/sim/"]]
    set memory_files [concat $memory_files [sso_matvec_M::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_M/sim/"]]
    set memory_files [concat $memory_files [matvec_en_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/matvec_en_cfan/sim/"]]
    set memory_files [concat $memory_files [cat_done::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [matvec_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_cfan/sim/"]]
    set design_files [dict merge $design_files [matvec_ir_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [matvec::get_common_design_files "$QSYS_SIMDIR/../../../components/matvec/matvec/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [dpic_matvec::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_matvec/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_Out0::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_Out0/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_V::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_V/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_M::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_M/sim/"]]
    set design_files [dict merge $design_files [matvec_en_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_en_cfan/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [matvec_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_cfan/sim/"]]
    set design_files [dict merge $design_files [matvec_ir_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [matvec::get_design_files "$QSYS_SIMDIR/../../../components/matvec/matvec/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [dpic_matvec::get_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_matvec/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_Out0::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_Out0/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_V::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_V/sim/"]]
    set design_files [dict merge $design_files [sso_matvec_M::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_matvec_M/sim/"]]
    set design_files [dict merge $design_files [matvec_en_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/matvec_en_cfan/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    dict set design_files "tb_altera_irq_mapper_1920_trjgw7i.sv" "$QSYS_SIMDIR/../altera_irq_mapper_1920/sim/tb_altera_irq_mapper_1920_trjgw7i.sv"
    dict set design_files "tb.v"                                 "$QSYS_SIMDIR/tb.v"                                                              
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [matvec_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [matvec_ir_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sp_cstart::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [main_dpi_controller::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_cwfsw::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [matvec::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [clock_reset::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [dpic_matvec::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_matvec_Out0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_matvec_V::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_matvec_M::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [matvec_en_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_done::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [matvec_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [matvec_ir_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sp_cstart::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [main_dpi_controller::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_cwfsw::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [matvec::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [clock_reset::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [dpic_matvec::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_matvec_Out0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_matvec_V::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_matvec_M::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [matvec_en_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_done::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [matvec_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [matvec_ir_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sp_cstart::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [main_dpi_controller::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_cwfsw::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [matvec::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [clock_reset::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [dpic_matvec::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_matvec_Out0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_matvec_V::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_matvec_M::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [matvec_en_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_done::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
