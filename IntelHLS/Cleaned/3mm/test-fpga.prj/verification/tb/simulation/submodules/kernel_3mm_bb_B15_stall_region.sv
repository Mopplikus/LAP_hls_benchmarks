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

// SystemVerilog created from bb_kernel_3mm_B15_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B15_stall_region (
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount,
    output wire [31:0] out_c0_exe10490,
    output wire [0:0] out_c0_exe11491,
    output wire [0:0] out_c0_exe12492,
    output wire [0:0] out_c0_exe13493,
    output wire [31:0] out_c0_exe1481,
    output wire [31:0] out_c0_exe2482,
    output wire [63:0] out_c0_exe3483,
    output wire [0:0] out_c0_exe4484,
    output wire [0:0] out_c0_exe5485,
    output wire [0:0] out_c0_exe6486,
    output wire [0:0] out_c0_exe7487,
    output wire [0:0] out_c0_exe8488,
    output wire [0:0] out_memdep_phi8_pop47,
    output wire [31:0] out_unnamed_kernel_3mm29,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_feedback_in_47,
    output wire [0:0] out_feedback_stall_out_47,
    input wire [0:0] in_feedback_valid_in_47,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond34233,
    input wire [0:0] in_forked146,
    input wire [0:0] in_memdep_phi9_pop30239,
    input wire [31:0] in_mul64_add44230,
    input wire [0:0] in_notcmp64236,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B15_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_valid_out;
    wire [167:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in;
    wire redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in;
    wire redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_data_in;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out;
    wire redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out;
    wire redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [167:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [167:0] coalesced_delay_0_fifo_data_out;
    wire [168:0] bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_n;
    wire [35:0] bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_f;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_b;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_q;
    wire [0:0] bubble_select_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_b;
    wire [167:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [167:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V2;
    wire [0:0] SE_out_kernel_3mm_B15_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B15_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B15_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // join_for_coalesced_delay_0(BITJOIN,47)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,50)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V2;
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
        .DATA_WIDTH(168),
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

    // bubble_join_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo(BITJOIN,71)
    assign bubble_join_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_q = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_data_out;

    // bubble_select_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo(BITSELECT,72)
    assign bubble_select_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_b = $unsigned(bubble_join_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3(BLACKBOX,15)@40
    // in in_stall_in@20000000
    // out out_data_out@41
    // out out_feedback_stall_out_47@20000000
    // out out_stall_out@20000000
    // out out_valid_out@41
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi8_pop47_0 thei_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_b),
        .in_feedback_in_47(in_feedback_in_47),
        .in_feedback_valid_in_47(in_feedback_valid_in_47),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_0_fifo_backStall),
        .in_valid_in(SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_feedback_stall_out_47),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_V0 = SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_stall_out | ~ (SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_wireValid = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out;

    // redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo(STALLFIFO,49)
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V1;
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in = SE_out_redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_backStall;
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_j;
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in_bitsignaltemp = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in[0];
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in_bitsignaltemp = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in[0];
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out[0] = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out[0] = redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo (
        .valid_in(redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_j),
        .valid_out(redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,84)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B15_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,67)
    assign bubble_join_stall_entry_q = {in_notcmp64236, in_mul64_add44230, in_memdep_phi9_pop30239, in_forked146, in_exitcond34233};

    // bubble_select_stall_entry(BITSELECT,68)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // kernel_3mm_B15_merge_reg_aunroll_x(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_3mm_B15_merge_reg thekernel_3mm_B15_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_stall_in(SE_out_kernel_3mm_B15_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_stall_out(kernel_3mm_B15_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B15_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kernel_3mm_B15_merge_reg_aunroll_x(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B15_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B15_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B15_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B15_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B15_merge_reg_aunroll_x_wireValid = kernel_3mm_B15_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_kernel_3mm_B15_merge_reg_aunroll_x(BITJOIN,55)
    assign bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q = {kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_4_tpl, kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_3mm_B15_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_3mm_B15_merge_reg_aunroll_x(BITSELECT,56)
    assign bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_f = $unsigned(bubble_join_kernel_3mm_B15_merge_reg_aunroll_x_q[35:35]);

    // i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit480_0_tpl@9
    // out out_c0_exit480_1_tpl@9
    // out out_c0_exit480_2_tpl@9
    // out out_c0_exit480_3_tpl@9
    // out out_c0_exit480_4_tpl@9
    // out out_c0_exit480_5_tpl@9
    // out out_c0_exit480_6_tpl@9
    // out out_c0_exit480_7_tpl@9
    // out out_c0_exit480_8_tpl@9
    // out out_c0_exit480_9_tpl@9
    // out out_c0_exit480_10_tpl@9
    // out out_c0_exit480_11_tpl@9
    // out out_c0_exit480_12_tpl@9
    // out out_c0_exit480_13_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_sfc_s_c0_in_for_body62_s_c0_enter46134_kernel_3mm1 thei_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x (
        .in_c0_eni5460_0_tpl(GND_q),
        .in_c0_eni5460_1_tpl(bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_b),
        .in_c0_eni5460_2_tpl(bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_c),
        .in_c0_eni5460_3_tpl(bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_d),
        .in_c0_eni5460_4_tpl(bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_e),
        .in_c0_eni5460_5_tpl(bubble_select_kernel_3mm_B15_merge_reg_aunroll_x_f),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B15_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit480_0_tpl(),
        .out_c0_exit480_1_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_1_tpl),
        .out_c0_exit480_2_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_2_tpl),
        .out_c0_exit480_3_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_3_tpl),
        .out_c0_exit480_4_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_4_tpl),
        .out_c0_exit480_5_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_5_tpl),
        .out_c0_exit480_6_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_6_tpl),
        .out_c0_exit480_7_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_7_tpl),
        .out_c0_exit480_8_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_8_tpl),
        .out_c0_exit480_9_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl),
        .out_c0_exit480_10_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_10_tpl),
        .out_c0_exit480_11_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_11_tpl),
        .out_c0_exit480_12_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_12_tpl),
        .out_c0_exit480_13_tpl(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_13_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x(STALLENABLE,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed1 = (~ (redist8_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl_31_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x(BITJOIN,52)
    assign bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_13_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_12_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_11_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_10_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_9_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_8_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_7_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_6_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_5_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_4_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_3_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_2_tpl, i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_c0_exit480_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x(BITSELECT,53)
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[128:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[165:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_q[168:168]);

    // i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4(BLACKBOX,14)@9
    // in in_i_stall@20000000
    // out out_o_readdata@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_29_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_V0),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_valid),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4(BITJOIN,59)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_q = i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4(BITSELECT,60)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3(BITJOIN,63)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_q = i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3(BITSELECT,64)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,74)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,75)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[167:0]);

    // sel_for_coalesced_delay_0(BITSELECT,48)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[160:160]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[161:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[162:162]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[163:163]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[164:164]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[165:165]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[166:166]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[167:167]);

    // dupName_0_sync_out_x(GPOUT,3)@41
    assign out_c0_exe10490 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe11491 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe12492 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe13493 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe1481 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2482 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe3483 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4484 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe5485 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe6486 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe7487 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe8488 = sel_for_coalesced_delay_0_j;
    assign out_memdep_phi8_pop47 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_b;
    assign out_unnamed_kernel_3mm29 = bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm29_kernel_3mm4_b;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out = i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out = i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out;

    // feedback_stall_out_47_sync(GPOUT,12)
    assign out_feedback_stall_out_47 = i_llvm_fpga_pop_i1_memdep_phi8_pop47_kernel_3mm3_out_feedback_stall_out_47;

    // pipeline_valid_out_sync(GPOUT,25)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
