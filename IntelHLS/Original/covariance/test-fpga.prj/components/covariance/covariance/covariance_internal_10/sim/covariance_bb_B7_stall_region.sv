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
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B7_stall_region (
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1072_pop39134,
    input wire [63:0] in_idxprom7123,
    input wire [31:0] in_lim_ext53_pop35128,
    input wire [31:0] in_lim_ext91,
    input wire [0:0] in_memdep_phi1_pop1659_pop36125,
    input wire [0:0] in_memdep_phi1_pop1696,
    input wire [0:0] in_memdep_phi2_pop17101,
    input wire [0:0] in_memdep_phi2_pop1762_pop37130,
    input wire [0:0] in_memdep_phi4_pop18106,
    input wire [0:0] in_memdep_phi4_pop1865_pop38132,
    input wire [31:0] in_mul122,
    input wire [0:0] in_notcmp4374_pop40136,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [0:0] out_c0_exe1276,
    output wire [0:0] out_c0_exe3278,
    output wire [31:0] out_c0_exe4279,
    output wire [0:0] out_c0_exe5280,
    output wire [0:0] out_c0_exe6281,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_6_tpl;
    wire [167:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [36:0] bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_notcmp4374_pop40136, in_mul122, in_memdep_phi4_pop1865_pop38132, in_memdep_phi4_pop18106, in_memdep_phi2_pop1762_pop37130, in_memdep_phi2_pop17101, in_memdep_phi1_pop1696, in_memdep_phi1_pop1659_pop36125, in_lim_ext91, in_lim_ext53_pop35128, in_idxprom7123, in_exitcond1072_pop39134};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[134:134]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[166:135]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[167:167]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,27)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x(STALLENABLE,30)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_wireValid = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_memdep_covariance_avm_address@20000000
    // out out_memdep_covariance_avm_burstcount@20000000
    // out out_memdep_covariance_avm_byteenable@20000000
    // out out_memdep_covariance_avm_enable@20000000
    // out out_memdep_covariance_avm_read@20000000
    // out out_memdep_covariance_avm_write@20000000
    // out out_memdep_covariance_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_profile_loop_o_valid@15
    // out out_unnamed_covariance3_covariance_avm_address@20000000
    // out out_unnamed_covariance3_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance3_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance3_covariance_avm_enable@20000000
    // out out_unnamed_covariance3_covariance_avm_read@20000000
    // out out_unnamed_covariance3_covariance_avm_write@20000000
    // out out_unnamed_covariance3_covariance_avm_writedata@20000000
    // out out_c0_exit275_0_tpl@15
    // out out_c0_exit275_1_tpl@15
    // out out_c0_exit275_2_tpl@15
    // out out_c0_exit275_3_tpl@15
    // out out_c0_exit275_4_tpl@15
    // out out_c0_exit275_5_tpl@15
    // out out_c0_exit275_6_tpl@15
    // out out_c0_exit275_7_tpl@15
    // out out_c0_exit275_8_tpl@15
    // out out_c0_exit275_9_tpl@15
    // out out_c0_exit275_10_tpl@15
    covariance_i_sfc_s_c0_in_for_body13_s_c0_enter25137_covariance13 thei_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .in_c0_eni13250_0_tpl(GND_q),
        .in_c0_eni13250_1_tpl(GND_q),
        .in_c0_eni13250_2_tpl(bubble_select_stall_entry_c),
        .in_c0_eni13250_3_tpl(bubble_select_stall_entry_f),
        .in_c0_eni13250_4_tpl(bubble_select_stall_entry_l),
        .in_c0_eni13250_5_tpl(bubble_select_stall_entry_i),
        .in_c0_eni13250_6_tpl(bubble_select_stall_entry_k),
        .in_c0_eni13250_7_tpl(bubble_select_stall_entry_d),
        .in_c0_eni13250_8_tpl(bubble_select_stall_entry_b),
        .in_c0_eni13250_9_tpl(bubble_select_stall_entry_m),
        .in_c0_eni13250_10_tpl(bubble_select_stall_entry_e),
        .in_c0_eni13250_11_tpl(bubble_select_stall_entry_g),
        .in_c0_eni13250_12_tpl(bubble_select_stall_entry_h),
        .in_c0_eni13250_13_tpl(bubble_select_stall_entry_j),
        .out_memdep_covariance_avm_address(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_covariance3_covariance_avm_address(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_writedata),
        .out_c0_exit275_0_tpl(),
        .out_c0_exit275_1_tpl(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_1_tpl),
        .out_c0_exit275_2_tpl(),
        .out_c0_exit275_3_tpl(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_3_tpl),
        .out_c0_exit275_4_tpl(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_4_tpl),
        .out_c0_exit275_5_tpl(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_5_tpl),
        .out_c0_exit275_6_tpl(i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_6_tpl),
        .out_c0_exit275_7_tpl(),
        .out_c0_exit275_8_tpl(),
        .out_c0_exit275_9_tpl(),
        .out_c0_exit275_10_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_covariance3_covariance_avm_address = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_address;
    assign out_unnamed_covariance3_covariance_avm_enable = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_enable;
    assign out_unnamed_covariance3_covariance_avm_read = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_read;
    assign out_unnamed_covariance3_covariance_avm_write = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_write;
    assign out_unnamed_covariance3_covariance_avm_writedata = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_writedata;
    assign out_unnamed_covariance3_covariance_avm_byteenable = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_byteenable;
    assign out_unnamed_covariance3_covariance_avm_burstcount = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_unnamed_covariance3_covariance_avm_burstcount;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,17)
    assign out_memdep_covariance_avm_address = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_address;
    assign out_memdep_covariance_avm_enable = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_enable;
    assign out_memdep_covariance_avm_read = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_read;
    assign out_memdep_covariance_avm_write = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_write;
    assign out_memdep_covariance_avm_writedata = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_writedata;
    assign out_memdep_covariance_avm_byteenable = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_byteenable;
    assign out_memdep_covariance_avm_burstcount = i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_memdep_covariance_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q = {i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_6_tpl, i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_5_tpl, i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_4_tpl, i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_3_tpl, i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_c0_exit275_1_tpl, i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[34:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_q[36:36]);

    // dupName_0_sync_out_x(GPOUT,18)@15
    assign out_c0_exe1276 = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_c;
    assign out_c0_exe3278 = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_d;
    assign out_c0_exe4279 = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_e;
    assign out_c0_exe5280 = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_f;
    assign out_c0_exe6281 = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_g;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body13_covariances_c0_enter25137_covariance13_aunroll_x_V0;

    // rst_sync(RESETSYNC,41)
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
