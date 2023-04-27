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

// SystemVerilog created from bb_gaussian_B7_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7_stall_region (
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add32_pop1566,
    input wire [31:0] in_add54,
    input wire [0:0] in_cmp41634_pop1658,
    input wire [0:0] in_cmp41657,
    input wire [31:0] in_fpga_indvars_iv728_pop1364,
    input wire [31:0] in_fpga_indvars_iv745,
    input wire [31:0] in_fpga_indvars_iv926_pop1263,
    input wire [31:0] in_fpga_indvars_iv942,
    input wire [31:0] in_i_017_pop960,
    input wire [31:0] in_j_01830_pop1465,
    input wire [31:0] in_j_01848,
    input wire [0:0] in_memdep_phi4_pop723_pop1162,
    input wire [0:0] in_memdep_phi4_pop72551,
    input wire [0:0] in_memdep_phi_pop1061,
    input wire [0:0] in_notcmp1459,
    input wire [32:0] in_unnamed_gaussian4,
    input wire [0:0] in_unnamed_gaussian5,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exe10154,
    output wire [0:0] out_c0_exe1145,
    output wire [0:0] out_c0_exe2146,
    output wire [0:0] out_c0_exe4148,
    output wire [0:0] out_c0_exe5149,
    output wire [31:0] out_c0_exe6150,
    output wire [31:0] out_c0_exe7151,
    output wire [31:0] out_c0_exe8152,
    output wire [0:0] out_c0_exe9153,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_10_tpl;
    wire [327:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [32:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [102:0] bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_k;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,25)
    assign bubble_join_stall_entry_q = {in_unnamed_gaussian5, in_unnamed_gaussian4, in_notcmp1459, in_memdep_phi_pop1061, in_memdep_phi4_pop72551, in_memdep_phi4_pop723_pop1162, in_j_01848, in_j_01830_pop1465, in_i_017_pop960, in_fpga_indvars_iv942, in_fpga_indvars_iv926_pop1263, in_fpga_indvars_iv745, in_fpga_indvars_iv728_pop1364, in_cmp41657, in_cmp41634_pop1658, in_add54, in_add32_pop1566};

    // bubble_select_stall_entry(BITSELECT,26)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[225:194]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[257:226]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[289:258]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[290:290]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[326:294]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[327:327]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_wireValid = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x(BLACKBOX,23)@0
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_lm62_gaussian_avm_address@20000000
    // out out_lm62_gaussian_avm_burstcount@20000000
    // out out_lm62_gaussian_avm_byteenable@20000000
    // out out_lm62_gaussian_avm_enable@20000000
    // out out_lm62_gaussian_avm_read@20000000
    // out out_lm62_gaussian_avm_write@20000000
    // out out_lm62_gaussian_avm_writedata@20000000
    // out out_lm83_gaussian_avm_address@20000000
    // out out_lm83_gaussian_avm_burstcount@20000000
    // out out_lm83_gaussian_avm_byteenable@20000000
    // out out_lm83_gaussian_avm_enable@20000000
    // out out_lm83_gaussian_avm_read@20000000
    // out out_lm83_gaussian_avm_write@20000000
    // out out_lm83_gaussian_avm_writedata@20000000
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@20
    // out out_profile_loop_o_valid@20
    // out out_c0_exit144_0_tpl@20
    // out out_c0_exit144_1_tpl@20
    // out out_c0_exit144_2_tpl@20
    // out out_c0_exit144_3_tpl@20
    // out out_c0_exit144_4_tpl@20
    // out out_c0_exit144_5_tpl@20
    // out out_c0_exit144_6_tpl@20
    // out out_c0_exit144_7_tpl@20
    // out out_c0_exit144_8_tpl@20
    // out out_c0_exit144_9_tpl@20
    // out out_c0_exit144_10_tpl@20
    // out out_c0_exit144_11_tpl@20
    // out out_c0_exit144_12_tpl@20
    // out out_c0_exit144_13_tpl@20
    // out out_c0_exit144_14_tpl@20
    // out out_c0_exit144_15_tpl@20
    // out out_c0_exit144_16_tpl@20
    // out out_c0_exit144_17_tpl@20
    gaussian_i_sfc_s_c0_in_for_body10_s_c0_enter11819_gaussian18 thei_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_c0_eni18_0_tpl(GND_q),
        .in_c0_eni18_1_tpl(bubble_select_stall_entry_j),
        .in_c0_eni18_2_tpl(GND_q),
        .in_c0_eni18_3_tpl(bubble_select_stall_entry_d),
        .in_c0_eni18_4_tpl(bubble_select_stall_entry_k),
        .in_c0_eni18_5_tpl(bubble_select_stall_entry_m),
        .in_c0_eni18_6_tpl(bubble_select_stall_entry_o),
        .in_c0_eni18_7_tpl(bubble_select_stall_entry_h),
        .in_c0_eni18_8_tpl(bubble_select_stall_entry_f),
        .in_c0_eni18_9_tpl(bubble_select_stall_entry_b),
        .in_c0_eni18_10_tpl(bubble_select_stall_entry_r),
        .in_c0_eni18_11_tpl(bubble_select_stall_entry_p),
        .in_c0_eni18_12_tpl(bubble_select_stall_entry_i),
        .in_c0_eni18_13_tpl(bubble_select_stall_entry_g),
        .in_c0_eni18_14_tpl(bubble_select_stall_entry_l),
        .in_c0_eni18_15_tpl(bubble_select_stall_entry_n),
        .in_c0_eni18_16_tpl(bubble_select_stall_entry_q),
        .in_c0_eni18_17_tpl(bubble_select_stall_entry_c),
        .in_c0_eni18_18_tpl(bubble_select_stall_entry_e),
        .out_lm1_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit144_0_tpl(),
        .out_c0_exit144_1_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_1_tpl),
        .out_c0_exit144_2_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_2_tpl),
        .out_c0_exit144_3_tpl(),
        .out_c0_exit144_4_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_4_tpl),
        .out_c0_exit144_5_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_5_tpl),
        .out_c0_exit144_6_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_6_tpl),
        .out_c0_exit144_7_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_7_tpl),
        .out_c0_exit144_8_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_8_tpl),
        .out_c0_exit144_9_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_9_tpl),
        .out_c0_exit144_10_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_10_tpl),
        .out_c0_exit144_11_tpl(),
        .out_c0_exit144_12_tpl(),
        .out_c0_exit144_13_tpl(),
        .out_c0_exit144_14_tpl(),
        .out_c0_exit144_15_tpl(),
        .out_c0_exit144_16_tpl(),
        .out_c0_exit144_17_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_lm1_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm1_gaussian_avm_burstcount;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,17)
    assign out_lm62_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_address;
    assign out_lm62_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_enable;
    assign out_lm62_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_read;
    assign out_lm62_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_write;
    assign out_lm62_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_writedata;
    assign out_lm62_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_byteenable;
    assign out_lm62_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm62_gaussian_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x(BITJOIN,29)
    assign bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q = {i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_10_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_9_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_8_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_7_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_6_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_5_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_4_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_2_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_c0_exit144_1_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x(BITSELECT,30)
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[36:5]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[68:37]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[100:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[101:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_q[102:102]);

    // dupName_0_sync_out_x(GPOUT,18)@20
    assign out_c0_exe10154 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_k;
    assign out_c0_exe1145 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_c;
    assign out_c0_exe2146 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_d;
    assign out_c0_exe4148 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_e;
    assign out_c0_exe5149 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_f;
    assign out_c0_exe6150 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_g;
    assign out_c0_exe7151 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_h;
    assign out_c0_exe8152 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_i;
    assign out_c0_exe9153 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_j;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,20)
    assign out_lm83_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_address;
    assign out_lm83_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_enable;
    assign out_lm83_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_read;
    assign out_lm83_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_write;
    assign out_lm83_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_writedata;
    assign out_lm83_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_byteenable;
    assign out_lm83_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_lm83_gaussian_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,22)
    assign out_memdep_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian18_aunroll_x_out_memdep_gaussian_avm_burstcount;

    // rst_sync(RESETSYNC,45)
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
