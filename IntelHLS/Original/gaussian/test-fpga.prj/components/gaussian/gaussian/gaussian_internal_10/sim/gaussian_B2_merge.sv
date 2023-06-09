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

// SystemVerilog created from gaussian_B2_merge
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B2_merge (
    input wire [0:0] in_c0_exe11451_0,
    input wire [0:0] in_c0_exe21465_0,
    input wire [0:0] in_c0_exe41486_0,
    input wire [31:0] in_c0_exe61508_0,
    input wire [31:0] in_c0_exe715110_0,
    input wire [31:0] in_c0_exe815212_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe11451,
    output wire [0:0] out_c0_exe21465,
    output wire [0:0] out_c0_exe41486,
    output wire [31:0] out_c0_exe61508,
    output wire [31:0] out_c0_exe715110,
    output wire [31:0] out_c0_exe815212,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe11451(GPOUT,10)
    assign out_c0_exe11451 = in_c0_exe11451_0;

    // out_c0_exe21465(GPOUT,11)
    assign out_c0_exe21465 = in_c0_exe21465_0;

    // out_c0_exe41486(GPOUT,12)
    assign out_c0_exe41486 = in_c0_exe41486_0;

    // out_c0_exe61508(GPOUT,13)
    assign out_c0_exe61508 = in_c0_exe61508_0;

    // out_c0_exe715110(GPOUT,14)
    assign out_c0_exe715110 = in_c0_exe715110_0;

    // out_c0_exe815212(GPOUT,15)
    assign out_c0_exe815212 = in_c0_exe815212_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

    // rst_sync(RESETSYNC,19)
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
