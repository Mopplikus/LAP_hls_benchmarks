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

// SystemVerilog created from bb_stencil_2d_B9_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9_stall_region (
    input wire [63:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_025_pop16104,
    input wire [31:0] in_c_025_pop1660_pop32126,
    input wire [31:0] in_dot_prod_add127,
    input wire [0:0] in_exitcond1147_pop20116,
    input wire [0:0] in_exitcond1148_pop27131,
    input wire [0:0] in_exitcond1184,
    input wire [0:0] in_exitcond5128,
    input wire [0:0] in_exitcond856_pop30134,
    input wire [0:0] in_exitcond898,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked37123,
    input wire [0:0] in_memdep_phi1_pop1453_pop22122,
    input wire [0:0] in_memdep_phi1_pop1454_pop29133,
    input wire [0:0] in_memdep_phi1_pop1494,
    input wire [0:0] in_memdep_phi_pop17107,
    input wire [0:0] in_memdep_phi_pop1762_pop33136,
    input wire [31:0] in_mul13_add13124,
    input wire [31:0] in_mul2544_pop19113,
    input wire [31:0] in_mul2545_pop26130,
    input wire [31:0] in_mul2579,
    input wire [0:0] in_notcmp19129,
    input wire [0:0] in_notcmp24101,
    input wire [0:0] in_notcmp2458_pop31135,
    input wire [0:0] in_notcmp2950_pop21119,
    input wire [0:0] in_notcmp2951_pop28132,
    input wire [0:0] in_notcmp2989,
    input wire [31:0] in_r_026_pop1341_pop18110,
    input wire [31:0] in_r_026_pop1342_pop25125,
    input wire [31:0] in_r_026_pop1374,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid,
    output wire [63:0] out_unnamed_stencil_2d7_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_write,
    output wire [63:0] out_unnamed_stencil_2d7_stencil_2d_avm_writedata,
    output wire [7:0] out_unnamed_stencil_2d7_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_burstcount,
    output wire [0:0] out_c0_exe10284,
    output wire [0:0] out_c0_exe11285,
    output wire [0:0] out_c0_exe12286,
    output wire [0:0] out_c0_exe13287,
    output wire [31:0] out_c0_exe14288,
    output wire [0:0] out_c0_exe15289,
    output wire [0:0] out_c0_exe8282,
    output wire [31:0] out_c0_exe9283,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_unnamed_stencil_2d8_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_write,
    output wire [63:0] out_unnamed_stencil_2d8_stencil_2d_avm_writedata,
    output wire [7:0] out_unnamed_stencil_2d8_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_15_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [69:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in;
    wire redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in;
    wire redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_data_in;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out;
    wire redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out;
    wire redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [69:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [69:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_b;
    wire [338:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [202:0] bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_p;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_b;
    wire [338:0] bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_w;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_y;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_z;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_dd;
    wire [0:0] bubble_join_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_q;
    wire [0:0] bubble_select_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [69:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [69:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V3;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,66)
    assign bubble_join_stall_entry_q = {in_r_026_pop1374, in_r_026_pop1342_pop25125, in_r_026_pop1341_pop18110, in_notcmp2989, in_notcmp2951_pop28132, in_notcmp2950_pop21119, in_notcmp2458_pop31135, in_notcmp24101, in_notcmp19129, in_mul2579, in_mul2545_pop26130, in_mul2544_pop19113, in_mul13_add13124, in_memdep_phi_pop1762_pop33136, in_memdep_phi_pop17107, in_memdep_phi1_pop1494, in_memdep_phi1_pop1454_pop29133, in_memdep_phi1_pop1453_pop22122, in_forked37123, in_forked, in_exitcond898, in_exitcond856_pop30134, in_exitcond5128, in_exitcond1184, in_exitcond1148_pop27131, in_exitcond1147_pop20116, in_dot_prod_add127, in_c_025_pop1660_pop32126, in_c_025_pop16104};

    // bubble_select_stall_entry(BITSELECT,67)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[102:102]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[103:103]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[104:104]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[105:105]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[106:106]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[107:107]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[108:108]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[140:109]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[172:141]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[204:173]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[236:205]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[237:237]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[238:238]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[239:239]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[240:240]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[241:241]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[242:242]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[274:243]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[306:275]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[338:307]);

    // SE_stall_entry(STALLENABLE,93)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B9_merge_reg_aunroll_x(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
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
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_data_out_28_tpl@1
    stencil_2d_B9_merge_reg thestencil_2d_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_k),
        .in_data_in_1_tpl(bubble_select_stall_entry_dd),
        .in_data_in_2_tpl(bubble_select_stall_entry_u),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_aa),
        .in_data_in_5_tpl(bubble_select_stall_entry_o),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_w),
        .in_data_in_8_tpl(bubble_select_stall_entry_b),
        .in_data_in_9_tpl(bubble_select_stall_entry_p),
        .in_data_in_10_tpl(bubble_select_stall_entry_bb),
        .in_data_in_11_tpl(bubble_select_stall_entry_s),
        .in_data_in_12_tpl(bubble_select_stall_entry_e),
        .in_data_in_13_tpl(bubble_select_stall_entry_y),
        .in_data_in_14_tpl(bubble_select_stall_entry_m),
        .in_data_in_15_tpl(bubble_select_stall_entry_l),
        .in_data_in_16_tpl(bubble_select_stall_entry_r),
        .in_data_in_17_tpl(bubble_select_stall_entry_cc),
        .in_data_in_18_tpl(bubble_select_stall_entry_c),
        .in_data_in_19_tpl(bubble_select_stall_entry_d),
        .in_data_in_20_tpl(bubble_select_stall_entry_h),
        .in_data_in_21_tpl(bubble_select_stall_entry_v),
        .in_data_in_22_tpl(bubble_select_stall_entry_t),
        .in_data_in_23_tpl(bubble_select_stall_entry_f),
        .in_data_in_24_tpl(bubble_select_stall_entry_z),
        .in_data_in_25_tpl(bubble_select_stall_entry_n),
        .in_data_in_26_tpl(bubble_select_stall_entry_i),
        .in_data_in_27_tpl(bubble_select_stall_entry_x),
        .in_data_in_28_tpl(bubble_select_stall_entry_q),
        .out_stall_out(stencil_2d_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_28_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B9_merge_reg_aunroll_x(BITJOIN,77)
    assign bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q = {stencil_2d_B9_merge_reg_aunroll_x_out_data_out_28_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_27_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_26_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_25_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_24_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_23_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_22_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_21_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_20_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_19_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_stencil_2d_B9_merge_reg_aunroll_x(BITSELECT,78)
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[67:67]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[68:68]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[69:69]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[101:70]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[102:102]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[134:103]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[166:135]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[167:167]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[168:168]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[169:169]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[170:170]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[202:171]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[234:203]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[266:235]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_u = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[298:267]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_v = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[299:299]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_w = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[300:300]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_x = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[332:301]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_y = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[333:333]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_z = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[334:334]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_aa = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[335:335]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_bb = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[336:336]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_cc = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[337:337]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_dd = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[338:338]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_q = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4(BITJOIN,63)
    assign bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_q = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4(BITSELECT,64)
    assign bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_q[31:0]);

    // bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x(BITJOIN,70)
    assign bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_15_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_14_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_13_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_12_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_11_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_10_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_9_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_8_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_7_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_6_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_5_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_4_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_3_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_2_tpl, i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x(BITSELECT,71)
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[67:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[132:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[165:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[168:168]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[169:169]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[201:170]);
    assign bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_q[202:202]);

    // join_for_coalesced_delay_1(BITJOIN,54)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_j};

    // coalesced_delay_1_fifo(STALLFIFO,58)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(70),
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

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,110)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // bubble_join_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo(BITJOIN,81)
    assign bubble_join_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_q = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_data_out;

    // bubble_select_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo(BITSELECT,82)
    assign bubble_select_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_b = $unsigned(bubble_join_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,84)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,85)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,52)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x(BLACKBOX,35)@38
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@42
    // out out_c1_exit_0_tpl@42
    // out out_c1_exit_1_tpl@42
    stencil_2d_i_sfc_s_c1_in_for_body12_s_c1_enter_stencil_2d6 thei_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x (
        .in_c0_exe3277(sel_for_coalesced_delay_0_d),
        .in_forked(bubble_select_redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_b),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_b),
        .in_c1_eni5_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_b),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_4_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_e),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3(BLACKBOX,7)@6
    // in in_i_stall@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    // out out_unnamed_stencil_2d7_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_7_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_f),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_c),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V0),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdata(in_unnamed_stencil_2d7_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d7_stencil_2d_avm_writeack(in_unnamed_stencil_2d7_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_valid),
        .out_unnamed_stencil_2d7_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_address),
        .out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_read),
        .out_unnamed_stencil_2d7_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_write),
        .out_unnamed_stencil_2d7_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4(BLACKBOX,8)@6
    // in in_i_stall@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    // out out_unnamed_stencil_2d8_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_8_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_h),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_c),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V1),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdata(in_unnamed_stencil_2d8_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d8_stencil_2d_avm_writeack(in_unnamed_stencil_2d8_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_valid),
        .out_unnamed_stencil_2d8_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_address),
        .out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_read),
        .out_unnamed_stencil_2d8_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_write),
        .out_unnamed_stencil_2d8_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,51)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,57)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V2;
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
        .DATA_WIDTH(4),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,108)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_valid & SE_out_coalesced_delay_0_fifo_and2;

    // redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo(STALLFIFO,56)
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in = SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0;
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_data_in = bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b;
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in_bitsignaltemp = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in[0];
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in_bitsignaltemp = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in[0];
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out[0] = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out_bitsignaltemp;
    assign redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out[0] = redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo (
        .valid_in(redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b),
        .valid_out(redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_stencil_2d_B9_merge_reg_aunroll_x(STALLENABLE,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg0 <= SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg1 <= SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed0 = (~ (redist0_stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl_37_fifo_stall_out) & SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid) | SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg0;
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_stall) & SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid) | SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_StallValid = SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall & SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid;
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg0 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_StallValid & SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed0;
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_toReg1 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_StallValid & SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_or0 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed0;
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireStall = ~ (SE_out_stencil_2d_B9_merge_reg_aunroll_x_consumed1 & SE_out_stencil_2d_B9_merge_reg_aunroll_x_or0);
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall = SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid & ~ (SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg0);
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_V1 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid & ~ (SE_out_stencil_2d_B9_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid = stencil_2d_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x(STALLENABLE,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit274_0_tpl@6
    // out out_c0_exit274_1_tpl@6
    // out out_c0_exit274_2_tpl@6
    // out out_c0_exit274_3_tpl@6
    // out out_c0_exit274_4_tpl@6
    // out out_c0_exit274_5_tpl@6
    // out out_c0_exit274_6_tpl@6
    // out out_c0_exit274_7_tpl@6
    // out out_c0_exit274_8_tpl@6
    // out out_c0_exit274_9_tpl@6
    // out out_c0_exit274_10_tpl@6
    // out out_c0_exit274_11_tpl@6
    // out out_c0_exit274_12_tpl@6
    // out out_c0_exit274_13_tpl@6
    // out out_c0_exit274_14_tpl@6
    // out out_c0_exit274_15_tpl@6
    // out out_c0_exit274_16_tpl@6
    // out out_c0_exit274_17_tpl@6
    // out out_c0_exit274_18_tpl@6
    // out out_c0_exit274_19_tpl@6
    // out out_c0_exit274_20_tpl@6
    // out out_c0_exit274_21_tpl@6
    // out out_c0_exit274_22_tpl@6
    // out out_c0_exit274_23_tpl@6
    // out out_c0_exit274_24_tpl@6
    // out out_c0_exit274_25_tpl@6
    // out out_c0_exit274_26_tpl@6
    // out out_c0_exit274_27_tpl@6
    // out out_c0_exit274_28_tpl@6
    // out out_c0_exit274_29_tpl@6
    stencil_2d_i_sfc_s_c0_in_for_body12_s_c0_enter23023_stencil_2d1 thei_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B9_merge_reg_aunroll_x_V1),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni29_0_tpl(GND_q),
        .in_c0_eni29_1_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q),
        .in_c0_eni29_2_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b),
        .in_c0_eni29_3_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_v),
        .in_c0_eni29_4_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r),
        .in_c0_eni29_5_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_aa),
        .in_c0_eni29_6_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_dd),
        .in_c0_eni29_7_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_u),
        .in_c0_eni29_8_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s),
        .in_c0_eni29_9_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_x),
        .in_c0_eni29_10_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_y),
        .in_c0_eni29_11_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_z),
        .in_c0_eni29_12_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_bb),
        .in_c0_eni29_13_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_cc),
        .in_c0_eni29_14_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t),
        .in_c0_eni29_15_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_w),
        .in_c0_eni29_16_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c),
        .in_c0_eni29_17_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d),
        .in_c0_eni29_18_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e),
        .in_c0_eni29_19_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f),
        .in_c0_eni29_20_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g),
        .in_c0_eni29_21_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h),
        .in_c0_eni29_22_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i),
        .in_c0_eni29_23_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j),
        .in_c0_eni29_24_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k),
        .in_c0_eni29_25_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l),
        .in_c0_eni29_26_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m),
        .in_c0_eni29_27_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n),
        .in_c0_eni29_28_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o),
        .in_c0_eni29_29_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit274_0_tpl(),
        .out_c0_exit274_1_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_1_tpl),
        .out_c0_exit274_2_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_2_tpl),
        .out_c0_exit274_3_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_3_tpl),
        .out_c0_exit274_4_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_4_tpl),
        .out_c0_exit274_5_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_5_tpl),
        .out_c0_exit274_6_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_6_tpl),
        .out_c0_exit274_7_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_7_tpl),
        .out_c0_exit274_8_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_8_tpl),
        .out_c0_exit274_9_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_9_tpl),
        .out_c0_exit274_10_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_10_tpl),
        .out_c0_exit274_11_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_11_tpl),
        .out_c0_exit274_12_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_12_tpl),
        .out_c0_exit274_13_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_13_tpl),
        .out_c0_exit274_14_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_14_tpl),
        .out_c0_exit274_15_tpl(i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_c0_exit274_15_tpl),
        .out_c0_exit274_16_tpl(),
        .out_c0_exit274_17_tpl(),
        .out_c0_exit274_18_tpl(),
        .out_c0_exit274_19_tpl(),
        .out_c0_exit274_20_tpl(),
        .out_c0_exit274_21_tpl(),
        .out_c0_exit274_22_tpl(),
        .out_c0_exit274_23_tpl(),
        .out_c0_exit274_24_tpl(),
        .out_c0_exit274_25_tpl(),
        .out_c0_exit274_26_tpl(),
        .out_c0_exit274_27_tpl(),
        .out_c0_exit274_28_tpl(),
        .out_c0_exit274_29_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out = i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out = i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,24)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d3_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x(BITJOIN,73)
    assign bubble_join_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_q = i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x(BITSELECT,74)
    assign bubble_select_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,87)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,88)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[69:0]);

    // sel_for_coalesced_delay_1(BITSELECT,55)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[66:66]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[67:67]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[68:68]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[69:69]);

    // dupName_0_sync_out_x(GPOUT,32)@42
    assign out_c0_exe10284 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe11285 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe12286 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe13287 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe14288 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe15289 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe8282 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe9283 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d6_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,33)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d4_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;

endmodule
