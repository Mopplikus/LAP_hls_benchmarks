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

// SystemVerilog created from bb_covariance_B5_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5_stall_region (
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe12,
    output wire [63:0] out_c0_exe3223,
    output wire [31:0] out_c0_exe4224,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c1_exe1232,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond10123,
    input wire [0:0] in_forked54,
    input wire [31:0] in_j_077_pop19125,
    input wire [31:0] in_lim_ext117,
    input wire [31:0] in_lim_ext79_pop21127,
    input wire [0:0] in_memdep_phi_pop20126,
    input wire [0:0] in_notcmp69124,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out;
    wire [63:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_c1_exit231_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_writedata;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [162:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
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
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [162:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [162:0] coalesced_delay_1_fifo_data_out;
    wire [99:0] bubble_join_covariance_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_covariance_B5_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_covariance_B5_merge_reg_aunroll_x_h;
    wire [230:0] bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_m;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance8_covariance3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance8_covariance3_b;
    wire [99:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [162:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [162:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V2;
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


    // join_for_coalesced_delay_1(BITJOIN,44)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_d};

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance8_covariance3(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance8_covariance3_q = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance8_covariance3(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance8_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance8_covariance3_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,67)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,68)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,42)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x(BLACKBOX,6)@41
    // in in_i_stall@20000000
    // out out_c1_exit231_0_tpl@42
    // out out_c1_exit231_1_tpl@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    covariance_i_sfc_s_c1_in_for_body4_s_c1_enter228_covariance5 thei_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x (
        .in_c1_eni3_0_tpl(GND_q),
        .in_c1_eni3_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni3_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_covariance8_covariance3_b),
        .in_c1_eni3_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_exe11(sel_for_coalesced_delay_0_c),
        .in_c0_exe2222(sel_for_coalesced_delay_0_b),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit231_0_tpl(),
        .out_c1_exit231_1_tpl(i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_c1_exit231_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,47)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(163),
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

    // join_for_coalesced_delay_0(BITJOIN,41)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_c};

    // coalesced_delay_0_fifo(STALLFIFO,46)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V1;
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

    // SE_stall_entry(STALLENABLE,80)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,63)
    assign bubble_join_stall_entry_q = {in_notcmp69124, in_memdep_phi_pop20126, in_lim_ext79_pop21127, in_lim_ext117, in_j_077_pop19125, in_forked54, in_exitcond10123};

    // bubble_select_stall_entry(BITSELECT,64)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);

    // covariance_B5_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_B5_merge_reg thecovariance_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_h),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .in_stall_in(SE_out_covariance_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_stall_out(covariance_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_covariance_B5_merge_reg_aunroll_x(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_V0 = SE_out_covariance_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B5_merge_reg_aunroll_x_wireValid = covariance_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_covariance_B5_merge_reg_aunroll_x(BITJOIN,49)
    assign bubble_join_covariance_B5_merge_reg_aunroll_x_q = {covariance_B5_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B5_merge_reg_aunroll_x(BITSELECT,50)
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[66:35]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[67:67]);
    assign bubble_select_covariance_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B5_merge_reg_aunroll_x_q[99:68]);

    // i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x(BLACKBOX,5)@1
    // in in_i_stall@20000000
    // out out_c0_exit220_0_tpl@9
    // out out_c0_exit220_1_tpl@9
    // out out_c0_exit220_2_tpl@9
    // out out_c0_exit220_3_tpl@9
    // out out_c0_exit220_4_tpl@9
    // out out_c0_exit220_5_tpl@9
    // out out_c0_exit220_6_tpl@9
    // out out_c0_exit220_7_tpl@9
    // out out_c0_exit220_8_tpl@9
    // out out_c0_exit220_9_tpl@9
    // out out_c0_exit220_10_tpl@9
    // out out_c0_exit220_11_tpl@9
    // out out_c0_exit220_12_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_for_body4_s_c0_enter21131_covariance1 thei_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x (
        .in_c0_eni7_0_tpl(GND_q),
        .in_c0_eni7_1_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_b),
        .in_c0_eni7_2_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_f),
        .in_c0_eni7_3_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_g),
        .in_c0_eni7_4_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_h),
        .in_c0_eni7_5_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_d),
        .in_c0_eni7_6_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_e),
        .in_c0_eni7_7_tpl(bubble_select_covariance_B5_merge_reg_aunroll_x_c),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit220_0_tpl(),
        .out_c0_exit220_1_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_1_tpl),
        .out_c0_exit220_2_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_2_tpl),
        .out_c0_exit220_3_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_3_tpl),
        .out_c0_exit220_4_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_4_tpl),
        .out_c0_exit220_5_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_5_tpl),
        .out_c0_exit220_6_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_6_tpl),
        .out_c0_exit220_7_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_7_tpl),
        .out_c0_exit220_8_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_8_tpl),
        .out_c0_exit220_9_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_9_tpl),
        .out_c0_exit220_10_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_10_tpl),
        .out_c0_exit220_11_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_11_tpl),
        .out_c0_exit220_12_tpl(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_12_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x(BITJOIN,53)
    assign bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_12_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_11_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_10_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_9_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_8_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_7_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_6_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_5_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_4_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_3_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_2_tpl, i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_c0_exit220_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x(BITSELECT,54)
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[161:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[196:196]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_q[230:199]);

    // i_llvm_fpga_mem_unnamed_covariance8_covariance3(BLACKBOX,13)@9
    // in in_i_stall@20000000
    // out out_o_readdata@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_covariance8_covariance_avm_address@20000000
    // out out_unnamed_covariance8_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance8_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance8_covariance_avm_enable@20000000
    // out out_unnamed_covariance8_covariance_avm_read@20000000
    // out out_unnamed_covariance8_covariance_avm_write@20000000
    // out out_unnamed_covariance8_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_8_covariance0 thei_llvm_fpga_mem_unnamed_covariance8_covariance3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_f),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_V0),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_o_valid),
        .out_unnamed_covariance8_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_covariance8_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_address;
    assign out_unnamed_covariance8_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_enable;
    assign out_unnamed_covariance8_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_read;
    assign out_unnamed_covariance8_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_write;
    assign out_unnamed_covariance8_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_writedata;
    assign out_unnamed_covariance8_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_byteenable;
    assign out_unnamed_covariance8_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance8_covariance3_out_unnamed_covariance8_covariance_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_q = i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_out_c1_exit231_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,70)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,71)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[162:0]);

    // sel_for_coalesced_delay_1(BITSELECT,45)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[160:160]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[161:161]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[162:162]);

    // dupName_0_sync_out_x(GPOUT,4)@42
    assign out_c0_exe10 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe12 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe3223 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe4224 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe8 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe9 = sel_for_coalesced_delay_1_g;
    assign out_c1_exe1232 = bubble_select_i_sfc_s_c1_in_for_body4_covariances_c1_enter228_covariance5_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // ext_sig_sync_out(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going57_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,25)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_for_body4_covariances_c0_enter21131_covariance1_aunroll_x_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,29)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
