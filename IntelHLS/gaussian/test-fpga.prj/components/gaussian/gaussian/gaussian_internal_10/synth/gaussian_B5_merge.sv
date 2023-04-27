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

// SystemVerilog created from gaussian_B5_merge
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B5_merge (
    input wire [31:0] in_add52_0,
    input wire [31:0] in_add52_1,
    input wire [0:0] in_cmp41655_0,
    input wire [0:0] in_cmp41655_1,
    input wire [31:0] in_fpga_indvars_iv743_0,
    input wire [31:0] in_fpga_indvars_iv743_1,
    input wire [31:0] in_fpga_indvars_iv940_0,
    input wire [31:0] in_fpga_indvars_iv940_1,
    input wire [31:0] in_j_01846_0,
    input wire [31:0] in_j_01846_1,
    input wire [0:0] in_memdep_phi4_pop72549_0,
    input wire [0:0] in_memdep_phi4_pop72549_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_gaussian3_0,
    input wire [32:0] in_unnamed_gaussian3_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add52,
    output wire [0:0] out_cmp41655,
    output wire [31:0] out_fpga_indvars_iv743,
    output wire [31:0] out_fpga_indvars_iv940,
    output wire [31:0] out_j_01846,
    output wire [0:0] out_memdep_phi4_pop72549,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_gaussian3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add52_mux_s;
    reg [31:0] add52_mux_q;
    wire [0:0] cmp41655_mux_s;
    reg [0:0] cmp41655_mux_q;
    wire [0:0] fpga_indvars_iv743_mux_s;
    reg [31:0] fpga_indvars_iv743_mux_q;
    wire [0:0] fpga_indvars_iv940_mux_s;
    reg [31:0] fpga_indvars_iv940_mux_q;
    wire [0:0] j_01846_mux_s;
    reg [31:0] j_01846_mux_q;
    wire [0:0] memdep_phi4_pop72549_mux_s;
    reg [0:0] memdep_phi4_pop72549_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian3_mux_s;
    reg [32:0] unnamed_gaussian3_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add52_mux(MUX,2)
    assign add52_mux_s = in_valid_in_0;
    always @(add52_mux_s or in_add52_1 or in_add52_0)
    begin
        unique case (add52_mux_s)
            1'b0 : add52_mux_q = in_add52_1;
            1'b1 : add52_mux_q = in_add52_0;
            default : add52_mux_q = 32'b0;
        endcase
    end

    // out_add52(GPOUT,25)
    assign out_add52 = add52_mux_q;

    // cmp41655_mux(MUX,3)
    assign cmp41655_mux_s = in_valid_in_0;
    always @(cmp41655_mux_s or in_cmp41655_1 or in_cmp41655_0)
    begin
        unique case (cmp41655_mux_s)
            1'b0 : cmp41655_mux_q = in_cmp41655_1;
            1'b1 : cmp41655_mux_q = in_cmp41655_0;
            default : cmp41655_mux_q = 1'b0;
        endcase
    end

    // out_cmp41655(GPOUT,26)
    assign out_cmp41655 = cmp41655_mux_q;

    // fpga_indvars_iv743_mux(MUX,4)
    assign fpga_indvars_iv743_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv743_mux_s or in_fpga_indvars_iv743_1 or in_fpga_indvars_iv743_0)
    begin
        unique case (fpga_indvars_iv743_mux_s)
            1'b0 : fpga_indvars_iv743_mux_q = in_fpga_indvars_iv743_1;
            1'b1 : fpga_indvars_iv743_mux_q = in_fpga_indvars_iv743_0;
            default : fpga_indvars_iv743_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv743(GPOUT,27)
    assign out_fpga_indvars_iv743 = fpga_indvars_iv743_mux_q;

    // fpga_indvars_iv940_mux(MUX,5)
    assign fpga_indvars_iv940_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv940_mux_s or in_fpga_indvars_iv940_1 or in_fpga_indvars_iv940_0)
    begin
        unique case (fpga_indvars_iv940_mux_s)
            1'b0 : fpga_indvars_iv940_mux_q = in_fpga_indvars_iv940_1;
            1'b1 : fpga_indvars_iv940_mux_q = in_fpga_indvars_iv940_0;
            default : fpga_indvars_iv940_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv940(GPOUT,28)
    assign out_fpga_indvars_iv940 = fpga_indvars_iv940_mux_q;

    // j_01846_mux(MUX,23)
    assign j_01846_mux_s = in_valid_in_0;
    always @(j_01846_mux_s or in_j_01846_1 or in_j_01846_0)
    begin
        unique case (j_01846_mux_s)
            1'b0 : j_01846_mux_q = in_j_01846_1;
            1'b1 : j_01846_mux_q = in_j_01846_0;
            default : j_01846_mux_q = 32'b0;
        endcase
    end

    // out_j_01846(GPOUT,29)
    assign out_j_01846 = j_01846_mux_q;

    // memdep_phi4_pop72549_mux(MUX,24)
    assign memdep_phi4_pop72549_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop72549_mux_s or in_memdep_phi4_pop72549_1 or in_memdep_phi4_pop72549_0)
    begin
        unique case (memdep_phi4_pop72549_mux_s)
            1'b0 : memdep_phi4_pop72549_mux_q = in_memdep_phi4_pop72549_1;
            1'b1 : memdep_phi4_pop72549_mux_q = in_memdep_phi4_pop72549_0;
            default : memdep_phi4_pop72549_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop72549(GPOUT,30)
    assign out_memdep_phi4_pop72549 = memdep_phi4_pop72549_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,35)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,36)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_gaussian3_mux(MUX,37)
    assign unnamed_gaussian3_mux_s = in_valid_in_0;
    always @(unnamed_gaussian3_mux_s or in_unnamed_gaussian3_1 or in_unnamed_gaussian3_0)
    begin
        unique case (unnamed_gaussian3_mux_s)
            1'b0 : unnamed_gaussian3_mux_q = in_unnamed_gaussian3_1;
            1'b1 : unnamed_gaussian3_mux_q = in_unnamed_gaussian3_0;
            default : unnamed_gaussian3_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_gaussian3(GPOUT,33)
    assign out_unnamed_gaussian3 = unnamed_gaussian3_mux_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,39)
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
