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

// SystemVerilog created from bb_stencil_2d_B6
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6 (
    input wire [31:0] in_c_025_pop1571_0,
    input wire [31:0] in_c_025_pop1571_1,
    input wire [31:0] in_mul2838_pop1777_0,
    input wire [31:0] in_mul2838_pop1777_1,
    input wire [31:0] in_mul2862_0,
    input wire [31:0] in_mul2862_1,
    input wire [0:0] in_notcmp1868_0,
    input wire [0:0] in_notcmp1868_1,
    input wire [0:0] in_notcmp2341_pop1880_0,
    input wire [0:0] in_notcmp2341_pop1880_1,
    input wire [0:0] in_notcmp2367_0,
    input wire [0:0] in_notcmp2367_1,
    input wire [31:0] in_r_026_pop1335_pop1674_0,
    input wire [31:0] in_r_026_pop1335_pop1674_1,
    input wire [31:0] in_r_026_pop1357_0,
    input wire [31:0] in_r_026_pop1357_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1144,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2145,
    output wire [31:0] out_c0_exe3146,
    output wire [31:0] out_c0_exe4147,
    output wire [0:0] out_c0_exe5148,
    output wire [0:0] out_c0_exe6149,
    output wire [31:0] out_c0_exe7150,
    output wire [0:0] out_c0_exe8151,
    output wire [0:0] out_c0_exe9152,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe11;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe1144;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe12;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe14;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe16;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe18;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe2145;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe3146;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe4147;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe5148;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe6149;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe7150;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe8151;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe9152;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe10;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe11;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe1144;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe12;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe13;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe14;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe15;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe16;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe17;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe18;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe2145;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe3146;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe4147;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe5148;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe6149;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe7150;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe8151;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe9152;
    wire [0:0] stencil_2d_B6_branch_out_stall_out;
    wire [0:0] stencil_2d_B6_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B6_merge_out_c_025_pop1571;
    wire [31:0] stencil_2d_B6_merge_out_mul2838_pop1777;
    wire [31:0] stencil_2d_B6_merge_out_mul2862;
    wire [0:0] stencil_2d_B6_merge_out_notcmp1868;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2341_pop1880;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2367;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1335_pop1674;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1357;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // stencil_2d_B6_merge(BLACKBOX,46)
    stencil_2d_B6_merge thestencil_2d_B6_merge (
        .in_c_025_pop1571_0(in_c_025_pop1571_0),
        .in_c_025_pop1571_1(in_c_025_pop1571_1),
        .in_mul2838_pop1777_0(in_mul2838_pop1777_0),
        .in_mul2838_pop1777_1(in_mul2838_pop1777_1),
        .in_mul2862_0(in_mul2862_0),
        .in_mul2862_1(in_mul2862_1),
        .in_notcmp1868_0(in_notcmp1868_0),
        .in_notcmp1868_1(in_notcmp1868_1),
        .in_notcmp2341_pop1880_0(in_notcmp2341_pop1880_0),
        .in_notcmp2341_pop1880_1(in_notcmp2341_pop1880_1),
        .in_notcmp2367_0(in_notcmp2367_0),
        .in_notcmp2367_1(in_notcmp2367_1),
        .in_r_026_pop1335_pop1674_0(in_r_026_pop1335_pop1674_0),
        .in_r_026_pop1335_pop1674_1(in_r_026_pop1335_pop1674_1),
        .in_r_026_pop1357_0(in_r_026_pop1357_0),
        .in_r_026_pop1357_1(in_r_026_pop1357_1),
        .in_stall_in(bb_stencil_2d_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop1571(stencil_2d_B6_merge_out_c_025_pop1571),
        .out_mul2838_pop1777(stencil_2d_B6_merge_out_mul2838_pop1777),
        .out_mul2862(stencil_2d_B6_merge_out_mul2862),
        .out_notcmp1868(stencil_2d_B6_merge_out_notcmp1868),
        .out_notcmp2341_pop1880(stencil_2d_B6_merge_out_notcmp2341_pop1880),
        .out_notcmp2367(stencil_2d_B6_merge_out_notcmp2367),
        .out_r_026_pop1335_pop1674(stencil_2d_B6_merge_out_r_026_pop1335_pop1674),
        .out_r_026_pop1357(stencil_2d_B6_merge_out_r_026_pop1357),
        .out_stall_out_0(stencil_2d_B6_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B6_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_stall_region(BLACKBOX,2)
    stencil_2d_bb_B6_stall_region thebb_stencil_2d_B6_stall_region (
        .in_c_025_pop1571(stencil_2d_B6_merge_out_c_025_pop1571),
        .in_mul2838_pop1777(stencil_2d_B6_merge_out_mul2838_pop1777),
        .in_mul2862(stencil_2d_B6_merge_out_mul2862),
        .in_notcmp1868(stencil_2d_B6_merge_out_notcmp1868),
        .in_notcmp2341_pop1880(stencil_2d_B6_merge_out_notcmp2341_pop1880),
        .in_notcmp2367(stencil_2d_B6_merge_out_notcmp2367),
        .in_r_026_pop1335_pop1674(stencil_2d_B6_merge_out_r_026_pop1335_pop1674),
        .in_r_026_pop1357(stencil_2d_B6_merge_out_r_026_pop1357),
        .in_stall_in(stencil_2d_B6_branch_out_stall_out),
        .in_valid_in(stencil_2d_B6_merge_out_valid_out),
        .out_c0_exe10(bb_stencil_2d_B6_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B6_stall_region_out_c0_exe11),
        .out_c0_exe1144(bb_stencil_2d_B6_stall_region_out_c0_exe1144),
        .out_c0_exe12(bb_stencil_2d_B6_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_stencil_2d_B6_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B6_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .out_c0_exe2145(bb_stencil_2d_B6_stall_region_out_c0_exe2145),
        .out_c0_exe3146(bb_stencil_2d_B6_stall_region_out_c0_exe3146),
        .out_c0_exe4147(bb_stencil_2d_B6_stall_region_out_c0_exe4147),
        .out_c0_exe5148(bb_stencil_2d_B6_stall_region_out_c0_exe5148),
        .out_c0_exe6149(bb_stencil_2d_B6_stall_region_out_c0_exe6149),
        .out_c0_exe7150(bb_stencil_2d_B6_stall_region_out_c0_exe7150),
        .out_c0_exe8151(bb_stencil_2d_B6_stall_region_out_c0_exe8151),
        .out_c0_exe9152(bb_stencil_2d_B6_stall_region_out_c0_exe9152),
        .out_profile_loop_o_valid(bb_stencil_2d_B6_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_stencil_2d_B6_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_branch(BLACKBOX,45)
    stencil_2d_B6_branch thestencil_2d_B6_branch (
        .in_c0_exe10(bb_stencil_2d_B6_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_stencil_2d_B6_stall_region_out_c0_exe11),
        .in_c0_exe1144(bb_stencil_2d_B6_stall_region_out_c0_exe1144),
        .in_c0_exe12(bb_stencil_2d_B6_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_stencil_2d_B6_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_stencil_2d_B6_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .in_c0_exe2145(bb_stencil_2d_B6_stall_region_out_c0_exe2145),
        .in_c0_exe3146(bb_stencil_2d_B6_stall_region_out_c0_exe3146),
        .in_c0_exe4147(bb_stencil_2d_B6_stall_region_out_c0_exe4147),
        .in_c0_exe5148(bb_stencil_2d_B6_stall_region_out_c0_exe5148),
        .in_c0_exe6149(bb_stencil_2d_B6_stall_region_out_c0_exe6149),
        .in_c0_exe7150(bb_stencil_2d_B6_stall_region_out_c0_exe7150),
        .in_c0_exe8151(bb_stencil_2d_B6_stall_region_out_c0_exe8151),
        .in_c0_exe9152(bb_stencil_2d_B6_stall_region_out_c0_exe9152),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B6_stall_region_out_valid_out),
        .out_c0_exe10(stencil_2d_B6_branch_out_c0_exe10),
        .out_c0_exe11(stencil_2d_B6_branch_out_c0_exe11),
        .out_c0_exe1144(stencil_2d_B6_branch_out_c0_exe1144),
        .out_c0_exe12(stencil_2d_B6_branch_out_c0_exe12),
        .out_c0_exe13(stencil_2d_B6_branch_out_c0_exe13),
        .out_c0_exe14(stencil_2d_B6_branch_out_c0_exe14),
        .out_c0_exe15(stencil_2d_B6_branch_out_c0_exe15),
        .out_c0_exe16(stencil_2d_B6_branch_out_c0_exe16),
        .out_c0_exe17(stencil_2d_B6_branch_out_c0_exe17),
        .out_c0_exe18(stencil_2d_B6_branch_out_c0_exe18),
        .out_c0_exe2145(stencil_2d_B6_branch_out_c0_exe2145),
        .out_c0_exe3146(stencil_2d_B6_branch_out_c0_exe3146),
        .out_c0_exe4147(stencil_2d_B6_branch_out_c0_exe4147),
        .out_c0_exe5148(stencil_2d_B6_branch_out_c0_exe5148),
        .out_c0_exe6149(stencil_2d_B6_branch_out_c0_exe6149),
        .out_c0_exe7150(stencil_2d_B6_branch_out_c0_exe7150),
        .out_c0_exe8151(stencil_2d_B6_branch_out_c0_exe8151),
        .out_c0_exe9152(stencil_2d_B6_branch_out_c0_exe9152),
        .out_stall_out(stencil_2d_B6_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,22)
    assign out_c0_exe10 = stencil_2d_B6_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,23)
    assign out_c0_exe11 = stencil_2d_B6_branch_out_c0_exe11;

    // out_c0_exe1144(GPOUT,24)
    assign out_c0_exe1144 = stencil_2d_B6_branch_out_c0_exe1144;

    // out_c0_exe12(GPOUT,25)
    assign out_c0_exe12 = stencil_2d_B6_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,26)
    assign out_c0_exe13 = stencil_2d_B6_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,27)
    assign out_c0_exe14 = stencil_2d_B6_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,28)
    assign out_c0_exe15 = stencil_2d_B6_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,29)
    assign out_c0_exe16 = stencil_2d_B6_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,30)
    assign out_c0_exe17 = stencil_2d_B6_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,31)
    assign out_c0_exe18 = stencil_2d_B6_branch_out_c0_exe18;

    // out_c0_exe2145(GPOUT,32)
    assign out_c0_exe2145 = stencil_2d_B6_branch_out_c0_exe2145;

    // out_c0_exe3146(GPOUT,33)
    assign out_c0_exe3146 = stencil_2d_B6_branch_out_c0_exe3146;

    // out_c0_exe4147(GPOUT,34)
    assign out_c0_exe4147 = stencil_2d_B6_branch_out_c0_exe4147;

    // out_c0_exe5148(GPOUT,35)
    assign out_c0_exe5148 = stencil_2d_B6_branch_out_c0_exe5148;

    // out_c0_exe6149(GPOUT,36)
    assign out_c0_exe6149 = stencil_2d_B6_branch_out_c0_exe6149;

    // out_c0_exe7150(GPOUT,37)
    assign out_c0_exe7150 = stencil_2d_B6_branch_out_c0_exe7150;

    // out_c0_exe8151(GPOUT,38)
    assign out_c0_exe8151 = stencil_2d_B6_branch_out_c0_exe8151;

    // out_c0_exe9152(GPOUT,39)
    assign out_c0_exe9152 = stencil_2d_B6_branch_out_c0_exe9152;

    // out_profile_loop_o_valid(GPOUT,40)
    assign out_profile_loop_o_valid = bb_stencil_2d_B6_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = stencil_2d_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = stencil_2d_B6_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = stencil_2d_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,47)
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
