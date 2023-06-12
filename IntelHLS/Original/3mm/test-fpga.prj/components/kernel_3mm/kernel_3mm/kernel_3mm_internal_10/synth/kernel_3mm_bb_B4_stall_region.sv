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

// SystemVerilog created from bb_kernel_3mm_B4_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B4_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_arrayidx121185,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_forked117,
    input wire [0:0] in_forked60_pop24161,
    input wire [0:0] in_forked61_pop34188,
    input wire [31:0] in_i_060_pop23151,
    input wire [31:0] in_i_060_pop2385_pop39182,
    input wire [63:0] in_idxprom11184,
    input wire [63:0] in_idxprom183,
    input wire [0:0] in_memdep_phi2_pop18131,
    input wire [0:0] in_memdep_phi2_pop1868_pop26171,
    input wire [0:0] in_memdep_phi2_pop1869_pop36189,
    input wire [0:0] in_memdep_phi3_pop19138,
    input wire [0:0] in_memdep_phi3_pop1972_pop27176,
    input wire [0:0] in_memdep_phi3_pop1973_pop37190,
    input wire [0:0] in_memdep_phi5_pop20145,
    input wire [0:0] in_memdep_phi5_pop2076_pop28181,
    input wire [0:0] in_memdep_phi5_pop2077_pop38191,
    input wire [0:0] in_memdep_phi_pop17124,
    input wire [0:0] in_memdep_phi_pop1764_pop25166,
    input wire [0:0] in_memdep_phi_pop1765_pop35186,
    input wire [0:0] in_notcmp46187,
    input wire [0:0] in_notcmp51156,
    input wire [0:0] in_notcmp5188_pop40192,
    input wire [31:0] in_unnamed_kernel_3mm2,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe10375,
    output wire [31:0] out_c0_exe11376,
    output wire [0:0] out_c0_exe12377,
    output wire [63:0] out_c0_exe13378,
    output wire [63:0] out_c0_exe1366,
    output wire [0:0] out_c0_exe14379,
    output wire [0:0] out_c0_exe15380,
    output wire [0:0] out_c0_exe16381,
    output wire [0:0] out_c0_exe17382,
    output wire [0:0] out_c0_exe18383,
    output wire [0:0] out_c0_exe19384,
    output wire [31:0] out_c0_exe20385,
    output wire [0:0] out_c0_exe21386,
    output wire [0:0] out_c0_exe22387,
    output wire [0:0] out_c0_exe23388,
    output wire [63:0] out_c0_exe2367,
    output wire [0:0] out_c0_exe24389,
    output wire [0:0] out_c0_exe25390,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe5370,
    output wire [0:0] out_c0_exe6371,
    output wire [0:0] out_c0_exe7372,
    output wire [0:0] out_c0_exe8373,
    output wire [0:0] out_c0_exe9374,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl;
    wire [305:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [63:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [307:0] bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_t;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_z;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_aa;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [63:0] stall_entry_o4_reg1_q;
    reg [63:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [0:0] stall_entry_o6_reg1_q;
    reg [0:0] stall_entry_o6_reg0_q;
    reg [0:0] stall_entry_o7_reg1_q;
    reg [0:0] stall_entry_o7_reg0_q;
    reg [31:0] stall_entry_o8_reg1_q;
    reg [31:0] stall_entry_o8_reg0_q;
    reg [31:0] stall_entry_o9_reg1_q;
    reg [31:0] stall_entry_o9_reg0_q;
    reg [63:0] stall_entry_o10_reg1_q;
    reg [63:0] stall_entry_o10_reg0_q;
    reg [63:0] stall_entry_o11_reg1_q;
    reg [63:0] stall_entry_o11_reg0_q;
    reg [0:0] stall_entry_o12_reg1_q;
    reg [0:0] stall_entry_o12_reg0_q;
    reg [0:0] stall_entry_o13_reg1_q;
    reg [0:0] stall_entry_o13_reg0_q;
    reg [0:0] stall_entry_o14_reg1_q;
    reg [0:0] stall_entry_o14_reg0_q;
    reg [0:0] stall_entry_o15_reg1_q;
    reg [0:0] stall_entry_o15_reg0_q;
    reg [0:0] stall_entry_o16_reg1_q;
    reg [0:0] stall_entry_o16_reg0_q;
    reg [0:0] stall_entry_o17_reg1_q;
    reg [0:0] stall_entry_o17_reg0_q;
    reg [0:0] stall_entry_o18_reg1_q;
    reg [0:0] stall_entry_o18_reg0_q;
    reg [0:0] stall_entry_o19_reg1_q;
    reg [0:0] stall_entry_o19_reg0_q;
    reg [0:0] stall_entry_o20_reg1_q;
    reg [0:0] stall_entry_o20_reg0_q;
    reg [0:0] stall_entry_o21_reg1_q;
    reg [0:0] stall_entry_o21_reg0_q;
    reg [0:0] stall_entry_o22_reg1_q;
    reg [0:0] stall_entry_o22_reg0_q;
    reg [0:0] stall_entry_o23_reg1_q;
    reg [0:0] stall_entry_o23_reg0_q;
    reg [0:0] stall_entry_o24_reg1_q;
    reg [0:0] stall_entry_o24_reg0_q;
    reg [0:0] stall_entry_o25_reg1_q;
    reg [0:0] stall_entry_o25_reg0_q;
    reg [0:0] stall_entry_o26_reg1_q;
    reg [0:0] stall_entry_o26_reg0_q;
    reg [31:0] stall_entry_o27_reg1_q;
    reg [31:0] stall_entry_o27_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o27_reg0(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o27_reg0_q <= $unsigned(in_unnamed_kernel_3mm2);
        end
    end

    // stall_entry_o27_reg1(REG,97)
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

    // stall_entry_o26_reg0(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o26_reg0_q <= $unsigned(in_notcmp5188_pop40192);
        end
    end

    // stall_entry_o26_reg1(REG,95)
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

    // stall_entry_o25_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o25_reg0_q <= $unsigned(in_notcmp51156);
        end
    end

    // stall_entry_o25_reg1(REG,93)
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

    // stall_entry_o24_reg0(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o24_reg0_q <= $unsigned(in_notcmp46187);
        end
    end

    // stall_entry_o24_reg1(REG,91)
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

    // stall_entry_o23_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o23_reg0_q <= $unsigned(in_memdep_phi_pop1765_pop35186);
        end
    end

    // stall_entry_o23_reg1(REG,89)
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

    // stall_entry_o22_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o22_reg0_q <= $unsigned(in_memdep_phi_pop1764_pop25166);
        end
    end

    // stall_entry_o22_reg1(REG,87)
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

    // stall_entry_o21_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o21_reg0_q <= $unsigned(in_memdep_phi_pop17124);
        end
    end

    // stall_entry_o21_reg1(REG,85)
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

    // stall_entry_o20_reg0(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o20_reg0_q <= $unsigned(in_memdep_phi5_pop2077_pop38191);
        end
    end

    // stall_entry_o20_reg1(REG,83)
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

    // stall_entry_o19_reg0(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o19_reg0_q <= $unsigned(in_memdep_phi5_pop2076_pop28181);
        end
    end

    // stall_entry_o19_reg1(REG,81)
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

    // stall_entry_o18_reg0(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o18_reg0_q <= $unsigned(in_memdep_phi5_pop20145);
        end
    end

    // stall_entry_o18_reg1(REG,79)
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

    // stall_entry_o17_reg0(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o17_reg0_q <= $unsigned(in_memdep_phi3_pop1973_pop37190);
        end
    end

    // stall_entry_o17_reg1(REG,77)
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

    // stall_entry_o16_reg0(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o16_reg0_q <= $unsigned(in_memdep_phi3_pop1972_pop27176);
        end
    end

    // stall_entry_o16_reg1(REG,75)
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

    // stall_entry_o15_reg0(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= $unsigned(in_memdep_phi3_pop19138);
        end
    end

    // stall_entry_o15_reg1(REG,73)
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

    // stall_entry_o14_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= $unsigned(in_memdep_phi2_pop1869_pop36189);
        end
    end

    // stall_entry_o14_reg1(REG,71)
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

    // stall_entry_o13_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= $unsigned(in_memdep_phi2_pop1868_pop26171);
        end
    end

    // stall_entry_o13_reg1(REG,69)
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

    // stall_entry_o12_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= $unsigned(in_memdep_phi2_pop18131);
        end
    end

    // stall_entry_o12_reg1(REG,67)
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

    // stall_entry_o11_reg0(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= $unsigned(in_idxprom183);
        end
    end

    // stall_entry_o11_reg1(REG,65)
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

    // stall_entry_o10_reg0(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= $unsigned(in_idxprom11184);
        end
    end

    // stall_entry_o10_reg1(REG,63)
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

    // stall_entry_o9_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_i_060_pop2385_pop39182);
        end
    end

    // stall_entry_o9_reg1(REG,61)
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

    // stall_entry_o8_reg0(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_i_060_pop23151);
        end
    end

    // stall_entry_o8_reg1(REG,59)
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

    // stall_entry_o7_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_forked61_pop34188);
        end
    end

    // stall_entry_o7_reg1(REG,57)
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

    // stall_entry_o6_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_forked60_pop24161);
        end
    end

    // stall_entry_o6_reg1(REG,55)
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

    // stall_entry_o5_reg0(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_forked117);
        end
    end

    // stall_entry_o5_reg1(REG,53)
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

    // stall_entry_o4_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_arrayidx121185);
        end
    end

    // stall_entry_o4_reg1(REG,51)
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

    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {stall_entry_o27_reg1_q, stall_entry_o26_reg1_q, stall_entry_o25_reg1_q, stall_entry_o24_reg1_q, stall_entry_o23_reg1_q, stall_entry_o22_reg1_q, stall_entry_o21_reg1_q, stall_entry_o20_reg1_q, stall_entry_o19_reg1_q, stall_entry_o18_reg1_q, stall_entry_o17_reg1_q, stall_entry_o16_reg1_q, stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[194:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[258:195]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[261:261]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[262:262]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[265:265]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[266:266]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[267:267]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[268:268]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[269:269]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[270:270]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[271:271]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[272:272]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[273:273]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[305:274]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg0(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg0(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg1(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg0(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x(STALLENABLE,42)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V0 = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V1 = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V2 = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg1(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,50)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,49)
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

    // stall_entry_frontEmpty_reg0(REG,48)
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

    // stall_entry_frontEmpty_reg1(REG,47)
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

    // stall_entry_frontValid_reg0(REG,46)
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

    // stall_entry_frontValid_reg1(REG,45)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,41)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@49
    // out out_empty_out@49
    // out out_o_stall@20000000
    // out out_o_valid@49
    // out out_profile_loop_o_valid@49
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit365_0_tpl@49
    // out out_c0_exit365_1_tpl@49
    // out out_c0_exit365_2_tpl@49
    // out out_c0_exit365_3_tpl@49
    // out out_c0_exit365_4_tpl@49
    // out out_c0_exit365_5_tpl@49
    // out out_c0_exit365_6_tpl@49
    // out out_c0_exit365_7_tpl@49
    // out out_c0_exit365_8_tpl@49
    // out out_c0_exit365_9_tpl@49
    // out out_c0_exit365_10_tpl@49
    // out out_c0_exit365_11_tpl@49
    // out out_c0_exit365_12_tpl@49
    // out out_c0_exit365_13_tpl@49
    // out out_c0_exit365_14_tpl@49
    // out out_c0_exit365_15_tpl@49
    // out out_c0_exit365_16_tpl@49
    // out out_c0_exit365_17_tpl@49
    // out out_c0_exit365_18_tpl@49
    // out out_c0_exit365_19_tpl@49
    // out out_c0_exit365_20_tpl@49
    // out out_c0_exit365_21_tpl@49
    // out out_c0_exit365_22_tpl@49
    // out out_c0_exit365_23_tpl@49
    // out out_c0_exit365_24_tpl@49
    // out out_c0_exit365_25_tpl@49
    // out out_c0_exit365_26_tpl@49
    kernel_3mm_i_sfc_s_c0_in_for_body15_s_c0_enter32651_kernel_3mm25 thei_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .in_c0_eni25_0_tpl(GND_q),
        .in_c0_eni25_1_tpl(GND_q),
        .in_c0_eni25_2_tpl(bubble_select_stall_entry_i),
        .in_c0_eni25_3_tpl(bubble_select_stall_entry_h),
        .in_c0_eni25_4_tpl(bubble_select_stall_entry_y),
        .in_c0_eni25_5_tpl(bubble_select_stall_entry_e),
        .in_c0_eni25_6_tpl(bubble_select_stall_entry_u),
        .in_c0_eni25_7_tpl(bubble_select_stall_entry_l),
        .in_c0_eni25_8_tpl(bubble_select_stall_entry_o),
        .in_c0_eni25_9_tpl(bubble_select_stall_entry_r),
        .in_c0_eni25_10_tpl(bubble_select_stall_entry_g),
        .in_c0_eni25_11_tpl(bubble_select_stall_entry_x),
        .in_c0_eni25_12_tpl(bubble_select_stall_entry_b),
        .in_c0_eni25_13_tpl(bubble_select_stall_entry_v),
        .in_c0_eni25_14_tpl(bubble_select_stall_entry_c),
        .in_c0_eni25_15_tpl(bubble_select_stall_entry_s),
        .in_c0_eni25_16_tpl(bubble_select_stall_entry_j),
        .in_c0_eni25_17_tpl(bubble_select_stall_entry_m),
        .in_c0_eni25_18_tpl(bubble_select_stall_entry_p),
        .in_c0_eni25_19_tpl(bubble_select_stall_entry_f),
        .in_c0_eni25_20_tpl(bubble_select_stall_entry_w),
        .in_c0_eni25_21_tpl(bubble_select_stall_entry_d),
        .in_c0_eni25_22_tpl(bubble_select_stall_entry_t),
        .in_c0_eni25_23_tpl(bubble_select_stall_entry_k),
        .in_c0_eni25_24_tpl(bubble_select_stall_entry_n),
        .in_c0_eni25_25_tpl(bubble_select_stall_entry_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_c0_exit365_0_tpl(),
        .out_c0_exit365_1_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl),
        .out_c0_exit365_2_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl),
        .out_c0_exit365_3_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl),
        .out_c0_exit365_4_tpl(),
        .out_c0_exit365_5_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl),
        .out_c0_exit365_6_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl),
        .out_c0_exit365_7_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl),
        .out_c0_exit365_8_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl),
        .out_c0_exit365_9_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl),
        .out_c0_exit365_10_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl),
        .out_c0_exit365_11_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl),
        .out_c0_exit365_12_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl),
        .out_c0_exit365_13_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl),
        .out_c0_exit365_14_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl),
        .out_c0_exit365_15_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl),
        .out_c0_exit365_16_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl),
        .out_c0_exit365_17_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl),
        .out_c0_exit365_18_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl),
        .out_c0_exit365_19_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl),
        .out_c0_exit365_20_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl),
        .out_c0_exit365_21_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl),
        .out_c0_exit365_22_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl),
        .out_c0_exit365_23_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl),
        .out_c0_exit365_24_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl),
        .out_c0_exit365_25_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl),
        .out_c0_exit365_26_tpl(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,43)
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

    // stall_entry_frontStall_reg1(REG,44)
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

    // dupName_0_ext_sig_sync_out_x(GPOUT,17)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg0(REG,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg1(REG,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg0(REG,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg1(REG,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg0(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg1(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg0(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg1(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg0(REG,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg1(REG,149)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg0(REG,148)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg1(REG,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg0(REG,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg1(REG,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg0(REG,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg1(REG,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg0(REG,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg1(REG,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg0(REG,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg1(REG,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg0(REG,138)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg1(REG,137)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg0(REG,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg1(REG,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg0(REG,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg1(REG,133)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg0(REG,132)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg1(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg0(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg1(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg0(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg1(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg0(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg1(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg0(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg1(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg0(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg1(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg0(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg1(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg1(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg0(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg1(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg0(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg1(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q = {i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_26_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_25_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_24_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_23_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_22_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_21_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_20_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_19_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_18_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_17_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_16_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_15_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_14_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_13_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_12_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_11_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_10_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_9_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_8_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_7_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_6_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_5_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_3_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_2_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_c0_exit365_1_tpl_reg1_q, i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[160:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[161:161]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[198:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[199:199]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[263:200]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[264:264]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[265:265]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[266:266]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[267:267]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[268:268]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[269:269]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[301:270]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[302:302]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[303:303]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[304:304]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[305:305]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[306:306]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q[307:307]);

    // dupName_0_sync_out_x(GPOUT,18)@49
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V2;
    assign out_c0_exe10375 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_k;
    assign out_c0_exe11376 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_l;
    assign out_c0_exe12377 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_m;
    assign out_c0_exe13378 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_n;
    assign out_c0_exe1366 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_c;
    assign out_c0_exe14379 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_o;
    assign out_c0_exe15380 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_p;
    assign out_c0_exe16381 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_q;
    assign out_c0_exe17382 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_r;
    assign out_c0_exe18383 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_s;
    assign out_c0_exe19384 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_t;
    assign out_c0_exe20385 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_u;
    assign out_c0_exe21386 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_v;
    assign out_c0_exe22387 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_w;
    assign out_c0_exe23388 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_x;
    assign out_c0_exe2367 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_d;
    assign out_c0_exe24389 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_y;
    assign out_c0_exe25390 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_z;
    assign out_c0_exe26 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_aa;
    assign out_c0_exe3368 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_e;
    assign out_c0_exe5370 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_f;
    assign out_c0_exe6371 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_g;
    assign out_c0_exe7372 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_h;
    assign out_c0_exe8373 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_i;
    assign out_c0_exe9374 = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_j;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V1;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_b;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm25_aunroll_x_V0;

    // rst_sync(RESETSYNC,159)
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
