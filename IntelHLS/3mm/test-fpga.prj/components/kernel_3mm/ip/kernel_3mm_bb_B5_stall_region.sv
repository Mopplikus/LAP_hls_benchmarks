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

// SystemVerilog created from bb_kernel_3mm_B5_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B5_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe103758,
    input wire [31:0] in_c0_exe113769,
    input wire [0:0] in_c0_exe1237710,
    input wire [63:0] in_c0_exe1337811,
    input wire [63:0] in_c0_exe13661,
    input wire [0:0] in_c0_exe1437912,
    input wire [0:0] in_c0_exe1538013,
    input wire [0:0] in_c0_exe1638114,
    input wire [0:0] in_c0_exe1738215,
    input wire [0:0] in_c0_exe1838316,
    input wire [0:0] in_c0_exe1938417,
    input wire [31:0] in_c0_exe2038518,
    input wire [0:0] in_c0_exe2138619,
    input wire [0:0] in_c0_exe2238720,
    input wire [0:0] in_c0_exe2338821,
    input wire [63:0] in_c0_exe23672,
    input wire [0:0] in_c0_exe2438922,
    input wire [0:0] in_c0_exe2539023,
    input wire [0:0] in_c0_exe2624,
    input wire [31:0] in_c0_exe33683,
    input wire [0:0] in_c0_exe63714,
    input wire [0:0] in_c0_exe73725,
    input wire [0:0] in_c0_exe83736,
    input wire [0:0] in_c0_exe93747,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe103758,
    output wire [31:0] out_c0_exe113769,
    output wire [0:0] out_c0_exe1237710,
    output wire [63:0] out_c0_exe13661,
    output wire [63:0] out_c0_exe1401,
    output wire [0:0] out_c0_exe1437912,
    output wire [0:0] out_c0_exe1538013,
    output wire [0:0] out_c0_exe1638114,
    output wire [0:0] out_c0_exe1738215,
    output wire [0:0] out_c0_exe1838316,
    output wire [0:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe2038518,
    output wire [0:0] out_c0_exe2138619,
    output wire [0:0] out_c0_exe2238720,
    output wire [0:0] out_c0_exe2338821,
    output wire [63:0] out_c0_exe23672,
    output wire [31:0] out_c0_exe2402,
    output wire [0:0] out_c0_exe2438922,
    output wire [0:0] out_c0_exe2539023,
    output wire [0:0] out_c0_exe2624,
    output wire [0:0] out_c0_exe63714,
    output wire [0:0] out_c0_exe73725,
    output wire [0:0] out_c0_exe83736,
    output wire [0:0] out_c0_exe93747,
    output wire [0:0] out_c1_exe1,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl;
    wire [209:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
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
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] sel_for_coalesced_delay_0_v;
    wire [0:0] sel_for_coalesced_delay_0_w;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [209:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [209:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [305:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [63:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_c;
    wire [0:0] bubble_join_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_b;
    wire [209:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [209:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V6;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V7;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V8;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
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
    reg [31:0] stall_entry_o5_reg1_q;
    reg [31:0] stall_entry_o5_reg0_q;
    reg [0:0] stall_entry_o6_reg1_q;
    reg [0:0] stall_entry_o6_reg0_q;
    reg [63:0] stall_entry_o7_reg1_q;
    reg [63:0] stall_entry_o7_reg0_q;
    reg [63:0] stall_entry_o8_reg1_q;
    reg [63:0] stall_entry_o8_reg0_q;
    reg [0:0] stall_entry_o9_reg1_q;
    reg [0:0] stall_entry_o9_reg0_q;
    reg [0:0] stall_entry_o10_reg1_q;
    reg [0:0] stall_entry_o10_reg0_q;
    reg [0:0] stall_entry_o11_reg1_q;
    reg [0:0] stall_entry_o11_reg0_q;
    reg [0:0] stall_entry_o12_reg1_q;
    reg [0:0] stall_entry_o12_reg0_q;
    reg [0:0] stall_entry_o13_reg1_q;
    reg [0:0] stall_entry_o13_reg0_q;
    reg [0:0] stall_entry_o14_reg1_q;
    reg [0:0] stall_entry_o14_reg0_q;
    reg [31:0] stall_entry_o15_reg1_q;
    reg [31:0] stall_entry_o15_reg0_q;
    reg [0:0] stall_entry_o16_reg1_q;
    reg [0:0] stall_entry_o16_reg0_q;
    reg [0:0] stall_entry_o17_reg1_q;
    reg [0:0] stall_entry_o17_reg0_q;
    reg [0:0] stall_entry_o18_reg1_q;
    reg [0:0] stall_entry_o18_reg0_q;
    reg [63:0] stall_entry_o19_reg1_q;
    reg [63:0] stall_entry_o19_reg0_q;
    reg [0:0] stall_entry_o20_reg1_q;
    reg [0:0] stall_entry_o20_reg0_q;
    reg [0:0] stall_entry_o21_reg1_q;
    reg [0:0] stall_entry_o21_reg0_q;
    reg [0:0] stall_entry_o22_reg1_q;
    reg [0:0] stall_entry_o22_reg0_q;
    reg [31:0] stall_entry_o23_reg1_q;
    reg [31:0] stall_entry_o23_reg0_q;
    reg [0:0] stall_entry_o24_reg1_q;
    reg [0:0] stall_entry_o24_reg0_q;
    reg [0:0] stall_entry_o25_reg1_q;
    reg [0:0] stall_entry_o25_reg0_q;
    reg [0:0] stall_entry_o26_reg1_q;
    reg [0:0] stall_entry_o26_reg0_q;
    reg [0:0] stall_entry_o27_reg1_q;
    reg [0:0] stall_entry_o27_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [209:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [209:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o27_reg0(REG,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg0_q <= $unsigned(in_c0_exe93747);
        end
    end

    // stall_entry_o27_reg1(REG,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg1_q <= $unsigned(stall_entry_o27_reg0_q);
        end
    end

    // stall_entry_o26_reg0(REG,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg0_q <= $unsigned(in_c0_exe83736);
        end
    end

    // stall_entry_o26_reg1(REG,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg1_q <= $unsigned(stall_entry_o26_reg0_q);
        end
    end

    // stall_entry_o25_reg0(REG,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg0_q <= $unsigned(in_c0_exe73725);
        end
    end

    // stall_entry_o25_reg1(REG,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg1_q <= $unsigned(stall_entry_o25_reg0_q);
        end
    end

    // stall_entry_o24_reg0(REG,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg0_q <= $unsigned(in_c0_exe63714);
        end
    end

    // stall_entry_o24_reg1(REG,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg1_q <= $unsigned(stall_entry_o24_reg0_q);
        end
    end

    // stall_entry_o23_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg0_q <= $unsigned(in_c0_exe33683);
        end
    end

    // stall_entry_o23_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg1_q <= $unsigned(stall_entry_o23_reg0_q);
        end
    end

    // stall_entry_o22_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg0_q <= $unsigned(in_c0_exe2624);
        end
    end

    // stall_entry_o22_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg1_q <= $unsigned(stall_entry_o22_reg0_q);
        end
    end

    // stall_entry_o21_reg0(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg0_q <= $unsigned(in_c0_exe2539023);
        end
    end

    // stall_entry_o21_reg1(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg1_q <= $unsigned(stall_entry_o21_reg0_q);
        end
    end

    // stall_entry_o20_reg0(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg0_q <= $unsigned(in_c0_exe2438922);
        end
    end

    // stall_entry_o20_reg1(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg1_q <= $unsigned(stall_entry_o20_reg0_q);
        end
    end

    // stall_entry_o19_reg0(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg0_q <= $unsigned(in_c0_exe23672);
        end
    end

    // stall_entry_o19_reg1(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg1_q <= $unsigned(stall_entry_o19_reg0_q);
        end
    end

    // stall_entry_o18_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg0_q <= $unsigned(in_c0_exe2338821);
        end
    end

    // stall_entry_o18_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg1_q <= $unsigned(stall_entry_o18_reg0_q);
        end
    end

    // stall_entry_o17_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg0_q <= $unsigned(in_c0_exe2238720);
        end
    end

    // stall_entry_o17_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg1_q <= $unsigned(stall_entry_o17_reg0_q);
        end
    end

    // stall_entry_o16_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg0_q <= $unsigned(in_c0_exe2138619);
        end
    end

    // stall_entry_o16_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg1_q <= $unsigned(stall_entry_o16_reg0_q);
        end
    end

    // stall_entry_o15_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= $unsigned(in_c0_exe2038518);
        end
    end

    // stall_entry_o15_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg1_q <= $unsigned(stall_entry_o15_reg0_q);
        end
    end

    // stall_entry_o14_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= $unsigned(in_c0_exe1938417);
        end
    end

    // stall_entry_o14_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg1_q <= $unsigned(stall_entry_o14_reg0_q);
        end
    end

    // stall_entry_o13_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= $unsigned(in_c0_exe1838316);
        end
    end

    // stall_entry_o13_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg1_q <= $unsigned(stall_entry_o13_reg0_q);
        end
    end

    // stall_entry_o12_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= $unsigned(in_c0_exe1738215);
        end
    end

    // stall_entry_o12_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg1_q <= $unsigned(stall_entry_o12_reg0_q);
        end
    end

    // stall_entry_o11_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= $unsigned(in_c0_exe1638114);
        end
    end

    // stall_entry_o11_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg1_q <= $unsigned(stall_entry_o11_reg0_q);
        end
    end

    // stall_entry_o10_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= $unsigned(in_c0_exe1538013);
        end
    end

    // stall_entry_o10_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg1_q <= $unsigned(stall_entry_o10_reg0_q);
        end
    end

    // stall_entry_o9_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_c0_exe1437912);
        end
    end

    // stall_entry_o9_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= $unsigned(stall_entry_o9_reg0_q);
        end
    end

    // stall_entry_o8_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_c0_exe13661);
        end
    end

    // stall_entry_o8_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= $unsigned(stall_entry_o8_reg0_q);
        end
    end

    // stall_entry_o7_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_c0_exe1337811);
        end
    end

    // stall_entry_o7_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= $unsigned(stall_entry_o7_reg0_q);
        end
    end

    // stall_entry_o6_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_c0_exe1237710);
        end
    end

    // stall_entry_o6_reg1(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= $unsigned(stall_entry_o6_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_c0_exe113769);
        end
    end

    // stall_entry_o5_reg1(REG,117)
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

    // stall_entry_o4_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_c0_exe103758);
        end
    end

    // stall_entry_o4_reg1(REG,115)
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

    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = {stall_entry_o27_reg1_q, stall_entry_o26_reg1_q, stall_entry_o25_reg1_q, stall_entry_o24_reg1_q, stall_entry_o23_reg1_q, stall_entry_o22_reg1_q, stall_entry_o21_reg1_q, stall_entry_o20_reg1_q, stall_entry_o19_reg1_q, stall_entry_o18_reg1_q, stall_entry_o17_reg1_q, stall_entry_o16_reg1_q, stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[164:164]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[166:166]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[167:167]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[199:168]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[200:200]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[201:201]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[202:202]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[266:203]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[267:267]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[268:268]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[269:269]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[301:270]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[302:302]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[303:303]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[304:304]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[305:305]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg0(REG,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg1(REG,176)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@37
    // out out_empty_out@37
    // out out_memdep_kernel_3mm_avm_address@20000000
    // out out_memdep_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_kernel_3mm_avm_enable@20000000
    // out out_memdep_kernel_3mm_avm_read@20000000
    // out out_memdep_kernel_3mm_avm_write@20000000
    // out out_memdep_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_c1_exit_0_tpl@37
    // out out_c1_exit_1_tpl@37
    kernel_3mm_i_sfc_s_c1_in_for_end_s_c1_enter_kernel_3mm8 thei_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V8),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V5),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V2),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_c1_eni3_0_tpl(GND_q),
        .in_c1_eni3_1_tpl(bubble_select_stall_entry_u),
        .in_c1_eni3_2_tpl(bubble_select_stall_entry_e),
        .in_c1_eni3_3_tpl(bubble_select_stall_entry_y),
        .out_almost_empty_out(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out),
        .out_memdep_kernel_3mm_avm_address(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg0(REG,178)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg1(REG,177)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg0(REG,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg1(REG,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_g, bubble_select_stall_entry_h, bubble_select_stall_entry_i, bubble_select_stall_entry_j, bubble_select_stall_entry_k, bubble_select_stall_entry_l, bubble_select_stall_entry_n, bubble_select_stall_entry_o, bubble_select_stall_entry_p, bubble_select_stall_entry_r, bubble_select_stall_entry_s, bubble_select_stall_entry_t, bubble_select_stall_entry_v, bubble_select_stall_entry_w, bubble_select_stall_entry_x, bubble_select_stall_entry_b, bubble_select_stall_entry_y, bubble_select_stall_entry_m, bubble_select_stall_entry_c, bubble_select_stall_entry_q, bubble_select_stall_entry_f};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,185)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,186)
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

    // coalesced_delay_0_fifo(STALLFIFO,47)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V4;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V7;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(55),
        .WIDTH(210),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
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

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,194)
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

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,193)
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

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg0(REG,180)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg1(REG,179)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg0(REG,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg1(REG,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,192)
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

    // coalesced_delay_0_fifo_o_empty_reg1(REG,191)
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

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg0(REG,182)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg1(REG,181)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg0(REG,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg1(REG,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,188)
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

    // coalesced_delay_0_fifo_o_valid_reg1(REG,187)
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

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,99)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out_reg1_q | i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out_reg1_q | i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg0(REG,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg1(REG,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,114)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,113)
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

    // stall_entry_frontEmpty_reg0(REG,112)
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

    // stall_entry_frontEmpty_reg1(REG,111)
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

    // stall_entry_frontValid_reg0(REG,110)
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

    // stall_entry_frontValid_reg1(REG,109)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,98)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_stall | coalesced_delay_0_fifo_o_stall | i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V3 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V6 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V4 = merged_in_SE_bubble_join_stall_entry_V3;
    assign merged_in_SE_bubble_join_stall_entry_V7 = merged_in_SE_bubble_join_stall_entry_V6;
    assign merged_in_SE_bubble_join_stall_entry_V2 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V3;
    assign merged_in_SE_bubble_join_stall_entry_V8 = merged_in_SE_bubble_join_stall_entry_V6;

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x(BLACKBOX,20)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@37
    // out out_empty_out@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit400_0_tpl@37
    // out out_c0_exit400_1_tpl@37
    // out out_c0_exit400_2_tpl@37
    kernel_3mm_i_sfc_s_c0_in_for_end_s_c0_enter394_kernel_3mm3 thei_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V6),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V3),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .in_c0_eni3393_0_tpl(GND_q),
        .in_c0_eni3393_1_tpl(bubble_select_stall_entry_f),
        .in_c0_eni3393_2_tpl(bubble_select_stall_entry_q),
        .in_c0_eni3393_3_tpl(bubble_select_stall_entry_x),
        .out_almost_empty_out(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_c0_exit400_0_tpl(),
        .out_c0_exit400_1_tpl(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl),
        .out_c0_exit400_2_tpl(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,107)
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

    // stall_entry_frontStall_reg1(REG,108)
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

    // sync_out(GPOUT,15)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,18)
    assign out_memdep_kernel_3mm_avm_address = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_address;
    assign out_memdep_kernel_3mm_avm_enable = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_enable;
    assign out_memdep_kernel_3mm_avm_read = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_read;
    assign out_memdep_kernel_3mm_avm_write = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_write;
    assign out_memdep_kernel_3mm_avm_writedata = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_writedata;
    assign out_memdep_kernel_3mm_avm_byteenable = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_byteenable;
    assign out_memdep_kernel_3mm_avm_burstcount = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_memdep_kernel_3mm_avm_burstcount;

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg0(REG,184)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg0_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl);
        end
    end

    // i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg1(REG,183)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg1_q <= $unsigned(i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x(BITJOIN,58)
    assign bubble_join_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_q = i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_out_c1_exit_1_tpl_reg1_q;

    // bubble_select_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x(BITSELECT,59)
    assign bubble_select_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg0(REG,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg1(REG,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg0(REG,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg1(REG,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x(BITJOIN,54)
    assign bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_q = {i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_2_tpl_reg1_q, i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_out_c0_exit400_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x(BITSELECT,55)
    assign bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_q[95:64]);

    // coalesced_delay_0_fifo_o_data_reg0(REG,190)
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

    // coalesced_delay_0_fifo_o_data_reg1(REG,189)
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

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,62)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,63)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[209:0]);

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[192:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[193:193]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[194:194]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[195:195]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[196:196]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[197:197]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[198:198]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[199:199]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[200:200]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[201:201]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[202:202]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[203:203]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[204:204]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[205:205]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[206:206]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[207:207]);
    assign sel_for_coalesced_delay_0_v = $unsigned(bubble_select_coalesced_delay_0_fifo_b[208:208]);
    assign sel_for_coalesced_delay_0_w = $unsigned(bubble_select_coalesced_delay_0_fifo_b[209:209]);

    // dupName_0_sync_out_x(GPOUT,19)@37
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V2;
    assign out_c0_exe103758 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe113769 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1237710 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe13661 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1401 = bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_b;
    assign out_c0_exe1437912 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe1538013 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe1638114 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1738215 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe1838316 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe1938417 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe2038518 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe2138619 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe2238720 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe2338821 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe23672 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2402 = bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm3_aunroll_x_c;
    assign out_c0_exe2438922 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe2539023 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe2624 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe63714 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe73725 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe83736 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe93747 = sel_for_coalesced_delay_0_f;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_end_kernel_3mms_c1_enter_kernel_3mm8_aunroll_x_b;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V1;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,195)
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
