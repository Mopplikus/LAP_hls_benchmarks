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

// SystemVerilog created from covariance_B9_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B9_merge (
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28169_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28169_1,
    input wire [31:0] in_i24_034_pop29175_0,
    input wire [31:0] in_i24_034_pop29175_1,
    input wire [31:0] in_lim_ext77_pop49164_0,
    input wire [31:0] in_lim_ext77_pop49164_1,
    input wire [31:0] in_lim_ext78_pop30178_0,
    input wire [31:0] in_lim_ext78_pop30178_1,
    input wire [0:0] in_notcmp27172_0,
    input wire [0:0] in_notcmp27172_1,
    input wire [31:0] in_reorder_limiter_enter133_0,
    input wire [31:0] in_reorder_limiter_enter133_1,
    input wire [31:0] in_reorder_limiter_enter91_pop31181_0,
    input wire [31:0] in_reorder_limiter_enter91_pop31181_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked23,
    output wire [32:0] out_fpga_indvars_iv14_pop28169,
    output wire [31:0] out_i24_034_pop29175,
    output wire [31:0] out_lim_ext77_pop49164,
    output wire [31:0] out_lim_ext78_pop30178,
    output wire [0:0] out_notcmp27172,
    output wire [31:0] out_reorder_limiter_enter133,
    output wire [31:0] out_reorder_limiter_enter91_pop31181,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked23_mux_s;
    reg [0:0] forked23_mux_q;
    wire [0:0] fpga_indvars_iv14_pop28169_mux_s;
    reg [32:0] fpga_indvars_iv14_pop28169_mux_q;
    wire [0:0] i24_034_pop29175_mux_s;
    reg [31:0] i24_034_pop29175_mux_q;
    wire [0:0] lim_ext77_pop49164_mux_s;
    reg [31:0] lim_ext77_pop49164_mux_q;
    wire [0:0] lim_ext78_pop30178_mux_s;
    reg [31:0] lim_ext78_pop30178_mux_q;
    wire [0:0] notcmp27172_mux_s;
    reg [0:0] notcmp27172_mux_q;
    wire [0:0] reorder_limiter_enter133_mux_s;
    reg [31:0] reorder_limiter_enter133_mux_q;
    wire [0:0] reorder_limiter_enter91_pop31181_mux_s;
    reg [31:0] reorder_limiter_enter91_pop31181_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked23_mux(MUX,2)
    assign forked23_mux_s = in_valid_in_0;
    always @(forked23_mux_s or in_forked23_1 or in_forked23_0)
    begin
        unique case (forked23_mux_s)
            1'b0 : forked23_mux_q = in_forked23_1;
            1'b1 : forked23_mux_q = in_forked23_0;
            default : forked23_mux_q = 1'b0;
        endcase
    end

    // out_forked23(GPOUT,27)
    assign out_forked23 = forked23_mux_q;

    // fpga_indvars_iv14_pop28169_mux(MUX,3)
    assign fpga_indvars_iv14_pop28169_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop28169_mux_s or in_fpga_indvars_iv14_pop28169_1 or in_fpga_indvars_iv14_pop28169_0)
    begin
        unique case (fpga_indvars_iv14_pop28169_mux_s)
            1'b0 : fpga_indvars_iv14_pop28169_mux_q = in_fpga_indvars_iv14_pop28169_1;
            1'b1 : fpga_indvars_iv14_pop28169_mux_q = in_fpga_indvars_iv14_pop28169_0;
            default : fpga_indvars_iv14_pop28169_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop28169(GPOUT,28)
    assign out_fpga_indvars_iv14_pop28169 = fpga_indvars_iv14_pop28169_mux_q;

    // i24_034_pop29175_mux(MUX,4)
    assign i24_034_pop29175_mux_s = in_valid_in_0;
    always @(i24_034_pop29175_mux_s or in_i24_034_pop29175_1 or in_i24_034_pop29175_0)
    begin
        unique case (i24_034_pop29175_mux_s)
            1'b0 : i24_034_pop29175_mux_q = in_i24_034_pop29175_1;
            1'b1 : i24_034_pop29175_mux_q = in_i24_034_pop29175_0;
            default : i24_034_pop29175_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop29175(GPOUT,29)
    assign out_i24_034_pop29175 = i24_034_pop29175_mux_q;

    // lim_ext77_pop49164_mux(MUX,24)
    assign lim_ext77_pop49164_mux_s = in_valid_in_0;
    always @(lim_ext77_pop49164_mux_s or in_lim_ext77_pop49164_1 or in_lim_ext77_pop49164_0)
    begin
        unique case (lim_ext77_pop49164_mux_s)
            1'b0 : lim_ext77_pop49164_mux_q = in_lim_ext77_pop49164_1;
            1'b1 : lim_ext77_pop49164_mux_q = in_lim_ext77_pop49164_0;
            default : lim_ext77_pop49164_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext77_pop49164(GPOUT,30)
    assign out_lim_ext77_pop49164 = lim_ext77_pop49164_mux_q;

    // lim_ext78_pop30178_mux(MUX,25)
    assign lim_ext78_pop30178_mux_s = in_valid_in_0;
    always @(lim_ext78_pop30178_mux_s or in_lim_ext78_pop30178_1 or in_lim_ext78_pop30178_0)
    begin
        unique case (lim_ext78_pop30178_mux_s)
            1'b0 : lim_ext78_pop30178_mux_q = in_lim_ext78_pop30178_1;
            1'b1 : lim_ext78_pop30178_mux_q = in_lim_ext78_pop30178_0;
            default : lim_ext78_pop30178_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext78_pop30178(GPOUT,31)
    assign out_lim_ext78_pop30178 = lim_ext78_pop30178_mux_q;

    // notcmp27172_mux(MUX,26)
    assign notcmp27172_mux_s = in_valid_in_0;
    always @(notcmp27172_mux_s or in_notcmp27172_1 or in_notcmp27172_0)
    begin
        unique case (notcmp27172_mux_s)
            1'b0 : notcmp27172_mux_q = in_notcmp27172_1;
            1'b1 : notcmp27172_mux_q = in_notcmp27172_0;
            default : notcmp27172_mux_q = 1'b0;
        endcase
    end

    // out_notcmp27172(GPOUT,32)
    assign out_notcmp27172 = notcmp27172_mux_q;

    // reorder_limiter_enter133_mux(MUX,38)
    assign reorder_limiter_enter133_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter133_mux_s or in_reorder_limiter_enter133_1 or in_reorder_limiter_enter133_0)
    begin
        unique case (reorder_limiter_enter133_mux_s)
            1'b0 : reorder_limiter_enter133_mux_q = in_reorder_limiter_enter133_1;
            1'b1 : reorder_limiter_enter133_mux_q = in_reorder_limiter_enter133_0;
            default : reorder_limiter_enter133_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter133(GPOUT,33)
    assign out_reorder_limiter_enter133 = reorder_limiter_enter133_mux_q;

    // reorder_limiter_enter91_pop31181_mux(MUX,39)
    assign reorder_limiter_enter91_pop31181_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter91_pop31181_mux_s or in_reorder_limiter_enter91_pop31181_1 or in_reorder_limiter_enter91_pop31181_0)
    begin
        unique case (reorder_limiter_enter91_pop31181_mux_s)
            1'b0 : reorder_limiter_enter91_pop31181_mux_q = in_reorder_limiter_enter91_pop31181_1;
            1'b1 : reorder_limiter_enter91_pop31181_mux_q = in_reorder_limiter_enter91_pop31181_0;
            default : reorder_limiter_enter91_pop31181_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter91_pop31181(GPOUT,34)
    assign out_reorder_limiter_enter91_pop31181 = reorder_limiter_enter91_pop31181_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,40)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,41)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,37)
    assign out_valid_out = valid_or_q;

endmodule
