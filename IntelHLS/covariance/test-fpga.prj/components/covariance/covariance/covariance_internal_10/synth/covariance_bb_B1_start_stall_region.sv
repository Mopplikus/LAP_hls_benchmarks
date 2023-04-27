// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from bb_covariance_B1_start_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    input wire [0:0] in_feedback_in_16,
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_16,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_16,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_memdep_phi1_pop16,
    output wire [0:0] out_memdep_phi2_pop17,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid;
    wire redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall;
    wire redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_data;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid;
    wire redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall;
    wire redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_data;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_q;
    reg [0:0] redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b;
    wire [2:0] bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_d;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and2;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and3;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_or0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V0;
    wire [0:0] SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall_bitsignaltemp;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_data0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl, i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_q[2:2]);

    // redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo(STALLFIFO,37)
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3;
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall = SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall;
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_data = bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid_bitsignaltemp = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid[0];
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall_bitsignaltemp = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall[0];
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid[0] = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall[0] = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(9),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo (
        .i_valid(redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_b),
        .o_valid(redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BLACKBOX,34)@8
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@16
    // out out_c1_exit_0_tpl@16
    // out out_c1_exit_1_tpl@16
    covariance_i_sfc_s_c1_in_wt_entry_s_c1_enter_covariance7 thei_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_c),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_d),
        .in_i_stall(SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_d),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0(REG,38)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_d);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1(REG,39)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_D0);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2(REG,40)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_D0);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3(REG,41)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_D0);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4(REG,42)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_D0);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5(REG,43)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_D0);
        end
    end

    // redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6(REG,44)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_q <= $unsigned(SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_D0);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BLACKBOX,15)@15
    // in in_stall_in@20000000
    // out out_data_out@16
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@16
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5 (
        .in_data_in(GND_q),
        .in_dir(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_q),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall),
        .in_valid_in(SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BLACKBOX,14)@15
    // in in_stall_in@20000000
    // out out_data_out@16
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@16
    covariance_i_llvm_fpga_pop_i1_memdep_phi1_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4 (
        .in_data_in(GND_q),
        .in_dir(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_q),
        .in_feedback_in_16(in_feedback_in_16),
        .in_feedback_valid_in_16(in_feedback_valid_in_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall),
        .in_valid_in(SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6(STALLENABLE,86)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0;
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V1 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_stall_out & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0;
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_stall_out & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_or0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_0;
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_1 | SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_R_v_1 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6(STALLREG,125)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5(STALLENABLE,85)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_6_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5(STALLREG,124)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4(STALLENABLE,84)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_5_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4(STALLREG,123)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3(STALLENABLE,83)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_4_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3(STALLREG,122)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2(STALLENABLE,82)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_3_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2(STALLREG,121)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1(STALLENABLE,81)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_2_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN & SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1(STALLREG,120)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall & (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid | SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_i_valid);

            if (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_data0 <= $unsigned(redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_i_valid = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid | ~ (SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_V = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid : SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_i_valid;

    assign SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_D0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_r_data0 : redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_q;

    // SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0(STALLENABLE,80)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_V0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_s_tv_0 = SR_SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_1_backStall & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backEN = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_v_s_0 = SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backEN & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backStall = ~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0 & SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_R_v_0 <= SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,70)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(BLACKBOX,33)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit_0_tpl@8
    // out out_c0_exit_1_tpl@8
    // out out_c0_exit_2_tpl@8
    covariance_i_sfc_s_c0_in_wt_entry_s_c0_enter33_covariance1 thei_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x(STALLENABLE,75)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1 = (~ (SE_redist1_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_c0_exit_2_tpl_7_0_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2 = (~ (i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3 = (~ (redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_o_valid;

    // bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg(STALLFIFO,119)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid = SE_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid[0] = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall[0] = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall_bitsignaltemp;
    hld_fifo_zero_width #(
        .DEPTH(9),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg (
        .i_valid(bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_valid_bitsignaltemp),
        .i_stall(bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_i_stall_bitsignaltemp),
        .o_valid(bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid_bitsignaltemp),
        .o_stall(bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_stall_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1(STALLENABLE,108)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_backStall = i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_wireValid = bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_reg_o_valid;

    // SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_V0 = SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall = in_stall_in | ~ (SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and0 = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_valid;
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and1 = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_o_valid & SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and0;
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and2 = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_valid_out & SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and1;
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and3 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_valid_out & SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and2;
    assign SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_wireValid = i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_valid & SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_and3;

    // i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x(BLACKBOX,32)@16
    // in in_i_stall@20000000
    // out out_iord_bl_call_covariance_o_fifoalmost_full@20000000
    // out out_iord_bl_call_covariance_o_fifoready@20000000
    // out out_o_stall@20000000
    covariance_i_iord_bl_call_unnamed_covariance0_covariance0 thei_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x (
        .in_i_stall(SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_backStall),
        .in_i_valid(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_1_V0),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .out_iord_bl_call_covariance_o_fifoalmost_full(i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready),
        .out_o_stall(i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_covariance_o_fifoready = i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    assign out_iord_bl_call_covariance_o_fifoalmost_full = i_iord_bl_call_covariance_unnamed_covariance0_covariance3_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;

    // feedback_stall_out_16_sync(GPOUT,10)
    assign out_feedback_stall_out_16 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_feedback_stall_out_16;

    // feedback_stall_out_17_sync(GPOUT,11)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_feedback_stall_out_17;

    // sync_out(GPOUT,29)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo(BITJOIN,64)
    assign bubble_join_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_q = redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_o_data;

    // bubble_select_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo(BITSELECT,65)
    assign bubble_select_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BITJOIN,50)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q = i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5(BITSELECT,51)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q = i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BITJOIN,60)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q = i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x(BITSELECT,61)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,31)@16
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_wt_entry_covariances_c1_enter_covariance7_aunroll_x_b;
    assign out_memdep_phi1_pop16 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_covariance4_b;
    assign out_memdep_phi2_pop17 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop17_covariance5_b;
    assign out_profile_loop_o_valid = bubble_select_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_b;
    assign out_valid_out = SE_out_redist0_i_sfc_s_c0_in_wt_entry_covariances_c0_enter33_covariance1_aunroll_x_out_profile_loop_o_valid_8_fifo_V0;

    // rst_sync(RESETSYNC,126)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
