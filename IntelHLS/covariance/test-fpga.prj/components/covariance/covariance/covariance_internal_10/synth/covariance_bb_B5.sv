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

// SystemVerilog created from bb_covariance_B5
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5 (
    input wire [0:0] in_exitcond10114_0,
    input wire [0:0] in_exitcond10114_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_j_039_pop21116_0,
    input wire [31:0] in_j_039_pop21116_1,
    input wire [31:0] in_lim_ext52_pop23118_0,
    input wire [31:0] in_lim_ext52_pop23118_1,
    input wire [31:0] in_lim_ext93_0,
    input wire [31:0] in_lim_ext93_1,
    input wire [0:0] in_memdep_phi1_pop1658_pop24119_0,
    input wire [0:0] in_memdep_phi1_pop1658_pop24119_1,
    input wire [0:0] in_memdep_phi1_pop1698_0,
    input wire [0:0] in_memdep_phi1_pop1698_1,
    input wire [0:0] in_memdep_phi2_pop17103_0,
    input wire [0:0] in_memdep_phi2_pop17103_1,
    input wire [0:0] in_memdep_phi2_pop1761_pop25120_0,
    input wire [0:0] in_memdep_phi2_pop1761_pop25120_1,
    input wire [0:0] in_memdep_phi4_pop18108_0,
    input wire [0:0] in_memdep_phi4_pop18108_1,
    input wire [0:0] in_memdep_phi4_pop1864_pop26121_0,
    input wire [0:0] in_memdep_phi4_pop1864_pop26121_1,
    input wire [0:0] in_memdep_phi_pop22117_0,
    input wire [0:0] in_memdep_phi_pop22117_1,
    input wire [0:0] in_notcmp43115_0,
    input wire [0:0] in_notcmp43115_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10235,
    output wire [31:0] out_c0_exe11236,
    output wire [0:0] out_c0_exe12237,
    output wire [63:0] out_c0_exe1226,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2227,
    output wire [31:0] out_c0_exe3228,
    output wire [31:0] out_c0_exe6231,
    output wire [0:0] out_c0_exe7232,
    output wire [0:0] out_c0_exe8233,
    output wire [0:0] out_c0_exe9234,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe10235;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe11236;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe12237;
    wire [63:0] bb_covariance_B5_stall_region_out_c0_exe1226;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe13;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe14;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe2227;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe3228;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe5230;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe6231;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe7232;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe8233;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe9234;
    wire [0:0] bb_covariance_B5_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B5_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_stall_region_out_valid_out;
    wire [0:0] covariance_B5_branch_out_c0_exe10235;
    wire [31:0] covariance_B5_branch_out_c0_exe11236;
    wire [0:0] covariance_B5_branch_out_c0_exe12237;
    wire [63:0] covariance_B5_branch_out_c0_exe1226;
    wire [0:0] covariance_B5_branch_out_c0_exe13;
    wire [0:0] covariance_B5_branch_out_c0_exe14;
    wire [0:0] covariance_B5_branch_out_c0_exe2227;
    wire [31:0] covariance_B5_branch_out_c0_exe3228;
    wire [31:0] covariance_B5_branch_out_c0_exe6231;
    wire [0:0] covariance_B5_branch_out_c0_exe7232;
    wire [0:0] covariance_B5_branch_out_c0_exe8233;
    wire [0:0] covariance_B5_branch_out_c0_exe9234;
    wire [0:0] covariance_B5_branch_out_stall_out;
    wire [0:0] covariance_B5_branch_out_valid_out_0;
    wire [0:0] covariance_B5_branch_out_valid_out_1;
    wire [0:0] covariance_B5_merge_out_exitcond10114;
    wire [31:0] covariance_B5_merge_out_j_039_pop21116;
    wire [31:0] covariance_B5_merge_out_lim_ext52_pop23118;
    wire [31:0] covariance_B5_merge_out_lim_ext93;
    wire [0:0] covariance_B5_merge_out_memdep_phi1_pop1658_pop24119;
    wire [0:0] covariance_B5_merge_out_memdep_phi1_pop1698;
    wire [0:0] covariance_B5_merge_out_memdep_phi2_pop17103;
    wire [0:0] covariance_B5_merge_out_memdep_phi2_pop1761_pop25120;
    wire [0:0] covariance_B5_merge_out_memdep_phi4_pop18108;
    wire [0:0] covariance_B5_merge_out_memdep_phi4_pop1864_pop26121;
    wire [0:0] covariance_B5_merge_out_memdep_phi_pop22117;
    wire [0:0] covariance_B5_merge_out_notcmp43115;
    wire [0:0] covariance_B5_merge_out_stall_out_0;
    wire [0:0] covariance_B5_merge_out_stall_out_1;
    wire [0:0] covariance_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B5_merge(BLACKBOX,4)
    covariance_B5_merge thecovariance_B5_merge (
        .in_exitcond10114_0(in_exitcond10114_0),
        .in_exitcond10114_1(in_exitcond10114_1),
        .in_j_039_pop21116_0(in_j_039_pop21116_0),
        .in_j_039_pop21116_1(in_j_039_pop21116_1),
        .in_lim_ext52_pop23118_0(in_lim_ext52_pop23118_0),
        .in_lim_ext52_pop23118_1(in_lim_ext52_pop23118_1),
        .in_lim_ext93_0(in_lim_ext93_0),
        .in_lim_ext93_1(in_lim_ext93_1),
        .in_memdep_phi1_pop1658_pop24119_0(in_memdep_phi1_pop1658_pop24119_0),
        .in_memdep_phi1_pop1658_pop24119_1(in_memdep_phi1_pop1658_pop24119_1),
        .in_memdep_phi1_pop1698_0(in_memdep_phi1_pop1698_0),
        .in_memdep_phi1_pop1698_1(in_memdep_phi1_pop1698_1),
        .in_memdep_phi2_pop17103_0(in_memdep_phi2_pop17103_0),
        .in_memdep_phi2_pop17103_1(in_memdep_phi2_pop17103_1),
        .in_memdep_phi2_pop1761_pop25120_0(in_memdep_phi2_pop1761_pop25120_0),
        .in_memdep_phi2_pop1761_pop25120_1(in_memdep_phi2_pop1761_pop25120_1),
        .in_memdep_phi4_pop18108_0(in_memdep_phi4_pop18108_0),
        .in_memdep_phi4_pop18108_1(in_memdep_phi4_pop18108_1),
        .in_memdep_phi4_pop1864_pop26121_0(in_memdep_phi4_pop1864_pop26121_0),
        .in_memdep_phi4_pop1864_pop26121_1(in_memdep_phi4_pop1864_pop26121_1),
        .in_memdep_phi_pop22117_0(in_memdep_phi_pop22117_0),
        .in_memdep_phi_pop22117_1(in_memdep_phi_pop22117_1),
        .in_notcmp43115_0(in_notcmp43115_0),
        .in_notcmp43115_1(in_notcmp43115_1),
        .in_stall_in(bb_covariance_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond10114(covariance_B5_merge_out_exitcond10114),
        .out_j_039_pop21116(covariance_B5_merge_out_j_039_pop21116),
        .out_lim_ext52_pop23118(covariance_B5_merge_out_lim_ext52_pop23118),
        .out_lim_ext93(covariance_B5_merge_out_lim_ext93),
        .out_memdep_phi1_pop1658_pop24119(covariance_B5_merge_out_memdep_phi1_pop1658_pop24119),
        .out_memdep_phi1_pop1698(covariance_B5_merge_out_memdep_phi1_pop1698),
        .out_memdep_phi2_pop17103(covariance_B5_merge_out_memdep_phi2_pop17103),
        .out_memdep_phi2_pop1761_pop25120(covariance_B5_merge_out_memdep_phi2_pop1761_pop25120),
        .out_memdep_phi4_pop18108(covariance_B5_merge_out_memdep_phi4_pop18108),
        .out_memdep_phi4_pop1864_pop26121(covariance_B5_merge_out_memdep_phi4_pop1864_pop26121),
        .out_memdep_phi_pop22117(covariance_B5_merge_out_memdep_phi_pop22117),
        .out_notcmp43115(covariance_B5_merge_out_notcmp43115),
        .out_stall_out_0(covariance_B5_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B5_merge_out_stall_out_1),
        .out_valid_out(covariance_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_stall_region(BLACKBOX,2)
    covariance_bb_B5_stall_region thebb_covariance_B5_stall_region (
        .in_exitcond10114(covariance_B5_merge_out_exitcond10114),
        .in_flush(in_flush),
        .in_j_039_pop21116(covariance_B5_merge_out_j_039_pop21116),
        .in_lim_ext52_pop23118(covariance_B5_merge_out_lim_ext52_pop23118),
        .in_lim_ext93(covariance_B5_merge_out_lim_ext93),
        .in_memdep_phi1_pop1658_pop24119(covariance_B5_merge_out_memdep_phi1_pop1658_pop24119),
        .in_memdep_phi1_pop1698(covariance_B5_merge_out_memdep_phi1_pop1698),
        .in_memdep_phi2_pop17103(covariance_B5_merge_out_memdep_phi2_pop17103),
        .in_memdep_phi2_pop1761_pop25120(covariance_B5_merge_out_memdep_phi2_pop1761_pop25120),
        .in_memdep_phi4_pop18108(covariance_B5_merge_out_memdep_phi4_pop18108),
        .in_memdep_phi4_pop1864_pop26121(covariance_B5_merge_out_memdep_phi4_pop1864_pop26121),
        .in_memdep_phi_pop22117(covariance_B5_merge_out_memdep_phi_pop22117),
        .in_notcmp43115(covariance_B5_merge_out_notcmp43115),
        .in_stall_in(covariance_B5_branch_out_stall_out),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_valid_in(covariance_B5_merge_out_valid_out),
        .out_c0_exe10235(bb_covariance_B5_stall_region_out_c0_exe10235),
        .out_c0_exe11236(bb_covariance_B5_stall_region_out_c0_exe11236),
        .out_c0_exe12237(bb_covariance_B5_stall_region_out_c0_exe12237),
        .out_c0_exe1226(bb_covariance_B5_stall_region_out_c0_exe1226),
        .out_c0_exe13(bb_covariance_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B5_stall_region_out_c0_exe14),
        .out_c0_exe2227(bb_covariance_B5_stall_region_out_c0_exe2227),
        .out_c0_exe3228(bb_covariance_B5_stall_region_out_c0_exe3228),
        .out_c0_exe5230(bb_covariance_B5_stall_region_out_c0_exe5230),
        .out_c0_exe6231(bb_covariance_B5_stall_region_out_c0_exe6231),
        .out_c0_exe7232(bb_covariance_B5_stall_region_out_c0_exe7232),
        .out_c0_exe8233(bb_covariance_B5_stall_region_out_c0_exe8233),
        .out_c0_exe9234(bb_covariance_B5_stall_region_out_c0_exe9234),
        .out_profile_loop_o_valid(bb_covariance_B5_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B5_stall_region_out_stall_out),
        .out_unnamed_covariance2_covariance_avm_address(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B5_branch(BLACKBOX,3)
    covariance_B5_branch thecovariance_B5_branch (
        .in_c0_exe10235(bb_covariance_B5_stall_region_out_c0_exe10235),
        .in_c0_exe11236(bb_covariance_B5_stall_region_out_c0_exe11236),
        .in_c0_exe12237(bb_covariance_B5_stall_region_out_c0_exe12237),
        .in_c0_exe1226(bb_covariance_B5_stall_region_out_c0_exe1226),
        .in_c0_exe13(bb_covariance_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_covariance_B5_stall_region_out_c0_exe14),
        .in_c0_exe2227(bb_covariance_B5_stall_region_out_c0_exe2227),
        .in_c0_exe3228(bb_covariance_B5_stall_region_out_c0_exe3228),
        .in_c0_exe5230(bb_covariance_B5_stall_region_out_c0_exe5230),
        .in_c0_exe6231(bb_covariance_B5_stall_region_out_c0_exe6231),
        .in_c0_exe7232(bb_covariance_B5_stall_region_out_c0_exe7232),
        .in_c0_exe8233(bb_covariance_B5_stall_region_out_c0_exe8233),
        .in_c0_exe9234(bb_covariance_B5_stall_region_out_c0_exe9234),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B5_stall_region_out_valid_out),
        .out_c0_exe10235(covariance_B5_branch_out_c0_exe10235),
        .out_c0_exe11236(covariance_B5_branch_out_c0_exe11236),
        .out_c0_exe12237(covariance_B5_branch_out_c0_exe12237),
        .out_c0_exe1226(covariance_B5_branch_out_c0_exe1226),
        .out_c0_exe13(covariance_B5_branch_out_c0_exe13),
        .out_c0_exe14(covariance_B5_branch_out_c0_exe14),
        .out_c0_exe2227(covariance_B5_branch_out_c0_exe2227),
        .out_c0_exe3228(covariance_B5_branch_out_c0_exe3228),
        .out_c0_exe6231(covariance_B5_branch_out_c0_exe6231),
        .out_c0_exe7232(covariance_B5_branch_out_c0_exe7232),
        .out_c0_exe8233(covariance_B5_branch_out_c0_exe8233),
        .out_c0_exe9234(covariance_B5_branch_out_c0_exe9234),
        .out_stall_out(covariance_B5_branch_out_stall_out),
        .out_valid_out_0(covariance_B5_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10235(GPOUT,38)
    assign out_c0_exe10235 = covariance_B5_branch_out_c0_exe10235;

    // out_c0_exe11236(GPOUT,39)
    assign out_c0_exe11236 = covariance_B5_branch_out_c0_exe11236;

    // out_c0_exe12237(GPOUT,40)
    assign out_c0_exe12237 = covariance_B5_branch_out_c0_exe12237;

    // out_c0_exe1226(GPOUT,41)
    assign out_c0_exe1226 = covariance_B5_branch_out_c0_exe1226;

    // out_c0_exe13(GPOUT,42)
    assign out_c0_exe13 = covariance_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,43)
    assign out_c0_exe14 = covariance_B5_branch_out_c0_exe14;

    // out_c0_exe2227(GPOUT,44)
    assign out_c0_exe2227 = covariance_B5_branch_out_c0_exe2227;

    // out_c0_exe3228(GPOUT,45)
    assign out_c0_exe3228 = covariance_B5_branch_out_c0_exe3228;

    // out_c0_exe6231(GPOUT,46)
    assign out_c0_exe6231 = covariance_B5_branch_out_c0_exe6231;

    // out_c0_exe7232(GPOUT,47)
    assign out_c0_exe7232 = covariance_B5_branch_out_c0_exe7232;

    // out_c0_exe8233(GPOUT,48)
    assign out_c0_exe8233 = covariance_B5_branch_out_c0_exe8233;

    // out_c0_exe9234(GPOUT,49)
    assign out_c0_exe9234 = covariance_B5_branch_out_c0_exe9234;

    // out_profile_loop_o_valid(GPOUT,50)
    assign out_profile_loop_o_valid = bb_covariance_B5_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,51)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = covariance_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = covariance_B5_merge_out_stall_out_1;

    // out_unnamed_covariance2_covariance_avm_address(GPOUT,54)
    assign out_unnamed_covariance2_covariance_avm_address = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address;

    // out_unnamed_covariance2_covariance_avm_burstcount(GPOUT,55)
    assign out_unnamed_covariance2_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount;

    // out_unnamed_covariance2_covariance_avm_byteenable(GPOUT,56)
    assign out_unnamed_covariance2_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable;

    // out_unnamed_covariance2_covariance_avm_enable(GPOUT,57)
    assign out_unnamed_covariance2_covariance_avm_enable = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable;

    // out_unnamed_covariance2_covariance_avm_read(GPOUT,58)
    assign out_unnamed_covariance2_covariance_avm_read = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read;

    // out_unnamed_covariance2_covariance_avm_write(GPOUT,59)
    assign out_unnamed_covariance2_covariance_avm_write = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write;

    // out_unnamed_covariance2_covariance_avm_writedata(GPOUT,60)
    assign out_unnamed_covariance2_covariance_avm_writedata = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata;

    // out_valid_in_1(GPOUT,61)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,62)
    assign out_valid_out_0 = covariance_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,63)
    assign out_valid_out_1 = covariance_B5_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,64)
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
