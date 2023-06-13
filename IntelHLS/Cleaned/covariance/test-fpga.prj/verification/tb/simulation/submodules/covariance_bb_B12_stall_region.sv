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

// SystemVerilog created from bb_covariance_B12_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B12_stall_region (
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [0:0] out_c0_exe1141622,
    output wire [0:0] out_c0_exe1360,
    output wire [0:0] out_c0_exe1542026,
    output wire [31:0] out_c0_exe841318,
    output wire [0:0] out_memdep_1,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_1_covariance_avm_readdata,
    input wire [0:0] in_memdep_1_covariance_avm_writeack,
    input wire [0:0] in_memdep_1_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_1_covariance_avm_readdatavalid,
    output wire [31:0] out_memdep_1_covariance_avm_address,
    output wire [0:0] out_memdep_1_covariance_avm_enable,
    output wire [0:0] out_memdep_1_covariance_avm_read,
    output wire [0:0] out_memdep_1_covariance_avm_write,
    output wire [31:0] out_memdep_1_covariance_avm_writedata,
    output wire [3:0] out_memdep_1_covariance_avm_byteenable,
    output wire [0:0] out_memdep_1_covariance_avm_burstcount,
    output wire [0:0] out_feedback_out_50,
    input wire [0:0] in_feedback_stall_in_50,
    output wire [0:0] out_feedback_valid_out_50,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1041520,
    input wire [0:0] in_c0_exe1141622,
    input wire [0:0] in_c0_exe1241723,
    input wire [0:0] in_c0_exe1341824,
    input wire [0:0] in_c0_exe1441925,
    input wire [0:0] in_c0_exe1542026,
    input wire [31:0] in_c0_exe541015,
    input wire [31:0] in_c0_exe841318,
    input wire [31:0] in_c0_exe941419,
    input wire [31:0] in_c1_exe143827,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_mptr_bitcast_index85_covariance0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index85_covariance0_c_i2_01_x_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_c0_exit359_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_valid;
    wire [32:0] i_add48_covariance2_a;
    wire [32:0] i_add48_covariance2_b;
    logic [32:0] i_add48_covariance2_o;
    wire [32:0] i_add48_covariance2_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_lsu_memdep_1_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1_covariance11_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_valid_out;
    wire [31:0] i_mul46_covariance1_vt_join_q;
    wire [30:0] i_mul46_covariance1_vt_select_31_b;
    wire [31:0] i_unnamed_covariance9_vt_const_63_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid61_i_mul46_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid63_i_mul46_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid63_i_mul46_covariance0_shift_x_q;
    wire [60:0] i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [63:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [34:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    reg [3:0] redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [31:0] redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q;
    reg [59:0] redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_q;
    reg [30:0] redist9_i_mul46_covariance1_vt_select_31_b_4_0_q;
    reg [30:0] redist9_i_mul46_covariance1_vt_select_31_b_4_1_q;
    reg [30:0] redist9_i_mul46_covariance1_vt_select_31_b_4_2_q;
    reg [30:0] redist9_i_mul46_covariance1_vt_select_31_b_4_3_q;
    reg [63:0] coalesced_delay_0_0_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_1_covariance11_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_1_covariance11_b;
    wire [164:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [34:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    reg [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_or0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V1;
    reg [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0;
    reg [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_v_s_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_1;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_or0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backStall;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V1;
    reg [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_v_s_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_s_tv_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V0;
    reg [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_v_s_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_s_tv_0;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backEN;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backStall;
    wire [0:0] SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_and0;
    reg [59:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V;
    wire [59:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D0;
    wire [59:0] SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_i_valid;
    reg [0:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid;
    reg [30:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_data0;
    wire [0:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall;
    wire [0:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V;
    wire [30:0] SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_D0;


    // SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,153)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 & SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,156)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0(STALLENABLE,163)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_V0 = SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_backStall & SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2(STALLENABLE,148)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_1 = SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN & SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2(STALLENABLE,149)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and1 = SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,161)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backStall & SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // i_unnamed_covariance9_vt_const_63(CONSTANT,35)
    assign i_unnamed_covariance9_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,86)
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = i_unnamed_covariance9_vt_const_63_q[29:0];
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // bubble_join_stall_entry(BITJOIN,124)
    assign bubble_join_stall_entry_q = {in_c1_exe143827, in_c0_exe941419, in_c0_exe841318, in_c0_exe541015, in_c0_exe1542026, in_c0_exe1441925, in_c0_exe1341824, in_c0_exe1241723, in_c0_exe1141622, in_c0_exe1041520};

    // bubble_select_stall_entry(BITSELECT,125)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[132:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[164:133]);

    // join_for_coalesced_delay_0(BITJOIN,98)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_h, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,99)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);

    // i_add48_covariance2(ADD,27)@1
    assign i_add48_covariance2_a = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_add48_covariance2_b = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_add48_covariance2_o = $unsigned(i_add48_covariance2_a) + $unsigned(i_add48_covariance2_b);
    assign i_add48_covariance2_q = i_add48_covariance2_o[32:0];

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,79)@1
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add48_covariance2_q[31:0]);

    // redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index85_covariance0_c_i2_01_x(CONSTANT,8)
    assign i_mptr_bitcast_index85_covariance0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,81)@2
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q, i_mptr_bitcast_index85_covariance0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0(BITJOIN,117)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0(BITSELECT,118)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_q[63:0]);

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,85)@2
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_b[59:0]);
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_b[63:60]);

    // SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2(STALLREG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid <= SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall & (SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid | SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V0 & SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall = SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_V = SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid : SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D0 = SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data0 : i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D1 = SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_r_data1 : i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0(STALLENABLE,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed0 = (~ (SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    covariance_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_backStall),
        .in_valid_in(SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,101)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_c, bubble_select_stall_entry_i};

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x(STALLENABLE,133)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and1 = SE_out_coalesced_delay_1_fifo_V1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_wireValid = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_and1;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12(STALLENABLE,140)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid = i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_1_covariance11(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_mem_memdep_1_covariance11_q = i_llvm_fpga_mem_memdep_1_covariance11_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_1_covariance11(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_mem_memdep_1_covariance11_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_1_covariance11_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,129)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,130)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[34:0]);

    // sel_for_coalesced_delay_1(BITSELECT,102)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[33:33]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[34:34]);

    // i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12(BLACKBOX,30)@35
    // in in_stall_in@20000000
    // out out_data_out@36
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    // out out_stall_out@20000000
    // out out_valid_out@36
    covariance_i_llvm_fpga_push_i1_memdep_phi2_push50_0 thei_llvm_fpga_push_i1_memdep_phi2_push50_covariance12 (
        .in_c0_exe1441925(sel_for_coalesced_delay_1_d),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_1_covariance11_b),
        .in_feedback_stall_in_50(in_feedback_stall_in_50),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_V0),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_valid_out_50),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12(STALLENABLE,139)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall = i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_and0 = SE_out_coalesced_delay_1_fifo_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_wireValid = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_and0;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_backStall) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = coalesced_delay_1_fifo_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,111)
    assign coalesced_delay_1_fifo_valid_in = SE_stall_entry_V1;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(36),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x(BLACKBOX,15)@0
    // in in_i_stall@20000000
    // out out_c0_exit359_0_tpl@35
    // out out_c0_exit359_1_tpl@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    covariance_i_sfc_s_c0_in_for_cond_cleanu0000enter353_covariance7 thei_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x (
        .in_c0_eni4352_0_tpl(GND_q),
        .in_c0_eni4352_1_tpl(bubble_select_stall_entry_d),
        .in_c0_eni4352_2_tpl(bubble_select_stall_entry_e),
        .in_c0_eni4352_3_tpl(bubble_select_stall_entry_g),
        .in_c0_eni4352_4_tpl(bubble_select_stall_entry_j),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .out_c0_exit359_0_tpl(),
        .out_c0_exit359_1_tpl(i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_c0_exit359_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (coalesced_delay_1_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0(STALLENABLE,164)
    // Valid signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0;
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V1 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1;
    // Stall signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_0 = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast849023_covariance0_out_stall_out & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0;
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_1 = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1;
    // Backward Enable generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_or0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_0;
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_1 | SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_v_s_0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backStall = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0 <= 1'b0;
            SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0 & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_v_s_0;
            end

            if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1 & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_s_tv_1;
            end
            else
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_R_v_1 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_v_s_0;
            end

        end
    end

    // leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x(BITSELECT,59)@0
    assign leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_in = bubble_select_stall_entry_k[30:0];
    assign leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid61_i_mul46_covariance0_shift_x(BITJOIN,60)@0
    assign leftShiftStage0Idx1_uid61_i_mul46_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid60_i_mul46_covariance0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid63_i_mul46_covariance0_shift_x(MUX,62)@0
    assign leftShiftStage0_uid63_i_mul46_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid63_i_mul46_covariance0_shift_x_s or bubble_select_stall_entry_k or leftShiftStage0Idx1_uid61_i_mul46_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid63_i_mul46_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid63_i_mul46_covariance0_shift_x_q = bubble_select_stall_entry_k;
            1'b1 : leftShiftStage0_uid63_i_mul46_covariance0_shift_x_q = leftShiftStage0Idx1_uid61_i_mul46_covariance0_shift_x_q;
            default : leftShiftStage0_uid63_i_mul46_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul46_covariance1_vt_select_31(BITSELECT,33)@0
    assign i_mul46_covariance1_vt_select_31_b = leftShiftStage0_uid63_i_mul46_covariance0_shift_x_q[31:1];

    // redist9_i_mul46_covariance1_vt_select_31_b_4_0(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_backEN == 1'b1)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_0_q <= $unsigned(i_mul46_covariance1_vt_select_31_b);
        end
    end

    // redist9_i_mul46_covariance1_vt_select_31_b_4_1(REG,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_1_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_1_q <= $unsigned(redist9_i_mul46_covariance1_vt_select_31_b_4_0_q);
        end
    end

    // SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLENABLE,162)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V1 = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_1 = SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall & SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_or0 = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_1 | SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_0_V1;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

            if (SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1 <= SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1 & SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_1 <= SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2(STALLREG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid <= 1'b0;
            SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_data0 <= 31'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall & (SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid | SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_i_valid);

            if (SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_data0 <= $unsigned(redist9_i_mul46_covariance1_vt_select_31_b_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_i_valid = SE_redist1_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall = SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid | ~ (SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_i_valid);

    // Valid
    assign SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V = SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid == 1'b1 ? SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid : SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_i_valid;

    assign SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_D0 = SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_valid == 1'b1 ? SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_r_data0 : redist9_i_mul46_covariance1_vt_select_31_b_4_1_q;

    // SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2(STALLENABLE,166)
    // Valid signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_s_tv_0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backStall & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_v_s_0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN & SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V;
    // Backward Stall generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backStall = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN == 1'b0)
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0 & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_v_s_0;
            end

        end
    end

    // SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3(STALLENABLE,167)
    // Valid signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_V0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_s_tv_0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_backStall & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backEN = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_v_s_0 = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backEN & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_V0;
    // Backward Stall generation
    assign SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backStall = ~ (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backEN == 1'b0)
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0 & SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_R_v_0 <= SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_v_s_0;
            end

        end
    end

    // redist9_i_mul46_covariance1_vt_select_31_b_4_2(REG,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_2_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_backEN == 1'b1)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_2_q <= $unsigned(SR_SE_redist9_i_mul46_covariance1_vt_select_31_b_4_2_D0);
        end
    end

    // redist9_i_mul46_covariance1_vt_select_31_b_4_3(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_3_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_backEN == 1'b1)
        begin
            redist9_i_mul46_covariance1_vt_select_31_b_4_3_q <= $unsigned(redist9_i_mul46_covariance1_vt_select_31_b_4_2_q);
        end
    end

    // i_mul46_covariance1_vt_join(BITJOIN,32)@4
    assign i_mul46_covariance1_vt_join_q = {redist9_i_mul46_covariance1_vt_select_31_b_4_3_q, GND_q};

    // SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q(STALLENABLE,150)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_memdep_1_covariance11_out_o_stall | ~ (SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and1 = SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_wireValid = SE_redist9_i_mul46_covariance1_vt_select_31_b_4_3_V0 & SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_and1;

    // SE_out_i_llvm_fpga_mem_memdep_1_covariance11(STALLENABLE,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_backStall) & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed1 = (~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_backStall) & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_StallValid = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_backStall & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg0 = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_toReg1 = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_or0 = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_1_covariance11_consumed1 & SE_out_i_llvm_fpga_mem_memdep_1_covariance11_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_backStall = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V0 = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_V1 = SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_covariance11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_1_covariance11_wireValid = i_llvm_fpga_mem_memdep_1_covariance11_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_mptr_bitcast_index85_covariance0_add_x_p1_of_2(ADD,70)@2 + 1
    assign i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_a = {1'b0, SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D0};
    assign i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_b = {1'b0, SR_SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q = i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,84)@3
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,77)@3
    assign i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index85_covariance0_add_x_p2_of_2(ADD,71)@3 + 1
    assign i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_cin = i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index85_covariance0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_q = i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0(REG,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q(BITJOIN,72)@4
    assign i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index85_covariance0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index85_covariance0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index85_covariance0_dupName_0_trunc_sel_x(BITSELECT,5)@4
    assign i_mptr_bitcast_index85_covariance0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_memdep_1_covariance11(BLACKBOX,29)@4
    // in in_i_stall@20000000
    // out out_lsu_memdep_1_o_active@20000000
    // out out_memdep_1_covariance_avm_address@20000000
    // out out_memdep_1_covariance_avm_burstcount@20000000
    // out out_memdep_1_covariance_avm_byteenable@20000000
    // out out_memdep_1_covariance_avm_enable@20000000
    // out out_memdep_1_covariance_avm_read@20000000
    // out out_memdep_1_covariance_avm_write@20000000
    // out out_memdep_1_covariance_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    covariance_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_covariance11 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index85_covariance0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_1_covariance11_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index85_covariance0_add_x_BitJoin_for_q_V0),
        .in_i_writedata(i_mul46_covariance1_vt_join_q),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .out_lsu_memdep_1_o_active(i_llvm_fpga_mem_memdep_1_covariance11_out_lsu_memdep_1_o_active),
        .out_memdep_1_covariance_avm_address(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_covariance11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_covariance11_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_covariance11_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_lsu_memdep_1_o_active = i_llvm_fpga_mem_memdep_1_covariance11_out_lsu_memdep_1_o_active;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x(BITJOIN,113)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_out_c0_exit359_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x(BITSELECT,114)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,4)@35
    assign out_c0_exe1141622 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe1360 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_b;
    assign out_c0_exe1542026 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe841318 = sel_for_coalesced_delay_1_b;
    assign out_memdep_1 = bubble_select_i_llvm_fpga_mem_memdep_1_covariance11_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup33_covariances_c0_enter353_covariance7_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,23)
    assign out_memdep_1_covariance_avm_address = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_address;
    assign out_memdep_1_covariance_avm_enable = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_enable;
    assign out_memdep_1_covariance_avm_read = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_read;
    assign out_memdep_1_covariance_avm_write = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_write;
    assign out_memdep_1_covariance_avm_writedata = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_writedata;
    assign out_memdep_1_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_byteenable;
    assign out_memdep_1_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_1_covariance11_out_memdep_1_covariance_avm_burstcount;

    // feedback_out_50_sync(GPOUT,24)
    assign out_feedback_out_50 = i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_out_50;

    // feedback_valid_out_50_sync(GPOUT,26)
    assign out_feedback_valid_out_50 = i_llvm_fpga_push_i1_memdep_phi2_push50_covariance12_out_feedback_valid_out_50;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
