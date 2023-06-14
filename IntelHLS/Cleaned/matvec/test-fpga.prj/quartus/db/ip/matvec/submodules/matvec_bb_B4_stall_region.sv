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

// SystemVerilog created from bb_matvec_B4_stall_region
// Created for function/kernel matvec
// SystemVerilog created on Tue Jun 13 02:57:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B4_stall_region (
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_c0_exe93,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_matvec_avm_readdata,
    input wire [0:0] in_memdep_matvec_avm_writeack,
    input wire [0:0] in_memdep_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_matvec_avm_readdatavalid,
    output wire [31:0] out_memdep_matvec_avm_address,
    output wire [0:0] out_memdep_matvec_avm_enable,
    output wire [0:0] out_memdep_matvec_avm_read,
    output wire [0:0] out_memdep_matvec_avm_write,
    output wire [31:0] out_memdep_matvec_avm_writedata,
    output wire [3:0] out_memdep_matvec_avm_byteenable,
    output wire [0:0] out_memdep_matvec_avm_burstcount,
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe3431,
    input wire [0:0] in_c0_exe82,
    input wire [0:0] in_c0_exe93,
    input wire [31:0] in_c1_exe14,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_mptr_bitcast_index36_matvec0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index36_matvec0_c_i2_01_x_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_matvec3_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_valid_out;
    wire [31:0] i_unnamed_matvec0_vt_const_63_q;
    wire [60:0] i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [3:0] redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [59:0] redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_q;
    reg [31:0] redist2_stall_entry_o4_1_0_q;
    reg [31:0] redist5_stall_entry_o7_3_0_q;
    reg [31:0] redist5_stall_entry_o7_3_1_q;
    reg [31:0] redist5_stall_entry_o7_3_2_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_matvec3_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_matvec3_b;
    wire [65:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_backStall;
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
    reg [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    reg [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist2_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist2_stall_entry_o4_1_0_R_v_1;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist2_stall_entry_o4_1_0_V1;
    reg [0:0] SE_redist5_stall_entry_o7_3_1_R_v_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_1_v_s_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_1_s_tv_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_1_backEN;
    wire [0:0] SE_redist5_stall_entry_o7_3_1_backStall;
    wire [0:0] SE_redist5_stall_entry_o7_3_1_V0;
    reg [0:0] SE_redist5_stall_entry_o7_3_2_R_v_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_2_v_s_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_2_s_tv_0;
    wire [0:0] SE_redist5_stall_entry_o7_3_2_backEN;
    wire [0:0] SE_redist5_stall_entry_o7_3_2_backStall;
    wire [0:0] SE_redist5_stall_entry_o7_3_2_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist5_stall_entry_o7_3_2_i_valid;
    reg [0:0] SR_SE_redist5_stall_entry_o7_3_2_r_valid;
    reg [31:0] SR_SE_redist5_stall_entry_o7_3_2_r_data0;
    wire [0:0] SR_SE_redist5_stall_entry_o7_3_2_backStall;
    wire [0:0] SR_SE_redist5_stall_entry_o7_3_2_V;
    wire [31:0] SR_SE_redist5_stall_entry_o7_3_2_D0;


    // SE_redist5_stall_entry_o7_3_2(STALLENABLE,117)
    // Valid signal propagation
    assign SE_redist5_stall_entry_o7_3_2_V0 = SE_redist5_stall_entry_o7_3_2_R_v_0;
    // Stall signal propagation
    assign SE_redist5_stall_entry_o7_3_2_s_tv_0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_backStall & SE_redist5_stall_entry_o7_3_2_R_v_0;
    // Backward Enable generation
    assign SE_redist5_stall_entry_o7_3_2_backEN = ~ (SE_redist5_stall_entry_o7_3_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_stall_entry_o7_3_2_v_s_0 = SE_redist5_stall_entry_o7_3_2_backEN & SR_SE_redist5_stall_entry_o7_3_2_V;
    // Backward Stall generation
    assign SE_redist5_stall_entry_o7_3_2_backStall = ~ (SE_redist5_stall_entry_o7_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_stall_entry_o7_3_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_stall_entry_o7_3_2_backEN == 1'b0)
            begin
                SE_redist5_stall_entry_o7_3_2_R_v_0 <= SE_redist5_stall_entry_o7_3_2_R_v_0 & SE_redist5_stall_entry_o7_3_2_s_tv_0;
            end
            else
            begin
                SE_redist5_stall_entry_o7_3_2_R_v_0 <= SE_redist5_stall_entry_o7_3_2_v_s_0;
            end

        end
    end

    // i_unnamed_matvec0_vt_const_63(CONSTANT,23)
    assign i_unnamed_matvec0_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,62)
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = i_unnamed_matvec0_vt_const_63_q[29:0];
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // redist2_stall_entry_o4_1_0(REG,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // i_mptr_bitcast_index36_matvec0_c_i2_01_x(CONSTANT,7)
    assign i_mptr_bitcast_index36_matvec0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,57)@1
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist2_stall_entry_o4_1_0_q, i_mptr_bitcast_index36_matvec0_c_i2_01_x_q};

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    matvec_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_q[63:0]);

    // i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,61)@1
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_b[59:0]);
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_b[63:60]);

    // i_mptr_bitcast_index36_matvec0_add_x_p1_of_2(ADD,46)@1 + 1
    assign i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q = i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_o[59:0];

    // SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0(STALLENABLE,113)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V0 = SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_backStall & SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0(STALLREG,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V = SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q;

    // i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,60)@2
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,53)@2
    assign i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,112)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall & SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2(STALLENABLE,103)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2(STALLREG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and1 = SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_c;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1(STALLENABLE,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed0 = (~ (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_valid_out;

    // SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2(STALLENABLE,102)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_1 = SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_V0 & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,109)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,106)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist2_stall_entry_o4_1_0_V0 & SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // join_for_coalesced_delay_0(BITJOIN,70)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_c};

    // coalesced_delay_0_fifo(STALLFIFO,78)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,100)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast35394_matvec1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist2_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // SE_redist2_stall_entry_o4_1_0(STALLENABLE,114)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o4_1_0_V0 = SE_redist2_stall_entry_o4_1_0_R_v_0;
    assign SE_redist2_stall_entry_o4_1_0_V1 = SE_redist2_stall_entry_o4_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o4_1_0_s_tv_0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist2_stall_entry_o4_1_0_R_v_0;
    assign SE_redist2_stall_entry_o4_1_0_s_tv_1 = SE_redist5_stall_entry_o7_3_1_backStall & SE_redist2_stall_entry_o4_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o4_1_0_or0 = SE_redist2_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist2_stall_entry_o4_1_0_backEN = ~ (SE_redist2_stall_entry_o4_1_0_s_tv_1 | SE_redist2_stall_entry_o4_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o4_1_0_v_s_0 = SE_redist2_stall_entry_o4_1_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o4_1_0_backStall = ~ (SE_redist2_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist2_stall_entry_o4_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o4_1_0_R_v_0 <= SE_redist2_stall_entry_o4_1_0_R_v_0 & SE_redist2_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o4_1_0_R_v_0 <= SE_redist2_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist2_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o4_1_0_R_v_1 <= SE_redist2_stall_entry_o4_1_0_R_v_1 & SE_redist2_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist2_stall_entry_o4_1_0_R_v_1 <= SE_redist2_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,87)
    assign bubble_join_stall_entry_q = {in_c1_exe14, in_c0_exe93, in_c0_exe82, in_c0_exe3431};

    // bubble_select_stall_entry(BITSELECT,88)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);

    // redist5_stall_entry_o7_3_0(REG,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_stall_entry_o7_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist5_stall_entry_o7_3_0_q <= $unsigned(bubble_select_stall_entry_e);
        end
    end

    // redist5_stall_entry_o7_3_1(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_stall_entry_o7_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_stall_entry_o7_3_1_backEN == 1'b1)
        begin
            redist5_stall_entry_o7_3_1_q <= $unsigned(redist5_stall_entry_o7_3_0_q);
        end
    end

    // SE_redist5_stall_entry_o7_3_1(STALLENABLE,116)
    // Valid signal propagation
    assign SE_redist5_stall_entry_o7_3_1_V0 = SE_redist5_stall_entry_o7_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist5_stall_entry_o7_3_1_s_tv_0 = SR_SE_redist5_stall_entry_o7_3_2_backStall & SE_redist5_stall_entry_o7_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist5_stall_entry_o7_3_1_backEN = ~ (SE_redist5_stall_entry_o7_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_stall_entry_o7_3_1_v_s_0 = SE_redist5_stall_entry_o7_3_1_backEN & SE_redist2_stall_entry_o4_1_0_V1;
    // Backward Stall generation
    assign SE_redist5_stall_entry_o7_3_1_backStall = ~ (SE_redist5_stall_entry_o7_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_stall_entry_o7_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_stall_entry_o7_3_1_backEN == 1'b0)
            begin
                SE_redist5_stall_entry_o7_3_1_R_v_0 <= SE_redist5_stall_entry_o7_3_1_R_v_0 & SE_redist5_stall_entry_o7_3_1_s_tv_0;
            end
            else
            begin
                SE_redist5_stall_entry_o7_3_1_R_v_0 <= SE_redist5_stall_entry_o7_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist5_stall_entry_o7_3_2(STALLREG,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_stall_entry_o7_3_2_r_valid <= 1'b0;
            SR_SE_redist5_stall_entry_o7_3_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_stall_entry_o7_3_2_r_valid <= SE_redist5_stall_entry_o7_3_2_backStall & (SR_SE_redist5_stall_entry_o7_3_2_r_valid | SR_SE_redist5_stall_entry_o7_3_2_i_valid);

            if (SR_SE_redist5_stall_entry_o7_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_stall_entry_o7_3_2_r_data0 <= $unsigned(redist5_stall_entry_o7_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_stall_entry_o7_3_2_i_valid = SE_redist5_stall_entry_o7_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist5_stall_entry_o7_3_2_backStall = SR_SE_redist5_stall_entry_o7_3_2_r_valid | ~ (SR_SE_redist5_stall_entry_o7_3_2_i_valid);

    // Valid
    assign SR_SE_redist5_stall_entry_o7_3_2_V = SR_SE_redist5_stall_entry_o7_3_2_r_valid == 1'b1 ? SR_SE_redist5_stall_entry_o7_3_2_r_valid : SR_SE_redist5_stall_entry_o7_3_2_i_valid;

    assign SR_SE_redist5_stall_entry_o7_3_2_D0 = SR_SE_redist5_stall_entry_o7_3_2_r_valid == 1'b1 ? SR_SE_redist5_stall_entry_o7_3_2_r_data0 : redist5_stall_entry_o7_3_1_q;

    // redist5_stall_entry_o7_3_2(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_stall_entry_o7_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_stall_entry_o7_3_2_backEN == 1'b1)
        begin
            redist5_stall_entry_o7_3_2_q <= $unsigned(SR_SE_redist5_stall_entry_o7_3_2_D0);
        end
    end

    // SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q(STALLENABLE,104)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_memdep_matvec3_out_o_stall | ~ (SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and1 = SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_wireValid = SE_redist5_stall_entry_o7_3_2_V0 & SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_and1;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4(STALLENABLE,99)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_wireValid = i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_matvec3(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_mem_memdep_matvec3_q = i_llvm_fpga_mem_memdep_matvec3_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_matvec3(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_mem_memdep_matvec3_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_matvec3_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,91)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,92)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,71)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // i_llvm_fpga_push_i1_memdep_phi_push10_matvec4(BLACKBOX,21)@34
    // in in_stall_in@20000000
    // out out_data_out@35
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@35
    matvec_i_llvm_fpga_push_i1_memdep_phi_push10_0 thei_llvm_fpga_push_i1_memdep_phi_push10_matvec4 (
        .in_c0_exe82(sel_for_coalesced_delay_0_b),
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_matvec3_b),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (in_stall_in) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_matvec3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_mptr_bitcast_index36_matvec0_add_x_p2_of_2(ADD,47)@2 + 1
    assign i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_D1}, i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_q = i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_o[5:1];

    // redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q(BITJOIN,48)@3
    assign i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index36_matvec0_add_x_p2_of_2_q, redist1_i_mptr_bitcast_index36_matvec0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index36_matvec0_dupName_0_trunc_sel_x(BITSELECT,4)@3
    assign i_mptr_bitcast_index36_matvec0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_memdep_matvec3(BLACKBOX,20)@3
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_matvec_avm_address@20000000
    // out out_memdep_matvec_avm_burstcount@20000000
    // out out_memdep_matvec_avm_byteenable@20000000
    // out out_memdep_matvec_avm_enable@20000000
    // out out_memdep_matvec_avm_read@20000000
    // out out_memdep_matvec_avm_write@20000000
    // out out_memdep_matvec_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    matvec_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_matvec3 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index36_matvec0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index36_matvec0_add_x_BitJoin_for_q_V0),
        .in_i_writedata(redist5_stall_entry_o7_3_2_q),
        .in_memdep_matvec_avm_readdata(in_memdep_matvec_avm_readdata),
        .in_memdep_matvec_avm_readdatavalid(in_memdep_matvec_avm_readdatavalid),
        .in_memdep_matvec_avm_waitrequest(in_memdep_matvec_avm_waitrequest),
        .in_memdep_matvec_avm_writeack(in_memdep_matvec_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_matvec3_out_lsu_memdep_o_active),
        .out_memdep_matvec_avm_address(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_address),
        .out_memdep_matvec_avm_burstcount(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_burstcount),
        .out_memdep_matvec_avm_byteenable(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_byteenable),
        .out_memdep_matvec_avm_enable(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_enable),
        .out_memdep_matvec_avm_read(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_read),
        .out_memdep_matvec_avm_write(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_write),
        .out_memdep_matvec_avm_writedata(i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_matvec3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_matvec3_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_matvec3_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_matvec3_out_lsu_memdep_o_active;

    // dupName_0_sync_out_x(GPOUT,3)@34
    assign out_c0_exe93 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // ext_sig_sync_out(GPOUT,15)
    assign out_memdep_matvec_avm_address = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_address;
    assign out_memdep_matvec_avm_enable = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_enable;
    assign out_memdep_matvec_avm_read = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_read;
    assign out_memdep_matvec_avm_write = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_write;
    assign out_memdep_matvec_avm_writedata = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_writedata;
    assign out_memdep_matvec_avm_byteenable = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_byteenable;
    assign out_memdep_matvec_avm_burstcount = i_llvm_fpga_mem_memdep_matvec3_out_memdep_matvec_avm_burstcount;

    // feedback_out_10_sync(GPOUT,16)
    assign out_feedback_out_10 = i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,18)
    assign out_feedback_valid_out_10 = i_llvm_fpga_push_i1_memdep_phi_push10_matvec4_out_feedback_valid_out_10;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
