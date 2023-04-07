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

// SystemVerilog created from kernel_3mm_B3_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B3_branch (
    input wire [0:0] in_c0_exe10329,
    input wire [0:0] in_c0_exe11330,
    input wire [0:0] in_c0_exe12331,
    input wire [31:0] in_c0_exe1320,
    input wire [0:0] in_c0_exe13332,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [0:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [31:0] in_c0_exe19,
    input wire [0:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [0:0] in_c0_exe22,
    input wire [0:0] in_c0_exe23,
    input wire [63:0] in_c0_exe2321,
    input wire [0:0] in_c0_exe24,
    input wire [0:0] in_c0_exe25,
    input wire [63:0] in_c0_exe3322,
    input wire [63:0] in_c0_exe4323,
    input wire [0:0] in_c0_exe5324,
    input wire [31:0] in_c0_exe6325,
    input wire [0:0] in_c0_exe8327,
    input wire [0:0] in_c0_exe9328,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10329,
    output wire [0:0] out_c0_exe11330,
    output wire [0:0] out_c0_exe12331,
    output wire [31:0] out_c0_exe1320,
    output wire [0:0] out_c0_exe13332,
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
    output wire [63:0] out_c0_exe2321,
    output wire [0:0] out_c0_exe24,
    output wire [0:0] out_c0_exe25,
    output wire [63:0] out_c0_exe3322,
    output wire [63:0] out_c0_exe4323,
    output wire [0:0] out_c0_exe5324,
    output wire [31:0] out_c0_exe6325,
    output wire [0:0] out_c0_exe8327,
    output wire [0:0] out_c0_exe9328,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10329(GPOUT,28)
    assign out_c0_exe10329 = in_c0_exe10329;

    // out_c0_exe11330(GPOUT,29)
    assign out_c0_exe11330 = in_c0_exe11330;

    // out_c0_exe12331(GPOUT,30)
    assign out_c0_exe12331 = in_c0_exe12331;

    // out_c0_exe1320(GPOUT,31)
    assign out_c0_exe1320 = in_c0_exe1320;

    // out_c0_exe13332(GPOUT,32)
    assign out_c0_exe13332 = in_c0_exe13332;

    // out_c0_exe14(GPOUT,33)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,34)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,35)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,36)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,37)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,38)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,39)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,40)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,41)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe23(GPOUT,42)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe2321(GPOUT,43)
    assign out_c0_exe2321 = in_c0_exe2321;

    // out_c0_exe24(GPOUT,44)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe25(GPOUT,45)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe3322(GPOUT,46)
    assign out_c0_exe3322 = in_c0_exe3322;

    // out_c0_exe4323(GPOUT,47)
    assign out_c0_exe4323 = in_c0_exe4323;

    // out_c0_exe5324(GPOUT,48)
    assign out_c0_exe5324 = in_c0_exe5324;

    // out_c0_exe6325(GPOUT,49)
    assign out_c0_exe6325 = in_c0_exe6325;

    // out_c0_exe8327(GPOUT,50)
    assign out_c0_exe8327 = in_c0_exe8327;

    // out_c0_exe9328(GPOUT,51)
    assign out_c0_exe9328 = in_c0_exe9328;

    // stall_out(LOGICAL,54)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,52)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = in_valid_in;

endmodule
