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

// SystemVerilog created from covariance_B3_merge
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B3_merge (
    input wire [31:0] in_lim_ext89_0,
    input wire [31:0] in_lim_ext89_1,
    input wire [0:0] in_memdep_phi1_pop1694_0,
    input wire [0:0] in_memdep_phi1_pop1694_1,
    input wire [0:0] in_memdep_phi2_pop1799_0,
    input wire [0:0] in_memdep_phi2_pop1799_1,
    input wire [0:0] in_memdep_phi4_pop18104_0,
    input wire [0:0] in_memdep_phi4_pop18104_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_lim_ext89,
    output wire [0:0] out_memdep_phi1_pop1694,
    output wire [0:0] out_memdep_phi2_pop1799,
    output wire [0:0] out_memdep_phi4_pop18104,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] lim_ext89_mux_s;
    reg [31:0] lim_ext89_mux_q;
    wire [0:0] memdep_phi1_pop1694_mux_s;
    reg [0:0] memdep_phi1_pop1694_mux_q;
    wire [0:0] memdep_phi2_pop1799_mux_s;
    reg [0:0] memdep_phi2_pop1799_mux_q;
    wire [0:0] memdep_phi4_pop18104_mux_s;
    reg [0:0] memdep_phi4_pop18104_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // lim_ext89_mux(MUX,13)
    assign lim_ext89_mux_s = in_valid_in_0;
    always @(lim_ext89_mux_s or in_lim_ext89_1 or in_lim_ext89_0)
    begin
        unique case (lim_ext89_mux_s)
            1'b0 : lim_ext89_mux_q = in_lim_ext89_1;
            1'b1 : lim_ext89_mux_q = in_lim_ext89_0;
            default : lim_ext89_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext89(GPOUT,17)
    assign out_lim_ext89 = lim_ext89_mux_q;

    // memdep_phi1_pop1694_mux(MUX,14)
    assign memdep_phi1_pop1694_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1694_mux_s or in_memdep_phi1_pop1694_1 or in_memdep_phi1_pop1694_0)
    begin
        unique case (memdep_phi1_pop1694_mux_s)
            1'b0 : memdep_phi1_pop1694_mux_q = in_memdep_phi1_pop1694_1;
            1'b1 : memdep_phi1_pop1694_mux_q = in_memdep_phi1_pop1694_0;
            default : memdep_phi1_pop1694_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1694(GPOUT,18)
    assign out_memdep_phi1_pop1694 = memdep_phi1_pop1694_mux_q;

    // memdep_phi2_pop1799_mux(MUX,15)
    assign memdep_phi2_pop1799_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1799_mux_s or in_memdep_phi2_pop1799_1 or in_memdep_phi2_pop1799_0)
    begin
        unique case (memdep_phi2_pop1799_mux_s)
            1'b0 : memdep_phi2_pop1799_mux_q = in_memdep_phi2_pop1799_1;
            1'b1 : memdep_phi2_pop1799_mux_q = in_memdep_phi2_pop1799_0;
            default : memdep_phi2_pop1799_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1799(GPOUT,19)
    assign out_memdep_phi2_pop1799 = memdep_phi2_pop1799_mux_q;

    // memdep_phi4_pop18104_mux(MUX,16)
    assign memdep_phi4_pop18104_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18104_mux_s or in_memdep_phi4_pop18104_1 or in_memdep_phi4_pop18104_0)
    begin
        unique case (memdep_phi4_pop18104_mux_s)
            1'b0 : memdep_phi4_pop18104_mux_q = in_memdep_phi4_pop18104_1;
            1'b1 : memdep_phi4_pop18104_mux_q = in_memdep_phi4_pop18104_0;
            default : memdep_phi4_pop18104_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18104(GPOUT,20)
    assign out_memdep_phi4_pop18104 = memdep_phi4_pop18104_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,27)
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
