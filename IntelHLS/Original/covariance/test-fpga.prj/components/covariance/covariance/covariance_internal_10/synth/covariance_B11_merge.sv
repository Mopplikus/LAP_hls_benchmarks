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

// SystemVerilog created from covariance_B11_merge
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B11_merge (
    input wire [0:0] in_c0_exe1042230_0,
    input wire [0:0] in_c0_exe1142331_0,
    input wire [0:0] in_c0_exe1242432_0,
    input wire [63:0] in_c0_exe141320_0,
    input wire [63:0] in_c0_exe241421_0,
    input wire [0:0] in_c0_exe441624_0,
    input wire [31:0] in_c0_exe541725_0,
    input wire [31:0] in_c0_exe842028_0,
    input wire [31:0] in_c0_exe942129_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1042230,
    output wire [0:0] out_c0_exe1142331,
    output wire [0:0] out_c0_exe1242432,
    output wire [63:0] out_c0_exe141320,
    output wire [63:0] out_c0_exe241421,
    output wire [0:0] out_c0_exe441624,
    output wire [31:0] out_c0_exe541725,
    output wire [31:0] out_c0_exe842028,
    output wire [31:0] out_c0_exe942129,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe1042230(GPOUT,13)
    assign out_c0_exe1042230 = in_c0_exe1042230_0;

    // out_c0_exe1142331(GPOUT,14)
    assign out_c0_exe1142331 = in_c0_exe1142331_0;

    // out_c0_exe1242432(GPOUT,15)
    assign out_c0_exe1242432 = in_c0_exe1242432_0;

    // out_c0_exe141320(GPOUT,16)
    assign out_c0_exe141320 = in_c0_exe141320_0;

    // out_c0_exe241421(GPOUT,17)
    assign out_c0_exe241421 = in_c0_exe241421_0;

    // out_c0_exe441624(GPOUT,18)
    assign out_c0_exe441624 = in_c0_exe441624_0;

    // out_c0_exe541725(GPOUT,19)
    assign out_c0_exe541725 = in_c0_exe541725_0;

    // out_c0_exe842028(GPOUT,20)
    assign out_c0_exe842028 = in_c0_exe842028_0;

    // out_c0_exe942129(GPOUT,21)
    assign out_c0_exe942129 = in_c0_exe942129_0;

    // stall_out(LOGICAL,24)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = in_valid_in_0;

    // rst_sync(RESETSYNC,25)
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
