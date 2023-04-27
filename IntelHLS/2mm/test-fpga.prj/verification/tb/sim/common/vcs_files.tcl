source [file join [file dirname [info script]] ./../../../ip/tb/kernel_2mm_en_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../../components/kernel_2mm/kernel_2mm/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/kernel_2mm_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/kernel_2mm_ir_cfan/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_C/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/main_dpi_controller/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_D/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_A/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_B/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_beta/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/dpic_kernel_2mm/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_done/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sso_kernel_2mm_alpha/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/clock_reset/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/cat_cwfsw/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/tb/sp_cstart/sim/common/vcs_files.tcl]

namespace eval tb {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [kernel_2mm_en_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_en_cfan/sim/"]]
    set memory_files [concat $memory_files [kernel_2mm::get_memory_files "$QSYS_SIMDIR/../../../components/kernel_2mm/kernel_2mm/sim/"]]
    set memory_files [concat $memory_files [kernel_2mm_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_cfan/sim/"]]
    set memory_files [concat $memory_files [kernel_2mm_ir_cfan::get_memory_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_ir_cfan/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_C::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_C/sim/"]]
    set memory_files [concat $memory_files [main_dpi_controller::get_memory_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_D::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_D/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_A::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_A/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_B::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_B/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_beta::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_beta/sim/"]]
    set memory_files [concat $memory_files [dpic_kernel_2mm::get_memory_files "$QSYS_SIMDIR/../../ip/tb/dpic_kernel_2mm/sim/"]]
    set memory_files [concat $memory_files [cat_done::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set memory_files [concat $memory_files [sso_kernel_2mm_alpha::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_alpha/sim/"]]
    set memory_files [concat $memory_files [clock_reset::get_memory_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set memory_files [concat $memory_files [cat_cwfsw::get_memory_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set memory_files [concat $memory_files [sp_cstart::get_memory_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [kernel_2mm_en_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_en_cfan/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm::get_common_design_files "$QSYS_SIMDIR/../../../components/kernel_2mm/kernel_2mm/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_cfan/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm_ir_cfan::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_C::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_C/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_D::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_D/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_A::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_A/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_B::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_B/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_beta::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_beta/sim/"]]
    set design_files [dict merge $design_files [dpic_kernel_2mm::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_kernel_2mm/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_alpha::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_alpha/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_common_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [kernel_2mm_en_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_en_cfan/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm::get_design_files "$QSYS_SIMDIR/../../../components/kernel_2mm/kernel_2mm/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_cfan/sim/"]]
    set design_files [dict merge $design_files [kernel_2mm_ir_cfan::get_design_files "$QSYS_SIMDIR/../../ip/tb/kernel_2mm_ir_cfan/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_C::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_C/sim/"]]
    set design_files [dict merge $design_files [main_dpi_controller::get_design_files "$QSYS_SIMDIR/../../ip/tb/main_dpi_controller/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_D::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_D/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_A::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_A/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_B::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_B/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_beta::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_beta/sim/"]]
    set design_files [dict merge $design_files [dpic_kernel_2mm::get_design_files "$QSYS_SIMDIR/../../ip/tb/dpic_kernel_2mm/sim/"]]
    set design_files [dict merge $design_files [cat_done::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_done/sim/"]]
    set design_files [dict merge $design_files [sso_kernel_2mm_alpha::get_design_files "$QSYS_SIMDIR/../../ip/tb/sso_kernel_2mm_alpha/sim/"]]
    set design_files [dict merge $design_files [clock_reset::get_design_files "$QSYS_SIMDIR/../../ip/tb/clock_reset/sim/"]]
    set design_files [dict merge $design_files [cat_cwfsw::get_design_files "$QSYS_SIMDIR/../../ip/tb/cat_cwfsw/sim/"]]
    set design_files [dict merge $design_files [sp_cstart::get_design_files "$QSYS_SIMDIR/../../ip/tb/sp_cstart/sim/"]]
    dict set design_files "tb_altera_irq_mapper_1920_trjgw7i.sv" "$QSYS_SIMDIR/../altera_irq_mapper_1920/sim/tb_altera_irq_mapper_1920_trjgw7i.sv"
    dict set design_files "tb.v"                                 "$QSYS_SIMDIR/tb.v"                                                              
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [kernel_2mm_en_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [kernel_2mm::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [kernel_2mm_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [kernel_2mm_ir_cfan::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_C::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [main_dpi_controller::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_D::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_A::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_B::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_beta::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [dpic_kernel_2mm::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_done::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sso_kernel_2mm_alpha::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [clock_reset::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [cat_cwfsw::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [sp_cstart::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [kernel_2mm_en_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [kernel_2mm::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [kernel_2mm_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [kernel_2mm_ir_cfan::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_C::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [main_dpi_controller::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_D::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_A::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_B::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_beta::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [dpic_kernel_2mm::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_done::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sso_kernel_2mm_alpha::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [clock_reset::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [cat_cwfsw::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [sp_cstart::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [kernel_2mm_en_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [kernel_2mm::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [kernel_2mm_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [kernel_2mm_ir_cfan::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_C::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [main_dpi_controller::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_D::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_A::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_B::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_beta::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [dpic_kernel_2mm::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_done::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sso_kernel_2mm_alpha::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [clock_reset::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [cat_cwfsw::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [sp_cstart::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
