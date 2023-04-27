# This script segment is generated automatically by AutoPilot

set name bicg_mul_32s_32s_32_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s \
    op interface \
    ports { s_address0 { O 5 vector } s_ce0 { O 1 bit } s_we0 { O 1 bit } s_d0 { O 32 vector } s_q0 { I 32 vector } s_address1 { O 5 vector } s_ce1 { O 1 bit } s_we1 { O 1 bit } s_d1 { O 32 vector } s_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A \
    op interface \
    ports { A_address0 { O 10 vector } A_ce0 { O 1 bit } A_q0 { I 32 vector } A_address1 { O 10 vector } A_ce1 { O 1 bit } A_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name q \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename q \
    op interface \
    ports { q_address0 { O 5 vector } q_ce0 { O 1 bit } q_we0 { O 1 bit } q_d0 { O 32 vector } q_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'q'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename r \
    op interface \
    ports { r_address0 { O 5 vector } r_ce0 { O 1 bit } r_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name p_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load \
    op interface \
    ports { p_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name p_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_1 \
    op interface \
    ports { p_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_2 \
    op interface \
    ports { p_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name p_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_3 \
    op interface \
    ports { p_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name p_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_4 \
    op interface \
    ports { p_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name p_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_5 \
    op interface \
    ports { p_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_6 \
    op interface \
    ports { p_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name p_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_7 \
    op interface \
    ports { p_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name p_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_8 \
    op interface \
    ports { p_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name p_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_9 \
    op interface \
    ports { p_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name p_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_10 \
    op interface \
    ports { p_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_11 \
    op interface \
    ports { p_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name p_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_12 \
    op interface \
    ports { p_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_13 \
    op interface \
    ports { p_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_14 \
    op interface \
    ports { p_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name p_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_15 \
    op interface \
    ports { p_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name p_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_16 \
    op interface \
    ports { p_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name p_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_17 \
    op interface \
    ports { p_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name p_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_18 \
    op interface \
    ports { p_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name p_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_19 \
    op interface \
    ports { p_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name p_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_20 \
    op interface \
    ports { p_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name p_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_21 \
    op interface \
    ports { p_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_22 \
    op interface \
    ports { p_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name p_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_23 \
    op interface \
    ports { p_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_24 \
    op interface \
    ports { p_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_25 \
    op interface \
    ports { p_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_26 \
    op interface \
    ports { p_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_27 \
    op interface \
    ports { p_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_28 \
    op interface \
    ports { p_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_load_29 \
    op interface \
    ports { p_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name add17_lcssa_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_lcssa_phi_out \
    op interface \
    ports { add17_lcssa_phi_out { O 32 vector } add17_lcssa_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName bicg_flow_control_loop_pipe_sequential_init_U
set CompName bicg_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix bicg_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


