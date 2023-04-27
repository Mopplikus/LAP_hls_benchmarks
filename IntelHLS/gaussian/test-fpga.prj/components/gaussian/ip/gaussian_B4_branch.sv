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

// SystemVerilog created from gaussian_B4_branch
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B4_branch (
    input wire [32:0] in_c0_exe193,
    input wire [31:0] in_c1_exe199,
    input wire [0:0] in_c1_exe2,
    input wire [31:0] in_fpga_indvars_iv7,
    input wire [31:0] in_fpga_indvars_iv9,
    input wire [31:0] in_j_018,
    input wire [0:0] in_memdep_phi4_pop725,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe193,
    output wire [31:0] out_c1_exe199,
    output wire [0:0] out_c1_exe2,
    output wire [31:0] out_fpga_indvars_iv7,
    output wire [31:0] out_fpga_indvars_iv9,
    output wire [31:0] out_j_018,
    output wire [0:0] out_memdep_phi4_pop725,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe193(GPOUT,11)
    assign out_c0_exe193 = in_c0_exe193;

    // out_c1_exe199(GPOUT,12)
    assign out_c1_exe199 = in_c1_exe199;

    // out_c1_exe2(GPOUT,13)
    assign out_c1_exe2 = in_c1_exe2;

    // out_fpga_indvars_iv7(GPOUT,14)
    assign out_fpga_indvars_iv7 = in_fpga_indvars_iv7;

    // out_fpga_indvars_iv9(GPOUT,15)
    assign out_fpga_indvars_iv9 = in_fpga_indvars_iv9;

    // out_j_018(GPOUT,16)
    assign out_j_018 = in_j_018;

    // out_memdep_phi4_pop725(GPOUT,17)
    assign out_memdep_phi4_pop725 = in_memdep_phi4_pop725;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,18)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,21)
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
