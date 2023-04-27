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

// SystemVerilog created from bb_kernel_3mm_B3_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B3_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_forked118,
    input wire [0:0] in_forked60_pop24157,
    input wire [31:0] in_i_060_pop23147,
    input wire [0:0] in_memdep_phi2_pop18132,
    input wire [0:0] in_memdep_phi2_pop1868_pop26167,
    input wire [0:0] in_memdep_phi3_pop19139,
    input wire [0:0] in_memdep_phi3_pop1972_pop27172,
    input wire [0:0] in_memdep_phi5_pop20146,
    input wire [0:0] in_memdep_phi5_pop2076_pop28177,
    input wire [0:0] in_memdep_phi_pop17125,
    input wire [0:0] in_memdep_phi_pop1764_pop25162,
    input wire [0:0] in_notcmp51152,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe10309,
    output wire [0:0] out_c0_exe11310,
    output wire [0:0] out_c0_exe12311,
    output wire [31:0] out_c0_exe1300,
    output wire [0:0] out_c0_exe13312,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [63:0] out_c0_exe2301,
    output wire [0:0] out_c0_exe24,
    output wire [0:0] out_c0_exe25,
    output wire [63:0] out_c0_exe3302,
    output wire [63:0] out_c0_exe4303,
    output wire [0:0] out_c0_exe5304,
    output wire [31:0] out_c0_exe6305,
    output wire [0:0] out_c0_exe8307,
    output wire [0:0] out_c0_exe9308,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl;
    wire [42:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
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
    wire [305:0] bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_y;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_temp_back_stall;
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
    reg [31:0] stall_entry_o6_reg1_q;
    reg [31:0] stall_entry_o6_reg0_q;
    reg [0:0] stall_entry_o7_reg1_q;
    reg [0:0] stall_entry_o7_reg0_q;
    reg [0:0] stall_entry_o8_reg1_q;
    reg [0:0] stall_entry_o8_reg0_q;
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
    reg [0:0] stall_entry_o15_reg1_q;
    reg [0:0] stall_entry_o15_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o15_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= $unsigned(in_notcmp51152);
        end
    end

    // stall_entry_o15_reg1(REG,71)
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

    // stall_entry_o14_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= $unsigned(in_memdep_phi_pop1764_pop25162);
        end
    end

    // stall_entry_o14_reg1(REG,69)
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

    // stall_entry_o13_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= $unsigned(in_memdep_phi_pop17125);
        end
    end

    // stall_entry_o13_reg1(REG,67)
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

    // stall_entry_o12_reg0(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= $unsigned(in_memdep_phi5_pop2076_pop28177);
        end
    end

    // stall_entry_o12_reg1(REG,65)
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

    // stall_entry_o11_reg0(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= $unsigned(in_memdep_phi5_pop20146);
        end
    end

    // stall_entry_o11_reg1(REG,63)
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

    // stall_entry_o10_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= $unsigned(in_memdep_phi3_pop1972_pop27172);
        end
    end

    // stall_entry_o10_reg1(REG,61)
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

    // stall_entry_o9_reg0(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_memdep_phi3_pop19139);
        end
    end

    // stall_entry_o9_reg1(REG,59)
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

    // stall_entry_o8_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_memdep_phi2_pop1868_pop26167);
        end
    end

    // stall_entry_o8_reg1(REG,57)
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

    // stall_entry_o7_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_memdep_phi2_pop18132);
        end
    end

    // stall_entry_o7_reg1(REG,55)
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

    // stall_entry_o6_reg0(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_i_060_pop23147);
        end
    end

    // stall_entry_o6_reg1(REG,53)
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

    // stall_entry_o5_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_forked60_pop24157);
        end
    end

    // stall_entry_o5_reg1(REG,51)
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

    // stall_entry_o4_reg0(REG,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_forked118);
        end
    end

    // stall_entry_o4_reg1(REG,49)
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

    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[37:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[38:38]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[39:39]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[40:40]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[41:41]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[42:42]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg0(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg1(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg0(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg1(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x(STALLENABLE,40)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V0 = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V1 = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V2 = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg0(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg1(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,48)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,47)
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

    // stall_entry_frontEmpty_reg0(REG,46)
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

    // stall_entry_frontEmpty_reg1(REG,45)
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

    // stall_entry_frontValid_reg0(REG,44)
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

    // stall_entry_frontValid_reg1(REG,43)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,39)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@41
    // out out_empty_out@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit299_0_tpl@41
    // out out_c0_exit299_1_tpl@41
    // out out_c0_exit299_2_tpl@41
    // out out_c0_exit299_3_tpl@41
    // out out_c0_exit299_4_tpl@41
    // out out_c0_exit299_5_tpl@41
    // out out_c0_exit299_6_tpl@41
    // out out_c0_exit299_7_tpl@41
    // out out_c0_exit299_8_tpl@41
    // out out_c0_exit299_9_tpl@41
    // out out_c0_exit299_10_tpl@41
    // out out_c0_exit299_11_tpl@41
    // out out_c0_exit299_12_tpl@41
    // out out_c0_exit299_13_tpl@41
    // out out_c0_exit299_14_tpl@41
    // out out_c0_exit299_15_tpl@41
    // out out_c0_exit299_16_tpl@41
    // out out_c0_exit299_17_tpl@41
    // out out_c0_exit299_18_tpl@41
    // out out_c0_exit299_19_tpl@41
    // out out_c0_exit299_20_tpl@41
    // out out_c0_exit299_21_tpl@41
    // out out_c0_exit299_22_tpl@41
    // out out_c0_exit299_23_tpl@41
    // out out_c0_exit299_24_tpl@41
    // out out_c0_exit299_25_tpl@41
    kernel_3mm_i_sfc_s_c0_in_for_body10_s_c0_enter27949_kernel_3mm13 thei_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_stall_entry_d),
        .in_c0_eni13_2_tpl(GND_q),
        .in_c0_eni13_3_tpl(bubble_select_stall_entry_l),
        .in_c0_eni13_4_tpl(bubble_select_stall_entry_c),
        .in_c0_eni13_5_tpl(bubble_select_stall_entry_f),
        .in_c0_eni13_6_tpl(bubble_select_stall_entry_h),
        .in_c0_eni13_7_tpl(bubble_select_stall_entry_j),
        .in_c0_eni13_8_tpl(bubble_select_stall_entry_m),
        .in_c0_eni13_9_tpl(bubble_select_stall_entry_b),
        .in_c0_eni13_10_tpl(bubble_select_stall_entry_k),
        .in_c0_eni13_11_tpl(bubble_select_stall_entry_e),
        .in_c0_eni13_12_tpl(bubble_select_stall_entry_g),
        .in_c0_eni13_13_tpl(bubble_select_stall_entry_i),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata),
        .out_c0_exit299_0_tpl(),
        .out_c0_exit299_1_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl),
        .out_c0_exit299_2_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl),
        .out_c0_exit299_3_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl),
        .out_c0_exit299_4_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl),
        .out_c0_exit299_5_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl),
        .out_c0_exit299_6_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl),
        .out_c0_exit299_7_tpl(),
        .out_c0_exit299_8_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl),
        .out_c0_exit299_9_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl),
        .out_c0_exit299_10_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl),
        .out_c0_exit299_11_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl),
        .out_c0_exit299_12_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl),
        .out_c0_exit299_13_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl),
        .out_c0_exit299_14_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl),
        .out_c0_exit299_15_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl),
        .out_c0_exit299_16_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl),
        .out_c0_exit299_17_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl),
        .out_c0_exit299_18_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl),
        .out_c0_exit299_19_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl),
        .out_c0_exit299_20_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl),
        .out_c0_exit299_21_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl),
        .out_c0_exit299_22_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl),
        .out_c0_exit299_23_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl),
        .out_c0_exit299_24_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl),
        .out_c0_exit299_25_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,41)
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

    // stall_entry_frontStall_reg1(REG,42)
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

    // sync_out(GPOUT,14)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg1(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg0(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg1(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg1(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg0(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg0(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg1(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg0(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg0(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg1(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg0(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg1(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg0(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg1(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg1(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg0(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg1(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg1(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg0(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg1(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg0(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg1(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q = {i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_25_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_24_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_23_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_22_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_21_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_20_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_19_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_18_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_17_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_16_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_15_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_14_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_13_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_12_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_11_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_10_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_9_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_8_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_6_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_5_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_4_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_3_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_2_tpl_reg1_q, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_out_c0_exit299_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[95:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[159:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[223:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[224:224]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[256:225]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[258:258]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[259:259]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[260:260]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[261:261]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[262:262]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[263:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[264:264]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[265:265]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[266:266]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[267:267]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[299:268]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[300:300]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[301:301]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[302:302]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[303:303]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[304:304]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q[305:305]);

    // dupName_0_sync_out_x(GPOUT,16)@41
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V2;
    assign out_c0_exe10309 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_j;
    assign out_c0_exe11310 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_k;
    assign out_c0_exe12311 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_l;
    assign out_c0_exe1300 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_b;
    assign out_c0_exe13312 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_r;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_s;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_t;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_u;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_v;
    assign out_c0_exe23 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_w;
    assign out_c0_exe2301 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_c;
    assign out_c0_exe24 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_x;
    assign out_c0_exe25 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_y;
    assign out_c0_exe3302 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_d;
    assign out_c0_exe4303 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_e;
    assign out_c0_exe5304 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_f;
    assign out_c0_exe6305 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_g;
    assign out_c0_exe8307 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_h;
    assign out_c0_exe9308 = bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_i;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm13_aunroll_x_V0;

    // rst_sync(RESETSYNC,129)
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
