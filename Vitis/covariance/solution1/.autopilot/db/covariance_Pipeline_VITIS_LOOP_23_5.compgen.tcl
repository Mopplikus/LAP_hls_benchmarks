# This script segment is generated automatically by AutoPilot

set name covariance_mul_31s_31s_31_5_1
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
    id 36 \
    name data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data \
    op interface \
    ports { data_address0 { O 10 vector } data_ce0 { O 1 bit } data_q0 { I 32 vector } data_address1 { O 10 vector } data_ce1 { O 1 bit } data_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name cov \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename cov \
    op interface \
    ports { cov_address0 { O 10 vector } cov_ce0 { O 1 bit } cov_we0 { O 1 bit } cov_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cov'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name zext_ln22_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln22_1 \
    op interface \
    ports { zext_ln22_1 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name zext_ln28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln28 \
    op interface \
    ports { zext_ln28 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name data_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_32 \
    op interface \
    ports { data_load_32 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name data_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_34 \
    op interface \
    ports { data_load_34 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name data_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_36 \
    op interface \
    ports { data_load_36 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name data_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_38 \
    op interface \
    ports { data_load_38 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name data_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_40 \
    op interface \
    ports { data_load_40 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name data_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_42 \
    op interface \
    ports { data_load_42 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name data_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_44 \
    op interface \
    ports { data_load_44 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name data_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_46 \
    op interface \
    ports { data_load_46 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name data_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_48 \
    op interface \
    ports { data_load_48 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name data_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_50 \
    op interface \
    ports { data_load_50 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name data_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_52 \
    op interface \
    ports { data_load_52 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name data_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_54 \
    op interface \
    ports { data_load_54 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name data_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_56 \
    op interface \
    ports { data_load_56 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name data_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_58 \
    op interface \
    ports { data_load_58 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name data_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_60 \
    op interface \
    ports { data_load_60 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name data_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_62 \
    op interface \
    ports { data_load_62 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name data_load_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_64 \
    op interface \
    ports { data_load_64 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name data_load_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_66 \
    op interface \
    ports { data_load_66 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name data_load_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_68 \
    op interface \
    ports { data_load_68 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name data_load_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_70 \
    op interface \
    ports { data_load_70 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name data_load_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_72 \
    op interface \
    ports { data_load_72 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name data_load_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_74 \
    op interface \
    ports { data_load_74 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name data_load_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_76 \
    op interface \
    ports { data_load_76 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name data_load_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_78 \
    op interface \
    ports { data_load_78 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name data_load_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_80 \
    op interface \
    ports { data_load_80 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name data_load_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_82 \
    op interface \
    ports { data_load_82 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name data_load_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_84 \
    op interface \
    ports { data_load_84 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name data_load_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_86 \
    op interface \
    ports { data_load_86 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name data_load_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_88 \
    op interface \
    ports { data_load_88 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name data_load_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_90 \
    op interface \
    ports { data_load_90 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name data_load_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_92 \
    op interface \
    ports { data_load_92 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name data_load_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_load_94 \
    op interface \
    ports { data_load_94 { I 31 vector } } \
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
set InstName covariance_flow_control_loop_pipe_sequential_init_U
set CompName covariance_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix covariance_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


