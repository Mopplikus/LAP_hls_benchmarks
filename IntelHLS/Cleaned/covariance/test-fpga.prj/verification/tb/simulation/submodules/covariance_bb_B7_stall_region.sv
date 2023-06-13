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

// SystemVerilog created from bb_covariance_B7_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B7_stall_region (
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance10_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_burstcount,
    output wire [0:0] out_c0_exe4262,
    output wire [31:0] out_c0_exe5263,
    output wire [0:0] out_c0_exe6264,
    output wire [0:0] out_c0_exe7265,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_unnamed_covariance10_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1089_pop34136,
    input wire [0:0] in_forked38,
    input wire [31:0] in_j_077_pop1993_pop36131,
    input wire [31:0] in_lim_ext115,
    input wire [31:0] in_lim_ext80_pop33134,
    input wire [63:0] in_mPtr_bitcast8286129,
    input wire [31:0] in_mul6128,
    input wire [0:0] in_notcmp6991_pop35138,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] covariance_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] covariance_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] covariance_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] covariance_B7_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] covariance_B7_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] covariance_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_c1_exit277_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance7_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_writedata;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [64:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [34:0] join_for_coalesced_delay_2_q;
    wire [31:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [0:0] sel_for_coalesced_delay_2_d;
    wire [0:0] sel_for_coalesced_delay_2_e;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_2_fifo_data_out;
    wire [194:0] bubble_join_covariance_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B7_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_covariance_B7_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_covariance_B7_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B7_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_covariance_B7_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_covariance_B7_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_covariance_B7_merge_reg_aunroll_x_i;
    wire [133:0] bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_j;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_covariance7_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_covariance7_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance10_covariance3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance10_covariance3_b;
    wire [194:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [34:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_out_covariance_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V3;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;


    // join_for_coalesced_delay_2(BITJOIN,51)
    assign join_for_coalesced_delay_2_q = {bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_f};

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance10_covariance3(BITJOIN,71)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance10_covariance3_q = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance10_covariance3(BITSELECT,72)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance10_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance10_covariance3_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,78)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,79)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x(BLACKBOX,9)@41
    // in in_i_stall@20000000
    // out out_c1_exit277_0_tpl@43
    // out out_c1_exit277_1_tpl@43
    // out out_o_stall@20000000
    // out out_o_valid@43
    covariance_i_sfc_s_c1_in_for_body11_s_c1_enter272_covariance5 thei_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x (
        .in_c1_eni4_0_tpl(GND_q),
        .in_c1_eni4_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni4_2_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni4_3_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni4_4_tpl(bubble_select_i_llvm_fpga_mem_unnamed_covariance10_covariance3_b),
        .in_c0_exe2260(sel_for_coalesced_delay_0_c),
        .in_c0_exe8266(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit277_0_tpl(),
        .out_c1_exit277_1_tpl(i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_c1_exit277_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x(BITJOIN,64)
    assign bubble_join_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_q = i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_c1_exit277_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x(BITSELECT,65)
    assign bubble_select_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_q[31:0]);

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,107)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_llvm_fpga_mem_memdep_covariance7_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,81)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,82)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[64:0]);

    // sel_for_coalesced_delay_1(BITSELECT,49)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_covariance7(BLACKBOX,15)@43
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_covariance_avm_address@20000000
    // out out_memdep_covariance_avm_burstcount@20000000
    // out out_memdep_covariance_avm_byteenable@20000000
    // out out_memdep_covariance_avm_enable@20000000
    // out out_memdep_covariance_avm_read@20000000
    // out out_memdep_covariance_avm_write@20000000
    // out out_memdep_covariance_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@74
    // out out_o_writeack@74
    covariance_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_covariance7 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_1_b),
        .in_i_predicate(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_b),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_covariance7_out_lsu_memdep_o_active),
        .out_memdep_covariance_avm_address(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_covariance7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_covariance7_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_covariance7_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_llvm_fpga_mem_memdep_covariance7_out_o_valid & SE_out_coalesced_delay_2_fifo_and0;

    // coalesced_delay_2_fifo(STALLFIFO,55)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V3;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,48)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_d};

    // coalesced_delay_1_fifo(STALLFIFO,54)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
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

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_j};

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(34),
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

    // SE_stall_entry(STALLENABLE,96)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,74)
    assign bubble_join_stall_entry_q = {in_notcmp6991_pop35138, in_mul6128, in_mPtr_bitcast8286129, in_lim_ext80_pop33134, in_lim_ext115, in_j_077_pop1993_pop36131, in_forked38, in_exitcond1089_pop34136};

    // bubble_select_stall_entry(BITSELECT,75)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[194:194]);

    // covariance_B7_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_B7_merge_reg thecovariance_B7_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_stall_in(SE_out_covariance_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(covariance_B7_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_stall_out(covariance_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B7_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_covariance_B7_merge_reg_aunroll_x(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_covariance_B7_merge_reg_aunroll_x_V0 = SE_out_covariance_B7_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B7_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B7_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B7_merge_reg_aunroll_x_wireValid = covariance_B7_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_covariance_B7_merge_reg_aunroll_x(BITJOIN,57)
    assign bubble_join_covariance_B7_merge_reg_aunroll_x_q = {covariance_B7_merge_reg_aunroll_x_out_data_out_7_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B7_merge_reg_aunroll_x(BITSELECT,58)
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[193:193]);
    assign bubble_select_covariance_B7_merge_reg_aunroll_x_i = $unsigned(bubble_join_covariance_B7_merge_reg_aunroll_x_q[194:194]);

    // i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x(BLACKBOX,8)@1
    // in in_i_stall@20000000
    // out out_c0_exit258_0_tpl@9
    // out out_c0_exit258_1_tpl@9
    // out out_c0_exit258_2_tpl@9
    // out out_c0_exit258_3_tpl@9
    // out out_c0_exit258_4_tpl@9
    // out out_c0_exit258_5_tpl@9
    // out out_c0_exit258_6_tpl@9
    // out out_c0_exit258_7_tpl@9
    // out out_c0_exit258_8_tpl@9
    // out out_c0_exit258_9_tpl@9
    // out out_c0_exit258_10_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_for_body11_s_c0_enter24032_covariance1 thei_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x (
        .in_c0_eni8_0_tpl(GND_q),
        .in_c0_eni8_1_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_b),
        .in_c0_eni8_2_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_f),
        .in_c0_eni8_3_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_e),
        .in_c0_eni8_4_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_g),
        .in_c0_eni8_5_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_h),
        .in_c0_eni8_6_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_i),
        .in_c0_eni8_7_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_c),
        .in_c0_eni8_8_tpl(bubble_select_covariance_B7_merge_reg_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B7_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit258_0_tpl(),
        .out_c0_exit258_1_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_1_tpl),
        .out_c0_exit258_2_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_2_tpl),
        .out_c0_exit258_3_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_3_tpl),
        .out_c0_exit258_4_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_4_tpl),
        .out_c0_exit258_5_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_5_tpl),
        .out_c0_exit258_6_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_6_tpl),
        .out_c0_exit258_7_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_7_tpl),
        .out_c0_exit258_8_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_8_tpl),
        .out_c0_exit258_9_tpl(),
        .out_c0_exit258_10_tpl(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_10_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed3 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body11_covariances_c1_enter272_covariance5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x(BITJOIN,61)
    assign bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_10_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_8_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_7_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_6_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_5_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_4_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_3_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_2_tpl, i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_c0_exit258_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x(BITSELECT,62)
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[101:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_q[133:102]);

    // i_llvm_fpga_mem_unnamed_covariance10_covariance3(BLACKBOX,16)@9
    // in in_i_stall@20000000
    // out out_o_readdata@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_covariance10_covariance_avm_address@20000000
    // out out_unnamed_covariance10_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance10_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance10_covariance_avm_enable@20000000
    // out out_unnamed_covariance10_covariance_avm_read@20000000
    // out out_unnamed_covariance10_covariance_avm_write@20000000
    // out out_unnamed_covariance10_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_10_covariance0 thei_llvm_fpga_mem_unnamed_covariance10_covariance3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_V0),
        .in_unnamed_covariance10_covariance_avm_readdata(in_unnamed_covariance10_covariance_avm_readdata),
        .in_unnamed_covariance10_covariance_avm_readdatavalid(in_unnamed_covariance10_covariance_avm_readdatavalid),
        .in_unnamed_covariance10_covariance_avm_waitrequest(in_unnamed_covariance10_covariance_avm_waitrequest),
        .in_unnamed_covariance10_covariance_avm_writeack(in_unnamed_covariance10_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_o_valid),
        .out_unnamed_covariance10_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_address),
        .out_unnamed_covariance10_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_burstcount),
        .out_unnamed_covariance10_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_byteenable),
        .out_unnamed_covariance10_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_enable),
        .out_unnamed_covariance10_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_read),
        .out_unnamed_covariance10_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_write),
        .out_unnamed_covariance10_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_unnamed_covariance10_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_address;
    assign out_unnamed_covariance10_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_enable;
    assign out_unnamed_covariance10_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_read;
    assign out_unnamed_covariance10_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_write;
    assign out_unnamed_covariance10_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_writedata;
    assign out_unnamed_covariance10_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_byteenable;
    assign out_unnamed_covariance10_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance10_covariance3_out_unnamed_covariance10_covariance_avm_burstcount;

    // bubble_join_i_llvm_fpga_mem_memdep_covariance7(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_mem_memdep_covariance7_q = i_llvm_fpga_mem_memdep_covariance7_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_covariance7(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_mem_memdep_covariance7_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_covariance7_q[0:0]);

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,84)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,85)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[34:0]);

    // sel_for_coalesced_delay_2(BITSELECT,52)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[31:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[32:32]);
    assign sel_for_coalesced_delay_2_d = $unsigned(bubble_select_coalesced_delay_2_fifo_b[33:33]);
    assign sel_for_coalesced_delay_2_e = $unsigned(bubble_select_coalesced_delay_2_fifo_b[34:34]);

    // dupName_0_sync_out_x(GPOUT,5)@74
    assign out_c0_exe4262 = sel_for_coalesced_delay_2_c;
    assign out_c0_exe5263 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe6264 = sel_for_coalesced_delay_2_d;
    assign out_c0_exe7265 = sel_for_coalesced_delay_2_e;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_covariance7_b;
    assign out_valid_out = SE_out_coalesced_delay_2_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_memdep_covariance_avm_address = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_address;
    assign out_memdep_covariance_avm_enable = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_enable;
    assign out_memdep_covariance_avm_read = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_read;
    assign out_memdep_covariance_avm_write = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_write;
    assign out_memdep_covariance_avm_writedata = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_writedata;
    assign out_memdep_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_byteenable;
    assign out_memdep_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_covariance7_out_memdep_covariance_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,7)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_covariance7_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body11_covariances_c0_enter24032_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
