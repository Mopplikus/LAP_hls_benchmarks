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

// SystemVerilog created from covariance_B12_merge
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_merge (
    input wire [0:0] in_forked23164_0,
    input wire [0:0] in_forked23164_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28151_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28151_1,
    input wire [31:0] in_i24_034_pop29157_0,
    input wire [31:0] in_i24_034_pop29157_1,
    input wire [31:0] in_i24_034_pop2983_pop58170_0,
    input wire [31:0] in_i24_034_pop2983_pop58170_1,
    input wire [31:0] in_j28_033_pop54166_0,
    input wire [31:0] in_j28_033_pop54166_1,
    input wire [31:0] in_lim_ext54_pop45143_0,
    input wire [31:0] in_lim_ext54_pop45143_1,
    input wire [31:0] in_lim_ext55_pop30160_0,
    input wire [31:0] in_lim_ext55_pop30160_1,
    input wire [31:0] in_lim_ext56_pop55167_0,
    input wire [31:0] in_lim_ext56_pop55167_1,
    input wire [0:0] in_notcmp22165_0,
    input wire [0:0] in_notcmp22165_1,
    input wire [0:0] in_notcmp27154_0,
    input wire [0:0] in_notcmp27154_1,
    input wire [0:0] in_notcmp2781_pop57169_0,
    input wire [0:0] in_notcmp2781_pop57169_1,
    input wire [31:0] in_reorder_limiter_enter112_0,
    input wire [31:0] in_reorder_limiter_enter112_1,
    input wire [31:0] in_reorder_limiter_enter68_pop31163_0,
    input wire [31:0] in_reorder_limiter_enter68_pop31163_1,
    input wire [31:0] in_reorder_limiter_enter69_pop56168_0,
    input wire [31:0] in_reorder_limiter_enter69_pop56168_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked23164,
    output wire [32:0] out_fpga_indvars_iv14_pop28151,
    output wire [31:0] out_i24_034_pop29157,
    output wire [31:0] out_i24_034_pop2983_pop58170,
    output wire [31:0] out_j28_033_pop54166,
    output wire [31:0] out_lim_ext54_pop45143,
    output wire [31:0] out_lim_ext55_pop30160,
    output wire [31:0] out_lim_ext56_pop55167,
    output wire [0:0] out_notcmp22165,
    output wire [0:0] out_notcmp27154,
    output wire [0:0] out_notcmp2781_pop57169,
    output wire [31:0] out_reorder_limiter_enter112,
    output wire [31:0] out_reorder_limiter_enter68_pop31163,
    output wire [31:0] out_reorder_limiter_enter69_pop56168,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked23164_mux_s;
    reg [0:0] forked23164_mux_q;
    wire [0:0] fpga_indvars_iv14_pop28151_mux_s;
    reg [32:0] fpga_indvars_iv14_pop28151_mux_q;
    wire [0:0] i24_034_pop29157_mux_s;
    reg [31:0] i24_034_pop29157_mux_q;
    wire [0:0] i24_034_pop2983_pop58170_mux_s;
    reg [31:0] i24_034_pop2983_pop58170_mux_q;
    wire [0:0] j28_033_pop54166_mux_s;
    reg [31:0] j28_033_pop54166_mux_q;
    wire [0:0] lim_ext54_pop45143_mux_s;
    reg [31:0] lim_ext54_pop45143_mux_q;
    wire [0:0] lim_ext55_pop30160_mux_s;
    reg [31:0] lim_ext55_pop30160_mux_q;
    wire [0:0] lim_ext56_pop55167_mux_s;
    reg [31:0] lim_ext56_pop55167_mux_q;
    wire [0:0] notcmp22165_mux_s;
    reg [0:0] notcmp22165_mux_q;
    wire [0:0] notcmp27154_mux_s;
    reg [0:0] notcmp27154_mux_q;
    wire [0:0] notcmp2781_pop57169_mux_s;
    reg [0:0] notcmp2781_pop57169_mux_q;
    wire [0:0] reorder_limiter_enter112_mux_s;
    reg [31:0] reorder_limiter_enter112_mux_q;
    wire [0:0] reorder_limiter_enter68_pop31163_mux_s;
    reg [31:0] reorder_limiter_enter68_pop31163_mux_q;
    wire [0:0] reorder_limiter_enter69_pop56168_mux_s;
    reg [31:0] reorder_limiter_enter69_pop56168_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked23164_mux(MUX,2)
    assign forked23164_mux_s = in_valid_in_0;
    always @(forked23164_mux_s or in_forked23164_1 or in_forked23164_0)
    begin
        unique case (forked23164_mux_s)
            1'b0 : forked23164_mux_q = in_forked23164_1;
            1'b1 : forked23164_mux_q = in_forked23164_0;
            default : forked23164_mux_q = 1'b0;
        endcase
    end

    // out_forked23164(GPOUT,44)
    assign out_forked23164 = forked23164_mux_q;

    // fpga_indvars_iv14_pop28151_mux(MUX,3)
    assign fpga_indvars_iv14_pop28151_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop28151_mux_s or in_fpga_indvars_iv14_pop28151_1 or in_fpga_indvars_iv14_pop28151_0)
    begin
        unique case (fpga_indvars_iv14_pop28151_mux_s)
            1'b0 : fpga_indvars_iv14_pop28151_mux_q = in_fpga_indvars_iv14_pop28151_1;
            1'b1 : fpga_indvars_iv14_pop28151_mux_q = in_fpga_indvars_iv14_pop28151_0;
            default : fpga_indvars_iv14_pop28151_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop28151(GPOUT,45)
    assign out_fpga_indvars_iv14_pop28151 = fpga_indvars_iv14_pop28151_mux_q;

    // i24_034_pop29157_mux(MUX,4)
    assign i24_034_pop29157_mux_s = in_valid_in_0;
    always @(i24_034_pop29157_mux_s or in_i24_034_pop29157_1 or in_i24_034_pop29157_0)
    begin
        unique case (i24_034_pop29157_mux_s)
            1'b0 : i24_034_pop29157_mux_q = in_i24_034_pop29157_1;
            1'b1 : i24_034_pop29157_mux_q = in_i24_034_pop29157_0;
            default : i24_034_pop29157_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop29157(GPOUT,46)
    assign out_i24_034_pop29157 = i24_034_pop29157_mux_q;

    // i24_034_pop2983_pop58170_mux(MUX,5)
    assign i24_034_pop2983_pop58170_mux_s = in_valid_in_0;
    always @(i24_034_pop2983_pop58170_mux_s or in_i24_034_pop2983_pop58170_1 or in_i24_034_pop2983_pop58170_0)
    begin
        unique case (i24_034_pop2983_pop58170_mux_s)
            1'b0 : i24_034_pop2983_pop58170_mux_q = in_i24_034_pop2983_pop58170_1;
            1'b1 : i24_034_pop2983_pop58170_mux_q = in_i24_034_pop2983_pop58170_0;
            default : i24_034_pop2983_pop58170_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop2983_pop58170(GPOUT,47)
    assign out_i24_034_pop2983_pop58170 = i24_034_pop2983_pop58170_mux_q;

    // j28_033_pop54166_mux(MUX,37)
    assign j28_033_pop54166_mux_s = in_valid_in_0;
    always @(j28_033_pop54166_mux_s or in_j28_033_pop54166_1 or in_j28_033_pop54166_0)
    begin
        unique case (j28_033_pop54166_mux_s)
            1'b0 : j28_033_pop54166_mux_q = in_j28_033_pop54166_1;
            1'b1 : j28_033_pop54166_mux_q = in_j28_033_pop54166_0;
            default : j28_033_pop54166_mux_q = 32'b0;
        endcase
    end

    // out_j28_033_pop54166(GPOUT,48)
    assign out_j28_033_pop54166 = j28_033_pop54166_mux_q;

    // lim_ext54_pop45143_mux(MUX,38)
    assign lim_ext54_pop45143_mux_s = in_valid_in_0;
    always @(lim_ext54_pop45143_mux_s or in_lim_ext54_pop45143_1 or in_lim_ext54_pop45143_0)
    begin
        unique case (lim_ext54_pop45143_mux_s)
            1'b0 : lim_ext54_pop45143_mux_q = in_lim_ext54_pop45143_1;
            1'b1 : lim_ext54_pop45143_mux_q = in_lim_ext54_pop45143_0;
            default : lim_ext54_pop45143_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext54_pop45143(GPOUT,49)
    assign out_lim_ext54_pop45143 = lim_ext54_pop45143_mux_q;

    // lim_ext55_pop30160_mux(MUX,39)
    assign lim_ext55_pop30160_mux_s = in_valid_in_0;
    always @(lim_ext55_pop30160_mux_s or in_lim_ext55_pop30160_1 or in_lim_ext55_pop30160_0)
    begin
        unique case (lim_ext55_pop30160_mux_s)
            1'b0 : lim_ext55_pop30160_mux_q = in_lim_ext55_pop30160_1;
            1'b1 : lim_ext55_pop30160_mux_q = in_lim_ext55_pop30160_0;
            default : lim_ext55_pop30160_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext55_pop30160(GPOUT,50)
    assign out_lim_ext55_pop30160 = lim_ext55_pop30160_mux_q;

    // lim_ext56_pop55167_mux(MUX,40)
    assign lim_ext56_pop55167_mux_s = in_valid_in_0;
    always @(lim_ext56_pop55167_mux_s or in_lim_ext56_pop55167_1 or in_lim_ext56_pop55167_0)
    begin
        unique case (lim_ext56_pop55167_mux_s)
            1'b0 : lim_ext56_pop55167_mux_q = in_lim_ext56_pop55167_1;
            1'b1 : lim_ext56_pop55167_mux_q = in_lim_ext56_pop55167_0;
            default : lim_ext56_pop55167_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext56_pop55167(GPOUT,51)
    assign out_lim_ext56_pop55167 = lim_ext56_pop55167_mux_q;

    // notcmp22165_mux(MUX,41)
    assign notcmp22165_mux_s = in_valid_in_0;
    always @(notcmp22165_mux_s or in_notcmp22165_1 or in_notcmp22165_0)
    begin
        unique case (notcmp22165_mux_s)
            1'b0 : notcmp22165_mux_q = in_notcmp22165_1;
            1'b1 : notcmp22165_mux_q = in_notcmp22165_0;
            default : notcmp22165_mux_q = 1'b0;
        endcase
    end

    // out_notcmp22165(GPOUT,52)
    assign out_notcmp22165 = notcmp22165_mux_q;

    // notcmp27154_mux(MUX,42)
    assign notcmp27154_mux_s = in_valid_in_0;
    always @(notcmp27154_mux_s or in_notcmp27154_1 or in_notcmp27154_0)
    begin
        unique case (notcmp27154_mux_s)
            1'b0 : notcmp27154_mux_q = in_notcmp27154_1;
            1'b1 : notcmp27154_mux_q = in_notcmp27154_0;
            default : notcmp27154_mux_q = 1'b0;
        endcase
    end

    // out_notcmp27154(GPOUT,53)
    assign out_notcmp27154 = notcmp27154_mux_q;

    // notcmp2781_pop57169_mux(MUX,43)
    assign notcmp2781_pop57169_mux_s = in_valid_in_0;
    always @(notcmp2781_pop57169_mux_s or in_notcmp2781_pop57169_1 or in_notcmp2781_pop57169_0)
    begin
        unique case (notcmp2781_pop57169_mux_s)
            1'b0 : notcmp2781_pop57169_mux_q = in_notcmp2781_pop57169_1;
            1'b1 : notcmp2781_pop57169_mux_q = in_notcmp2781_pop57169_0;
            default : notcmp2781_pop57169_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2781_pop57169(GPOUT,54)
    assign out_notcmp2781_pop57169 = notcmp2781_pop57169_mux_q;

    // reorder_limiter_enter112_mux(MUX,61)
    assign reorder_limiter_enter112_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter112_mux_s or in_reorder_limiter_enter112_1 or in_reorder_limiter_enter112_0)
    begin
        unique case (reorder_limiter_enter112_mux_s)
            1'b0 : reorder_limiter_enter112_mux_q = in_reorder_limiter_enter112_1;
            1'b1 : reorder_limiter_enter112_mux_q = in_reorder_limiter_enter112_0;
            default : reorder_limiter_enter112_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter112(GPOUT,55)
    assign out_reorder_limiter_enter112 = reorder_limiter_enter112_mux_q;

    // reorder_limiter_enter68_pop31163_mux(MUX,62)
    assign reorder_limiter_enter68_pop31163_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter68_pop31163_mux_s or in_reorder_limiter_enter68_pop31163_1 or in_reorder_limiter_enter68_pop31163_0)
    begin
        unique case (reorder_limiter_enter68_pop31163_mux_s)
            1'b0 : reorder_limiter_enter68_pop31163_mux_q = in_reorder_limiter_enter68_pop31163_1;
            1'b1 : reorder_limiter_enter68_pop31163_mux_q = in_reorder_limiter_enter68_pop31163_0;
            default : reorder_limiter_enter68_pop31163_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter68_pop31163(GPOUT,56)
    assign out_reorder_limiter_enter68_pop31163 = reorder_limiter_enter68_pop31163_mux_q;

    // reorder_limiter_enter69_pop56168_mux(MUX,63)
    assign reorder_limiter_enter69_pop56168_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter69_pop56168_mux_s or in_reorder_limiter_enter69_pop56168_1 or in_reorder_limiter_enter69_pop56168_0)
    begin
        unique case (reorder_limiter_enter69_pop56168_mux_s)
            1'b0 : reorder_limiter_enter69_pop56168_mux_q = in_reorder_limiter_enter69_pop56168_1;
            1'b1 : reorder_limiter_enter69_pop56168_mux_q = in_reorder_limiter_enter69_pop56168_0;
            default : reorder_limiter_enter69_pop56168_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter69_pop56168(GPOUT,57)
    assign out_reorder_limiter_enter69_pop56168 = reorder_limiter_enter69_pop56168_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,64)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,58)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,65)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,59)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,60)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,67)
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
