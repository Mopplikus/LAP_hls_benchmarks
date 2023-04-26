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

// SystemVerilog created from bb_bicg_B3_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr 26 14:15:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B3_stall_region (
    input wire [31:0] in_unnamed_bicg2_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg2_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_burstcount,
    input wire [0:0] in_feedback_almost_empty_in_11,
    input wire [0:0] in_feedback_data_in_11,
    input wire [0:0] in_feedback_empty_in_11,
    output wire [0:0] out_feedback_stall_out_11,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_memdep_phi3_pop829,
    input wire [0:0] in_memdep_phi_pop726,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe10,
    output wire [63:0] out_c0_exe153,
    output wire [63:0] out_c0_exe254,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_memdep_phi2_pop11,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl;
    wire [165:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [165:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [165:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_b;
    wire [1:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [166:0] bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_k;
    wire [165:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [165:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_backStall;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V1;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V2;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] stall_entry_o4_reg1_q;
    reg [0:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [165:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [165:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o5_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_memdep_phi_pop726);
        end
    end

    // stall_entry_o5_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_memdep_phi3_pop829);
        end
    end

    // stall_entry_o4_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,43)
    assign bubble_join_stall_entry_q = {stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,44)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg1(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg0(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg1(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg0(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg0(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg1(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5(STALLENABLE,84)
    // Sync
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_temp_back_stall = in_stall_in;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_fast_read = ~ ((i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out_reg1_q | coalesced_delay_0_fifo_o_almost_empty_reg1_q));
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_slow_read = ~ ((i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out_reg1_q | coalesced_delay_0_fifo_o_empty_reg1_q));
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_backStall = ~ (merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_forced_read);
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_no_space_for_result = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_temp_back_stall;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0 = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_forced_read;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_no_space_for_result[0];
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg0(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_backStall);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg1(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg2(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg2_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg1_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_sync_balance_reg2_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg1(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x(BITJOIN,47)
    assign bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q = {i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl_reg1_q, i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x(BITSELECT,48)
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[128:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[160:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[161:161]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_q[166:166]);

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5(BLACKBOX,12)@39
    // in in_stall_in@20000000
    // out out_almost_empty_out@56
    // out out_data_out@56
    // out out_empty_out@56
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@56
    bicg_i_llvm_fpga_pop_i1_memdep_phi2_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V5),
        .in_data_in(GND_q),
        .in_dir_in(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_i),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V3),
        .in_feedback_almost_empty_in_11(in_feedback_almost_empty_in_11),
        .in_feedback_data_in_11(in_feedback_data_in_11),
        .in_feedback_empty_in_11(in_feedback_empty_in_11),
        .in_stall_in(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V1),
        .out_almost_empty_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_empty_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // join_for_coalesced_delay_0(BITJOIN,35)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_b};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,37)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V0;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V2;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V4;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(35),
        .WIDTH(166),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x(STALLENABLE,83)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_temp_back_stall = coalesced_delay_0_fifo_o_stall | i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_stall_out;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V0 = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V2 = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V4 = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V2;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_V4;

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg0(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg1(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,82)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x(BLACKBOX,24)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@39
    // out out_empty_out@39
    // out out_o_stall@20000000
    // out out_o_valid@39
    // out out_unnamed_bicg2_bicg_avm_address@20000000
    // out out_unnamed_bicg2_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg2_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg2_bicg_avm_enable@20000000
    // out out_unnamed_bicg2_bicg_avm_read@20000000
    // out out_unnamed_bicg2_bicg_avm_write@20000000
    // out out_unnamed_bicg2_bicg_avm_writedata@20000000
    // out out_c0_exit52_0_tpl@39
    // out out_c0_exit52_1_tpl@39
    // out out_c0_exit52_2_tpl@39
    // out out_c0_exit52_3_tpl@39
    // out out_c0_exit52_4_tpl@39
    // out out_c0_exit52_5_tpl@39
    // out out_c0_exit52_6_tpl@39
    // out out_c0_exit52_7_tpl@39
    // out out_c0_exit52_8_tpl@39
    // out out_c0_exit52_9_tpl@39
    // out out_c0_exit52_10_tpl@39
    bicg_i_sfc_s_c0_in_for_body_s_c0_enter488_bicg3 thei_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_unnamed_bicg2_bicg_avm_readdata(in_unnamed_bicg2_bicg_avm_readdata),
        .in_unnamed_bicg2_bicg_avm_readdatavalid(in_unnamed_bicg2_bicg_avm_readdatavalid),
        .in_unnamed_bicg2_bicg_avm_waitrequest(in_unnamed_bicg2_bicg_avm_waitrequest),
        .in_unnamed_bicg2_bicg_avm_writeack(in_unnamed_bicg2_bicg_avm_writeack),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(GND_q),
        .in_c0_eni3_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni3_3_tpl(bubble_select_stall_entry_b),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_o_valid),
        .out_unnamed_bicg2_bicg_avm_address(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_address),
        .out_unnamed_bicg2_bicg_avm_burstcount(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_burstcount),
        .out_unnamed_bicg2_bicg_avm_byteenable(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_byteenable),
        .out_unnamed_bicg2_bicg_avm_enable(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_enable),
        .out_unnamed_bicg2_bicg_avm_read(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_read),
        .out_unnamed_bicg2_bicg_avm_write(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_write),
        .out_unnamed_bicg2_bicg_avm_writedata(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_writedata),
        .out_c0_exit52_0_tpl(),
        .out_c0_exit52_1_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_1_tpl),
        .out_c0_exit52_2_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_2_tpl),
        .out_c0_exit52_3_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_3_tpl),
        .out_c0_exit52_4_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_4_tpl),
        .out_c0_exit52_5_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_5_tpl),
        .out_c0_exit52_6_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_6_tpl),
        .out_c0_exit52_7_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_7_tpl),
        .out_c0_exit52_8_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_8_tpl),
        .out_c0_exit52_9_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_9_tpl),
        .out_c0_exit52_10_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_c0_exit52_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_bicg2_bicg_avm_address = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_address;
    assign out_unnamed_bicg2_bicg_avm_enable = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_enable;
    assign out_unnamed_bicg2_bicg_avm_read = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_read;
    assign out_unnamed_bicg2_bicg_avm_write = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_write;
    assign out_unnamed_bicg2_bicg_avm_writedata = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_writedata;
    assign out_unnamed_bicg2_bicg_avm_byteenable = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_byteenable;
    assign out_unnamed_bicg2_bicg_avm_burstcount = i_sfc_s_c0_in_for_body_bicgs_c0_enter488_bicg3_aunroll_x_out_unnamed_bicg2_bicg_avm_burstcount;

    // feedback_stall_out_11_sync(GPOUT,11)
    assign out_feedback_stall_out_11 = i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_feedback_stall_out_11;

    // stall_entry_frontStall_reg0(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,21)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg1(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg2(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg3(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg4(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg5(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg6(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg0(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg1(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_q = i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_q[0:0]);

    // coalesced_delay_0_fifo_o_data_reg0(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,50)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,51)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[165:0]);

    // sel_for_coalesced_delay_0(BITSELECT,36)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[160:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[161:161]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[162:162]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[163:163]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[164:164]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[165:165]);

    // dupName_0_sync_out_x(GPOUT,23)@56
    assign out_almost_empty_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V2;
    assign out_c0_exe10 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe153 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe254 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_i;
    assign out_empty_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V1;
    assign out_memdep_phi2_pop11 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_b;
    assign out_valid_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop11_bicg5_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,155)
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
