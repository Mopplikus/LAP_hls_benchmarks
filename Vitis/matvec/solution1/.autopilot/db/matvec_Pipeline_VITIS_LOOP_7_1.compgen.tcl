# This script segment is generated automatically by AutoPilot

set name matvec_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 32 \
    name M \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename M \
    op interface \
    ports { M_address0 { O 10 vector } M_ce0 { O 1 bit } M_q0 { I 32 vector } M_address1 { O 10 vector } M_ce1 { O 1 bit } M_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'M'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name Out_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Out_r \
    op interface \
    ports { Out_r_address0 { O 5 vector } Out_r_ce0 { O 1 bit } Out_r_we0 { O 1 bit } Out_r_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Out_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name V_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load \
    op interface \
    ports { V_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name V_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_1 \
    op interface \
    ports { V_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name V_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_2 \
    op interface \
    ports { V_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name V_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_3 \
    op interface \
    ports { V_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name V_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_4 \
    op interface \
    ports { V_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name V_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_5 \
    op interface \
    ports { V_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name V_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_6 \
    op interface \
    ports { V_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name V_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_7 \
    op interface \
    ports { V_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name V_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_8 \
    op interface \
    ports { V_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name V_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_9 \
    op interface \
    ports { V_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name V_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_10 \
    op interface \
    ports { V_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name V_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_11 \
    op interface \
    ports { V_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name V_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_12 \
    op interface \
    ports { V_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name V_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_13 \
    op interface \
    ports { V_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name V_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_14 \
    op interface \
    ports { V_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name V_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_15 \
    op interface \
    ports { V_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name V_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_16 \
    op interface \
    ports { V_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name V_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_17 \
    op interface \
    ports { V_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name V_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_18 \
    op interface \
    ports { V_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name V_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_19 \
    op interface \
    ports { V_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name V_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_20 \
    op interface \
    ports { V_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name V_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_21 \
    op interface \
    ports { V_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name V_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_22 \
    op interface \
    ports { V_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name V_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_23 \
    op interface \
    ports { V_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name V_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_24 \
    op interface \
    ports { V_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name V_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_25 \
    op interface \
    ports { V_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name V_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_26 \
    op interface \
    ports { V_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name V_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_27 \
    op interface \
    ports { V_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name V_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_28 \
    op interface \
    ports { V_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name V_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_load_29 \
    op interface \
    ports { V_load_29 { I 32 vector } } \
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
set InstName matvec_flow_control_loop_pipe_sequential_init_U
set CompName matvec_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix matvec_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


