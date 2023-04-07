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
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B5_merge (
    input wire [31:0] in_add55_0,
    input wire [31:0] in_add55_1,
    input wire [0:0] in_cmp41658_0,
    input wire [0:0] in_cmp41658_1,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_fpga_indvars_iv746_0,
    input wire [31:0] in_fpga_indvars_iv746_1,
    input wire [31:0] in_fpga_indvars_iv943_0,
    input wire [31:0] in_fpga_indvars_iv943_1,
    input wire [31:0] in_j_01849_0,
    input wire [31:0] in_j_01849_1,
    input wire [0:0] in_memdep_phi4_pop72952_0,
    input wire [0:0] in_memdep_phi4_pop72952_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_gaussian4_0,
    input wire [32:0] in_unnamed_gaussian4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add55,
    output wire [0:0] out_cmp41658,
    output wire [0:0] out_forked26,
    output wire [31:0] out_fpga_indvars_iv746,
    output wire [31:0] out_fpga_indvars_iv943,
    output wire [31:0] out_j_01849,
    output wire [0:0] out_memdep_phi4_pop72952,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_gaussian4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add55_mux_s;
    reg [31:0] add55_mux_q;
    wire [0:0] cmp41658_mux_s;
    reg [0:0] cmp41658_mux_q;
    wire [0:0] forked26_mux_s;
    reg [0:0] forked26_mux_q;
    wire [0:0] fpga_indvars_iv746_mux_s;
    reg [31:0] fpga_indvars_iv746_mux_q;
    wire [0:0] fpga_indvars_iv943_mux_s;
    reg [31:0] fpga_indvars_iv943_mux_q;
    wire [0:0] j_01849_mux_s;
    reg [31:0] j_01849_mux_q;
    wire [0:0] memdep_phi4_pop72952_mux_s;
    reg [0:0] memdep_phi4_pop72952_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian4_mux_s;
    reg [32:0] unnamed_gaussian4_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add55_mux(MUX,2)
    assign add55_mux_s = in_valid_in_0;
    always @(add55_mux_s or in_add55_1 or in_add55_0)
    begin
        unique case (add55_mux_s)
            1'b0 : add55_mux_q = in_add55_1;
            1'b1 : add55_mux_q = in_add55_0;
            default : add55_mux_q = 32'b0;
        endcase
    end

    // out_add55(GPOUT,28)
    assign out_add55 = add55_mux_q;

    // cmp41658_mux(MUX,3)
    assign cmp41658_mux_s = in_valid_in_0;
    always @(cmp41658_mux_s or in_cmp41658_1 or in_cmp41658_0)
    begin
        unique case (cmp41658_mux_s)
            1'b0 : cmp41658_mux_q = in_cmp41658_1;
            1'b1 : cmp41658_mux_q = in_cmp41658_0;
            default : cmp41658_mux_q = 1'b0;
        endcase
    end

    // out_cmp41658(GPOUT,29)
    assign out_cmp41658 = cmp41658_mux_q;

    // forked26_mux(MUX,4)
    assign forked26_mux_s = in_valid_in_0;
    always @(forked26_mux_s or in_forked26_1 or in_forked26_0)
    begin
        unique case (forked26_mux_s)
            1'b0 : forked26_mux_q = in_forked26_1;
            1'b1 : forked26_mux_q = in_forked26_0;
            default : forked26_mux_q = 1'b0;
        endcase
    end

    // out_forked26(GPOUT,30)
    assign out_forked26 = forked26_mux_q;

    // fpga_indvars_iv746_mux(MUX,5)
    assign fpga_indvars_iv746_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv746_mux_s or in_fpga_indvars_iv746_1 or in_fpga_indvars_iv746_0)
    begin
        unique case (fpga_indvars_iv746_mux_s)
            1'b0 : fpga_indvars_iv746_mux_q = in_fpga_indvars_iv746_1;
            1'b1 : fpga_indvars_iv746_mux_q = in_fpga_indvars_iv746_0;
            default : fpga_indvars_iv746_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv746(GPOUT,31)
    assign out_fpga_indvars_iv746 = fpga_indvars_iv746_mux_q;

    // fpga_indvars_iv943_mux(MUX,6)
    assign fpga_indvars_iv943_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv943_mux_s or in_fpga_indvars_iv943_1 or in_fpga_indvars_iv943_0)
    begin
        unique case (fpga_indvars_iv943_mux_s)
            1'b0 : fpga_indvars_iv943_mux_q = in_fpga_indvars_iv943_1;
            1'b1 : fpga_indvars_iv943_mux_q = in_fpga_indvars_iv943_0;
            default : fpga_indvars_iv943_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv943(GPOUT,32)
    assign out_fpga_indvars_iv943 = fpga_indvars_iv943_mux_q;

    // j_01849_mux(MUX,26)
    assign j_01849_mux_s = in_valid_in_0;
    always @(j_01849_mux_s or in_j_01849_1 or in_j_01849_0)
    begin
        unique case (j_01849_mux_s)
            1'b0 : j_01849_mux_q = in_j_01849_1;
            1'b1 : j_01849_mux_q = in_j_01849_0;
            default : j_01849_mux_q = 32'b0;
        endcase
    end

    // out_j_01849(GPOUT,33)
    assign out_j_01849 = j_01849_mux_q;

    // memdep_phi4_pop72952_mux(MUX,27)
    assign memdep_phi4_pop72952_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop72952_mux_s or in_memdep_phi4_pop72952_1 or in_memdep_phi4_pop72952_0)
    begin
        unique case (memdep_phi4_pop72952_mux_s)
            1'b0 : memdep_phi4_pop72952_mux_q = in_memdep_phi4_pop72952_1;
            1'b1 : memdep_phi4_pop72952_mux_q = in_memdep_phi4_pop72952_0;
            default : memdep_phi4_pop72952_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop72952(GPOUT,34)
    assign out_memdep_phi4_pop72952 = memdep_phi4_pop72952_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,39)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,40)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_gaussian4_mux(MUX,41)
    assign unnamed_gaussian4_mux_s = in_valid_in_0;
    always @(unnamed_gaussian4_mux_s or in_unnamed_gaussian4_1 or in_unnamed_gaussian4_0)
    begin
        unique case (unnamed_gaussian4_mux_s)
            1'b0 : unnamed_gaussian4_mux_q = in_unnamed_gaussian4_1;
            1'b1 : unnamed_gaussian4_mux_q = in_unnamed_gaussian4_0;
            default : unnamed_gaussian4_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_gaussian4(GPOUT,37)
    assign out_unnamed_gaussian4 = unnamed_gaussian4_mux_q;

    // out_valid_out(GPOUT,38)
    assign out_valid_out = valid_or_q;

endmodule
