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
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B9_merge (
    input wire [32:0] in_fpga_indvars_iv14_pop28149_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28149_1,
    input wire [31:0] in_i24_034_pop29155_0,
    input wire [31:0] in_i24_034_pop29155_1,
    input wire [31:0] in_lim_ext54_pop45144_0,
    input wire [31:0] in_lim_ext54_pop45144_1,
    input wire [31:0] in_lim_ext55_pop30158_0,
    input wire [31:0] in_lim_ext55_pop30158_1,
    input wire [0:0] in_notcmp27152_0,
    input wire [0:0] in_notcmp27152_1,
    input wire [31:0] in_reorder_limiter_enter113_0,
    input wire [31:0] in_reorder_limiter_enter113_1,
    input wire [31:0] in_reorder_limiter_enter68_pop31161_0,
    input wire [31:0] in_reorder_limiter_enter68_pop31161_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_fpga_indvars_iv14_pop28149,
    output wire [31:0] out_i24_034_pop29155,
    output wire [31:0] out_lim_ext54_pop45144,
    output wire [31:0] out_lim_ext55_pop30158,
    output wire [0:0] out_notcmp27152,
    output wire [31:0] out_reorder_limiter_enter113,
    output wire [31:0] out_reorder_limiter_enter68_pop31161,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] fpga_indvars_iv14_pop28149_mux_s;
    reg [32:0] fpga_indvars_iv14_pop28149_mux_q;
    wire [0:0] i24_034_pop29155_mux_s;
    reg [31:0] i24_034_pop29155_mux_q;
    wire [0:0] lim_ext54_pop45144_mux_s;
    reg [31:0] lim_ext54_pop45144_mux_q;
    wire [0:0] lim_ext55_pop30158_mux_s;
    reg [31:0] lim_ext55_pop30158_mux_q;
    wire [0:0] notcmp27152_mux_s;
    reg [0:0] notcmp27152_mux_q;
    wire [0:0] reorder_limiter_enter113_mux_s;
    reg [31:0] reorder_limiter_enter113_mux_q;
    wire [0:0] reorder_limiter_enter68_pop31161_mux_s;
    reg [31:0] reorder_limiter_enter68_pop31161_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // fpga_indvars_iv14_pop28149_mux(MUX,2)
    assign fpga_indvars_iv14_pop28149_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop28149_mux_s or in_fpga_indvars_iv14_pop28149_1 or in_fpga_indvars_iv14_pop28149_0)
    begin
        unique case (fpga_indvars_iv14_pop28149_mux_s)
            1'b0 : fpga_indvars_iv14_pop28149_mux_q = in_fpga_indvars_iv14_pop28149_1;
            1'b1 : fpga_indvars_iv14_pop28149_mux_q = in_fpga_indvars_iv14_pop28149_0;
            default : fpga_indvars_iv14_pop28149_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop28149(GPOUT,24)
    assign out_fpga_indvars_iv14_pop28149 = fpga_indvars_iv14_pop28149_mux_q;

    // i24_034_pop29155_mux(MUX,3)
    assign i24_034_pop29155_mux_s = in_valid_in_0;
    always @(i24_034_pop29155_mux_s or in_i24_034_pop29155_1 or in_i24_034_pop29155_0)
    begin
        unique case (i24_034_pop29155_mux_s)
            1'b0 : i24_034_pop29155_mux_q = in_i24_034_pop29155_1;
            1'b1 : i24_034_pop29155_mux_q = in_i24_034_pop29155_0;
            default : i24_034_pop29155_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop29155(GPOUT,25)
    assign out_i24_034_pop29155 = i24_034_pop29155_mux_q;

    // lim_ext54_pop45144_mux(MUX,21)
    assign lim_ext54_pop45144_mux_s = in_valid_in_0;
    always @(lim_ext54_pop45144_mux_s or in_lim_ext54_pop45144_1 or in_lim_ext54_pop45144_0)
    begin
        unique case (lim_ext54_pop45144_mux_s)
            1'b0 : lim_ext54_pop45144_mux_q = in_lim_ext54_pop45144_1;
            1'b1 : lim_ext54_pop45144_mux_q = in_lim_ext54_pop45144_0;
            default : lim_ext54_pop45144_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext54_pop45144(GPOUT,26)
    assign out_lim_ext54_pop45144 = lim_ext54_pop45144_mux_q;

    // lim_ext55_pop30158_mux(MUX,22)
    assign lim_ext55_pop30158_mux_s = in_valid_in_0;
    always @(lim_ext55_pop30158_mux_s or in_lim_ext55_pop30158_1 or in_lim_ext55_pop30158_0)
    begin
        unique case (lim_ext55_pop30158_mux_s)
            1'b0 : lim_ext55_pop30158_mux_q = in_lim_ext55_pop30158_1;
            1'b1 : lim_ext55_pop30158_mux_q = in_lim_ext55_pop30158_0;
            default : lim_ext55_pop30158_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext55_pop30158(GPOUT,27)
    assign out_lim_ext55_pop30158 = lim_ext55_pop30158_mux_q;

    // notcmp27152_mux(MUX,23)
    assign notcmp27152_mux_s = in_valid_in_0;
    always @(notcmp27152_mux_s or in_notcmp27152_1 or in_notcmp27152_0)
    begin
        unique case (notcmp27152_mux_s)
            1'b0 : notcmp27152_mux_q = in_notcmp27152_1;
            1'b1 : notcmp27152_mux_q = in_notcmp27152_0;
            default : notcmp27152_mux_q = 1'b0;
        endcase
    end

    // out_notcmp27152(GPOUT,28)
    assign out_notcmp27152 = notcmp27152_mux_q;

    // reorder_limiter_enter113_mux(MUX,34)
    assign reorder_limiter_enter113_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter113_mux_s or in_reorder_limiter_enter113_1 or in_reorder_limiter_enter113_0)
    begin
        unique case (reorder_limiter_enter113_mux_s)
            1'b0 : reorder_limiter_enter113_mux_q = in_reorder_limiter_enter113_1;
            1'b1 : reorder_limiter_enter113_mux_q = in_reorder_limiter_enter113_0;
            default : reorder_limiter_enter113_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter113(GPOUT,29)
    assign out_reorder_limiter_enter113 = reorder_limiter_enter113_mux_q;

    // reorder_limiter_enter68_pop31161_mux(MUX,35)
    assign reorder_limiter_enter68_pop31161_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter68_pop31161_mux_s or in_reorder_limiter_enter68_pop31161_1 or in_reorder_limiter_enter68_pop31161_0)
    begin
        unique case (reorder_limiter_enter68_pop31161_mux_s)
            1'b0 : reorder_limiter_enter68_pop31161_mux_q = in_reorder_limiter_enter68_pop31161_1;
            1'b1 : reorder_limiter_enter68_pop31161_mux_q = in_reorder_limiter_enter68_pop31161_0;
            default : reorder_limiter_enter68_pop31161_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter68_pop31161(GPOUT,30)
    assign out_reorder_limiter_enter68_pop31161 = reorder_limiter_enter68_pop31161_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,33)
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
