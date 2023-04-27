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

// SystemVerilog created from bb_covariance_B7
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B7 (
    input wire [0:0] in_exitcond1072_pop39134_0,
    input wire [0:0] in_exitcond1072_pop39134_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_idxprom7123_0,
    input wire [63:0] in_idxprom7123_1,
    input wire [31:0] in_lim_ext53_pop35128_0,
    input wire [31:0] in_lim_ext53_pop35128_1,
    input wire [31:0] in_lim_ext91_0,
    input wire [31:0] in_lim_ext91_1,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_phi1_pop1659_pop36125_0,
    input wire [0:0] in_memdep_phi1_pop1659_pop36125_1,
    input wire [0:0] in_memdep_phi1_pop1696_0,
    input wire [0:0] in_memdep_phi1_pop1696_1,
    input wire [0:0] in_memdep_phi2_pop17101_0,
    input wire [0:0] in_memdep_phi2_pop17101_1,
    input wire [0:0] in_memdep_phi2_pop1762_pop37130_0,
    input wire [0:0] in_memdep_phi2_pop1762_pop37130_1,
    input wire [0:0] in_memdep_phi4_pop18106_0,
    input wire [0:0] in_memdep_phi4_pop18106_1,
    input wire [0:0] in_memdep_phi4_pop1865_pop38132_0,
    input wire [0:0] in_memdep_phi4_pop1865_pop38132_1,
    input wire [31:0] in_mul122_0,
    input wire [31:0] in_mul122_1,
    input wire [0:0] in_notcmp4374_pop40136_0,
    input wire [0:0] in_notcmp4374_pop40136_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1276,
    output wire [31:0] out_c0_exe4279,
    output wire [0:0] out_c0_exe5280,
    output wire [0:0] out_c0_exe6281,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe1276;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe3278;
    wire [31:0] bb_covariance_B7_stall_region_out_c0_exe4279;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe5280;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe6281;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B7_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_valid_out;
    wire [0:0] covariance_B7_branch_out_c0_exe1276;
    wire [31:0] covariance_B7_branch_out_c0_exe4279;
    wire [0:0] covariance_B7_branch_out_c0_exe5280;
    wire [0:0] covariance_B7_branch_out_c0_exe6281;
    wire [0:0] covariance_B7_branch_out_stall_out;
    wire [0:0] covariance_B7_branch_out_valid_out_0;
    wire [0:0] covariance_B7_branch_out_valid_out_1;
    wire [0:0] covariance_B7_merge_out_exitcond1072_pop39134;
    wire [63:0] covariance_B7_merge_out_idxprom7123;
    wire [31:0] covariance_B7_merge_out_lim_ext53_pop35128;
    wire [31:0] covariance_B7_merge_out_lim_ext91;
    wire [0:0] covariance_B7_merge_out_memdep_phi1_pop1659_pop36125;
    wire [0:0] covariance_B7_merge_out_memdep_phi1_pop1696;
    wire [0:0] covariance_B7_merge_out_memdep_phi2_pop17101;
    wire [0:0] covariance_B7_merge_out_memdep_phi2_pop1762_pop37130;
    wire [0:0] covariance_B7_merge_out_memdep_phi4_pop18106;
    wire [0:0] covariance_B7_merge_out_memdep_phi4_pop1865_pop38132;
    wire [31:0] covariance_B7_merge_out_mul122;
    wire [0:0] covariance_B7_merge_out_notcmp4374_pop40136;
    wire [0:0] covariance_B7_merge_out_stall_out_0;
    wire [0:0] covariance_B7_merge_out_stall_out_1;
    wire [0:0] covariance_B7_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B7_merge(BLACKBOX,4)
    covariance_B7_merge thecovariance_B7_merge (
        .in_exitcond1072_pop39134_0(in_exitcond1072_pop39134_0),
        .in_exitcond1072_pop39134_1(in_exitcond1072_pop39134_1),
        .in_idxprom7123_0(in_idxprom7123_0),
        .in_idxprom7123_1(in_idxprom7123_1),
        .in_lim_ext53_pop35128_0(in_lim_ext53_pop35128_0),
        .in_lim_ext53_pop35128_1(in_lim_ext53_pop35128_1),
        .in_lim_ext91_0(in_lim_ext91_0),
        .in_lim_ext91_1(in_lim_ext91_1),
        .in_memdep_phi1_pop1659_pop36125_0(in_memdep_phi1_pop1659_pop36125_0),
        .in_memdep_phi1_pop1659_pop36125_1(in_memdep_phi1_pop1659_pop36125_1),
        .in_memdep_phi1_pop1696_0(in_memdep_phi1_pop1696_0),
        .in_memdep_phi1_pop1696_1(in_memdep_phi1_pop1696_1),
        .in_memdep_phi2_pop17101_0(in_memdep_phi2_pop17101_0),
        .in_memdep_phi2_pop17101_1(in_memdep_phi2_pop17101_1),
        .in_memdep_phi2_pop1762_pop37130_0(in_memdep_phi2_pop1762_pop37130_0),
        .in_memdep_phi2_pop1762_pop37130_1(in_memdep_phi2_pop1762_pop37130_1),
        .in_memdep_phi4_pop18106_0(in_memdep_phi4_pop18106_0),
        .in_memdep_phi4_pop18106_1(in_memdep_phi4_pop18106_1),
        .in_memdep_phi4_pop1865_pop38132_0(in_memdep_phi4_pop1865_pop38132_0),
        .in_memdep_phi4_pop1865_pop38132_1(in_memdep_phi4_pop1865_pop38132_1),
        .in_mul122_0(in_mul122_0),
        .in_mul122_1(in_mul122_1),
        .in_notcmp4374_pop40136_0(in_notcmp4374_pop40136_0),
        .in_notcmp4374_pop40136_1(in_notcmp4374_pop40136_1),
        .in_stall_in(bb_covariance_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1072_pop39134(covariance_B7_merge_out_exitcond1072_pop39134),
        .out_idxprom7123(covariance_B7_merge_out_idxprom7123),
        .out_lim_ext53_pop35128(covariance_B7_merge_out_lim_ext53_pop35128),
        .out_lim_ext91(covariance_B7_merge_out_lim_ext91),
        .out_memdep_phi1_pop1659_pop36125(covariance_B7_merge_out_memdep_phi1_pop1659_pop36125),
        .out_memdep_phi1_pop1696(covariance_B7_merge_out_memdep_phi1_pop1696),
        .out_memdep_phi2_pop17101(covariance_B7_merge_out_memdep_phi2_pop17101),
        .out_memdep_phi2_pop1762_pop37130(covariance_B7_merge_out_memdep_phi2_pop1762_pop37130),
        .out_memdep_phi4_pop18106(covariance_B7_merge_out_memdep_phi4_pop18106),
        .out_memdep_phi4_pop1865_pop38132(covariance_B7_merge_out_memdep_phi4_pop1865_pop38132),
        .out_mul122(covariance_B7_merge_out_mul122),
        .out_notcmp4374_pop40136(covariance_B7_merge_out_notcmp4374_pop40136),
        .out_stall_out_0(covariance_B7_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B7_merge_out_stall_out_1),
        .out_valid_out(covariance_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_stall_region(BLACKBOX,2)
    covariance_bb_B7_stall_region thebb_covariance_B7_stall_region (
        .in_exitcond1072_pop39134(covariance_B7_merge_out_exitcond1072_pop39134),
        .in_flush(in_flush),
        .in_idxprom7123(covariance_B7_merge_out_idxprom7123),
        .in_lim_ext53_pop35128(covariance_B7_merge_out_lim_ext53_pop35128),
        .in_lim_ext91(covariance_B7_merge_out_lim_ext91),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_memdep_phi1_pop1659_pop36125(covariance_B7_merge_out_memdep_phi1_pop1659_pop36125),
        .in_memdep_phi1_pop1696(covariance_B7_merge_out_memdep_phi1_pop1696),
        .in_memdep_phi2_pop17101(covariance_B7_merge_out_memdep_phi2_pop17101),
        .in_memdep_phi2_pop1762_pop37130(covariance_B7_merge_out_memdep_phi2_pop1762_pop37130),
        .in_memdep_phi4_pop18106(covariance_B7_merge_out_memdep_phi4_pop18106),
        .in_memdep_phi4_pop1865_pop38132(covariance_B7_merge_out_memdep_phi4_pop1865_pop38132),
        .in_mul122(covariance_B7_merge_out_mul122),
        .in_notcmp4374_pop40136(covariance_B7_merge_out_notcmp4374_pop40136),
        .in_stall_in(covariance_B7_branch_out_stall_out),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .in_valid_in(covariance_B7_merge_out_valid_out),
        .out_c0_exe1276(bb_covariance_B7_stall_region_out_c0_exe1276),
        .out_c0_exe3278(bb_covariance_B7_stall_region_out_c0_exe3278),
        .out_c0_exe4279(bb_covariance_B7_stall_region_out_c0_exe4279),
        .out_c0_exe5280(bb_covariance_B7_stall_region_out_c0_exe5280),
        .out_c0_exe6281(bb_covariance_B7_stall_region_out_c0_exe6281),
        .out_memdep_covariance_avm_address(bb_covariance_B7_stall_region_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B7_stall_region_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B7_stall_region_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata),
        .out_profile_loop_o_valid(bb_covariance_B7_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B7_stall_region_out_stall_out),
        .out_unnamed_covariance3_covariance_avm_address(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B7_branch(BLACKBOX,3)
    covariance_B7_branch thecovariance_B7_branch (
        .in_c0_exe1276(bb_covariance_B7_stall_region_out_c0_exe1276),
        .in_c0_exe3278(bb_covariance_B7_stall_region_out_c0_exe3278),
        .in_c0_exe4279(bb_covariance_B7_stall_region_out_c0_exe4279),
        .in_c0_exe5280(bb_covariance_B7_stall_region_out_c0_exe5280),
        .in_c0_exe6281(bb_covariance_B7_stall_region_out_c0_exe6281),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B7_stall_region_out_valid_out),
        .out_c0_exe1276(covariance_B7_branch_out_c0_exe1276),
        .out_c0_exe4279(covariance_B7_branch_out_c0_exe4279),
        .out_c0_exe5280(covariance_B7_branch_out_c0_exe5280),
        .out_c0_exe6281(covariance_B7_branch_out_c0_exe6281),
        .out_stall_out(covariance_B7_branch_out_stall_out),
        .out_valid_out_0(covariance_B7_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1276(GPOUT,42)
    assign out_c0_exe1276 = covariance_B7_branch_out_c0_exe1276;

    // out_c0_exe4279(GPOUT,43)
    assign out_c0_exe4279 = covariance_B7_branch_out_c0_exe4279;

    // out_c0_exe5280(GPOUT,44)
    assign out_c0_exe5280 = covariance_B7_branch_out_c0_exe5280;

    // out_c0_exe6281(GPOUT,45)
    assign out_c0_exe6281 = covariance_B7_branch_out_c0_exe6281;

    // out_memdep_covariance_avm_address(GPOUT,46)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,47)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,48)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,49)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,50)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,51)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,52)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,53)
    assign out_profile_loop_o_valid = bb_covariance_B7_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,54)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = covariance_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,56)
    assign out_stall_out_1 = covariance_B7_merge_out_stall_out_1;

    // out_unnamed_covariance3_covariance_avm_address(GPOUT,57)
    assign out_unnamed_covariance3_covariance_avm_address = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_address;

    // out_unnamed_covariance3_covariance_avm_burstcount(GPOUT,58)
    assign out_unnamed_covariance3_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_burstcount;

    // out_unnamed_covariance3_covariance_avm_byteenable(GPOUT,59)
    assign out_unnamed_covariance3_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_byteenable;

    // out_unnamed_covariance3_covariance_avm_enable(GPOUT,60)
    assign out_unnamed_covariance3_covariance_avm_enable = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_enable;

    // out_unnamed_covariance3_covariance_avm_read(GPOUT,61)
    assign out_unnamed_covariance3_covariance_avm_read = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_read;

    // out_unnamed_covariance3_covariance_avm_write(GPOUT,62)
    assign out_unnamed_covariance3_covariance_avm_write = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_write;

    // out_unnamed_covariance3_covariance_avm_writedata(GPOUT,63)
    assign out_unnamed_covariance3_covariance_avm_writedata = bb_covariance_B7_stall_region_out_unnamed_covariance3_covariance_avm_writedata;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = covariance_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = covariance_B7_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,67)
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
