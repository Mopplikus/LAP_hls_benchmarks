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

// SystemVerilog created from bb_kernel_2mm_B17_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B17_stall_region (
    input wire [31:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exe10371,
    output wire [0:0] out_c0_exe11372,
    output wire [0:0] out_c0_exe6367,
    output wire [0:0] out_c0_exe7368,
    output wire [0:0] out_c0_exe8369,
    output wire [63:0] out_c0_exe9370,
    output wire [31:0] out_c1_exe1390,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount,
    input wire [31:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond21175,
    input wire [0:0] in_exitcond24119_pop43179,
    input wire [0:0] in_exitcond24164,
    input wire [0:0] in_forked,
    input wire [31:0] in_i48_078_pop25115_pop41178,
    input wire [31:0] in_i48_078_pop25158,
    input wire [31:0] in_j53_077_pop39171,
    input wire [63:0] in_mPtr_bitcast_index92173,
    input wire [0:0] in_memdep_phi3_pop26123_pop45181,
    input wire [0:0] in_memdep_phi3_pop26170,
    input wire [0:0] in_memdep_phi_pop40177,
    input wire [31:0] in_mul59_add30117_pop42172,
    input wire [31:0] in_mul59_add30161,
    input wire [31:0] in_mul62174,
    input wire [0:0] in_notcmp41176,
    input wire [0:0] in_notcmp46121_pop44180,
    input wire [0:0] in_notcmp46167,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    wire [31:0] i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_c1_exit389_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_valid;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [63:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_2mm_B17_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;
    wire [65:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [68:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [65:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [68:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [68:0] coalesced_delay_1_fifo_data_out;
    wire [200:0] bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_n;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_b;
    wire [265:0] bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_i;
    wire [63:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_r;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_b;
    wire [265:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [65:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [65:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [68:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [68:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V2;
    wire [0:0] SE_out_kernel_2mm_B17_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_2mm_B17_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_2mm_B17_merge_reg_aunroll_x_V0;
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


    // SE_stall_entry(STALLENABLE,82)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_2mm_B17_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,65)
    assign bubble_join_stall_entry_q = {in_notcmp46167, in_notcmp46121_pop44180, in_notcmp41176, in_mul62174, in_mul59_add30161, in_mul59_add30117_pop42172, in_memdep_phi_pop40177, in_memdep_phi3_pop26170, in_memdep_phi3_pop26123_pop45181, in_mPtr_bitcast_index92173, in_j53_077_pop39171, in_i48_078_pop25158, in_i48_078_pop25115_pop41178, in_forked, in_exitcond24164, in_exitcond24119_pop43179, in_exitcond21175};

    // bubble_select_stall_entry(BITSELECT,66)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[198:167]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[230:199]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[262:231]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[265:265]);

    // kernel_2mm_B17_merge_reg_aunroll_x(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_B17_merge_reg thekernel_2mm_B17_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_e),
        .in_data_in_1_tpl(bubble_select_stall_entry_g),
        .in_data_in_2_tpl(bubble_select_stall_entry_n),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_r),
        .in_data_in_5_tpl(bubble_select_stall_entry_k),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_m),
        .in_data_in_8_tpl(bubble_select_stall_entry_i),
        .in_data_in_9_tpl(bubble_select_stall_entry_o),
        .in_data_in_10_tpl(bubble_select_stall_entry_b),
        .in_data_in_11_tpl(bubble_select_stall_entry_p),
        .in_data_in_12_tpl(bubble_select_stall_entry_l),
        .in_data_in_13_tpl(bubble_select_stall_entry_f),
        .in_data_in_14_tpl(bubble_select_stall_entry_c),
        .in_data_in_15_tpl(bubble_select_stall_entry_q),
        .in_data_in_16_tpl(bubble_select_stall_entry_j),
        .in_stall_in(SE_out_kernel_2mm_B17_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_stall_out(kernel_2mm_B17_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_2mm_B17_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kernel_2mm_B17_merge_reg_aunroll_x(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_kernel_2mm_B17_merge_reg_aunroll_x_V0 = SE_out_kernel_2mm_B17_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_2mm_B17_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_2mm_B17_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_2mm_B17_merge_reg_aunroll_x_wireValid = kernel_2mm_B17_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x(BITJOIN,51)
    assign bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_18_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_12_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_11_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_10_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_9_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_8_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_7_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_6_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_5_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_4_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_3_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_2_tpl, i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x(BITSELECT,52)
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[101:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[165:102]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[168:168]);
    assign bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_q[200:169]);

    // join_for_coalesced_delay_1(BITJOIN,46)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_j};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,69)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,70)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[65:0]);

    // sel_for_coalesced_delay_0(BITSELECT,44)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[65:65]);

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3(BITJOIN,62)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_q = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3(BITSELECT,63)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_q[31:0]);

    // i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x(BLACKBOX,7)@44
    // in in_i_stall@20000000
    // out out_c1_exit389_0_tpl@49
    // out out_c1_exit389_1_tpl@49
    // out out_o_stall@20000000
    // out out_o_valid@49
    kernel_2mm_i_sfc_s_c1_in_for_body67_s_c1_enter382_kernel_2mm5 thei_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x (
        .in_c1_eni5381_0_tpl(GND_q),
        .in_c1_eni5381_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_b),
        .in_c1_eni5381_2_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5381_3_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni5381_4_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni5381_5_tpl(sel_for_coalesced_delay_0_d),
        .in_c0_exe12373(sel_for_coalesced_delay_0_e),
        .in_c0_exe2363(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit389_0_tpl(),
        .out_c1_exit389_1_tpl(i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_c1_exit389_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,49)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(69),
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

    // join_for_coalesced_delay_0(BITJOIN,43)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,48)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V1;
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
        .DATA_WIDTH(66),
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

    // i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3(BLACKBOX,14)@12
    // in in_i_stall@20000000
    // out out_o_readdata@44
    // out out_o_stall@20000000
    // out out_o_valid@44
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_22_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_e),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V0),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_valid),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_valid;

    // bubble_join_kernel_2mm_B17_merge_reg_aunroll_x(BITJOIN,58)
    assign bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q = {kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_16_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_15_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_14_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_13_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_12_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_11_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_10_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_9_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_8_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_7_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_6_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_5_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_4_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_2mm_B17_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_2mm_B17_merge_reg_aunroll_x(BITSELECT,59)
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_f = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_g = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[67:67]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_h = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[99:68]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_i = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[131:100]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_j = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[195:132]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_k = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[227:196]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_l = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[228:228]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_m = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[229:229]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_n = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[230:230]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_o = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[262:231]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_p = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[263:263]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_q = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[264:264]);
    assign bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_r = $unsigned(bubble_join_kernel_2mm_B17_merge_reg_aunroll_x_q[265:265]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_c0_exit361_0_tpl@12
    // out out_c0_exit361_1_tpl@12
    // out out_c0_exit361_2_tpl@12
    // out out_c0_exit361_3_tpl@12
    // out out_c0_exit361_4_tpl@12
    // out out_c0_exit361_5_tpl@12
    // out out_c0_exit361_6_tpl@12
    // out out_c0_exit361_7_tpl@12
    // out out_c0_exit361_8_tpl@12
    // out out_c0_exit361_9_tpl@12
    // out out_c0_exit361_10_tpl@12
    // out out_c0_exit361_11_tpl@12
    // out out_c0_exit361_12_tpl@12
    // out out_c0_exit361_13_tpl@12
    // out out_c0_exit361_14_tpl@12
    // out out_c0_exit361_15_tpl@12
    // out out_c0_exit361_16_tpl@12
    // out out_c0_exit361_17_tpl@12
    // out out_c0_exit361_18_tpl@12
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_sfc_s_c0_in_for_body67_s_c0_enter33424_kernel_2mm1 thei_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x (
        .in_c0_eni17_0_tpl(GND_q),
        .in_c0_eni17_1_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_b),
        .in_c0_eni17_2_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_o),
        .in_c0_eni17_3_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_h),
        .in_c0_eni17_4_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_r),
        .in_c0_eni17_5_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_n),
        .in_c0_eni17_6_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_i),
        .in_c0_eni17_7_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_p),
        .in_c0_eni17_8_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_q),
        .in_c0_eni17_9_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_j),
        .in_c0_eni17_10_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_l),
        .in_c0_eni17_11_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_m),
        .in_c0_eni17_12_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_c),
        .in_c0_eni17_13_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_d),
        .in_c0_eni17_14_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_e),
        .in_c0_eni17_15_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_f),
        .in_c0_eni17_16_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_g),
        .in_c0_eni17_17_tpl(bubble_select_kernel_2mm_B17_merge_reg_aunroll_x_k),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_2mm_B17_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack),
        .out_c0_exit361_0_tpl(),
        .out_c0_exit361_1_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_1_tpl),
        .out_c0_exit361_2_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_2_tpl),
        .out_c0_exit361_3_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_3_tpl),
        .out_c0_exit361_4_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_4_tpl),
        .out_c0_exit361_5_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_5_tpl),
        .out_c0_exit361_6_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_6_tpl),
        .out_c0_exit361_7_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_7_tpl),
        .out_c0_exit361_8_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_8_tpl),
        .out_c0_exit361_9_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_9_tpl),
        .out_c0_exit361_10_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_10_tpl),
        .out_c0_exit361_11_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_11_tpl),
        .out_c0_exit361_12_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_12_tpl),
        .out_c0_exit361_13_tpl(),
        .out_c0_exit361_14_tpl(),
        .out_c0_exit361_15_tpl(),
        .out_c0_exit361_16_tpl(),
        .out_c0_exit361_17_tpl(),
        .out_c0_exit361_18_tpl(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_c0_exit361_18_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_address(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_read(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_write(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_address = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_enable = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_read = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_write = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x(BITJOIN,54)
    assign bubble_join_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_q = i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_out_c1_exit389_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x(BITSELECT,55)
    assign bubble_select_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,72)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,73)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[68:0]);

    // sel_for_coalesced_delay_1(BITSELECT,47)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[66:66]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[67:67]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[68:68]);

    // dupName_0_sync_out_x(GPOUT,4)@49
    assign out_c0_exe10371 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe11372 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe6367 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe7368 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe8369 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe9370 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe1390 = bubble_select_i_sfc_s_c1_in_for_body67_kernel_2mms_c1_enter382_kernel_2mm5_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm22_kernel_2mm3_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
