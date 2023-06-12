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

// SystemVerilog created from covariance_B5_merge
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B5_merge (
    input wire [0:0] in_exitcond10114_0,
    input wire [0:0] in_exitcond10114_1,
    input wire [31:0] in_j_039_pop21116_0,
    input wire [31:0] in_j_039_pop21116_1,
    input wire [31:0] in_lim_ext52_pop23118_0,
    input wire [31:0] in_lim_ext52_pop23118_1,
    input wire [31:0] in_lim_ext93_0,
    input wire [31:0] in_lim_ext93_1,
    input wire [0:0] in_memdep_phi1_pop1658_pop24119_0,
    input wire [0:0] in_memdep_phi1_pop1658_pop24119_1,
    input wire [0:0] in_memdep_phi1_pop1698_0,
    input wire [0:0] in_memdep_phi1_pop1698_1,
    input wire [0:0] in_memdep_phi2_pop17103_0,
    input wire [0:0] in_memdep_phi2_pop17103_1,
    input wire [0:0] in_memdep_phi2_pop1761_pop25120_0,
    input wire [0:0] in_memdep_phi2_pop1761_pop25120_1,
    input wire [0:0] in_memdep_phi4_pop18108_0,
    input wire [0:0] in_memdep_phi4_pop18108_1,
    input wire [0:0] in_memdep_phi4_pop1864_pop26121_0,
    input wire [0:0] in_memdep_phi4_pop1864_pop26121_1,
    input wire [0:0] in_memdep_phi_pop22117_0,
    input wire [0:0] in_memdep_phi_pop22117_1,
    input wire [0:0] in_notcmp43115_0,
    input wire [0:0] in_notcmp43115_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond10114,
    output wire [31:0] out_j_039_pop21116,
    output wire [31:0] out_lim_ext52_pop23118,
    output wire [31:0] out_lim_ext93,
    output wire [0:0] out_memdep_phi1_pop1658_pop24119,
    output wire [0:0] out_memdep_phi1_pop1698,
    output wire [0:0] out_memdep_phi2_pop17103,
    output wire [0:0] out_memdep_phi2_pop1761_pop25120,
    output wire [0:0] out_memdep_phi4_pop18108,
    output wire [0:0] out_memdep_phi4_pop1864_pop26121,
    output wire [0:0] out_memdep_phi_pop22117,
    output wire [0:0] out_notcmp43115,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond10114_mux_s;
    reg [0:0] exitcond10114_mux_q;
    wire [0:0] j_039_pop21116_mux_s;
    reg [31:0] j_039_pop21116_mux_q;
    wire [0:0] lim_ext52_pop23118_mux_s;
    reg [31:0] lim_ext52_pop23118_mux_q;
    wire [0:0] lim_ext93_mux_s;
    reg [31:0] lim_ext93_mux_q;
    wire [0:0] memdep_phi1_pop1658_pop24119_mux_s;
    reg [0:0] memdep_phi1_pop1658_pop24119_mux_q;
    wire [0:0] memdep_phi1_pop1698_mux_s;
    reg [0:0] memdep_phi1_pop1698_mux_q;
    wire [0:0] memdep_phi2_pop17103_mux_s;
    reg [0:0] memdep_phi2_pop17103_mux_q;
    wire [0:0] memdep_phi2_pop1761_pop25120_mux_s;
    reg [0:0] memdep_phi2_pop1761_pop25120_mux_q;
    wire [0:0] memdep_phi4_pop18108_mux_s;
    reg [0:0] memdep_phi4_pop18108_mux_q;
    wire [0:0] memdep_phi4_pop1864_pop26121_mux_s;
    reg [0:0] memdep_phi4_pop1864_pop26121_mux_q;
    wire [0:0] memdep_phi_pop22117_mux_s;
    reg [0:0] memdep_phi_pop22117_mux_q;
    wire [0:0] notcmp43115_mux_s;
    reg [0:0] notcmp43115_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond10114_mux(MUX,2)
    assign exitcond10114_mux_s = in_valid_in_0;
    always @(exitcond10114_mux_s or in_exitcond10114_1 or in_exitcond10114_0)
    begin
        unique case (exitcond10114_mux_s)
            1'b0 : exitcond10114_mux_q = in_exitcond10114_1;
            1'b1 : exitcond10114_mux_q = in_exitcond10114_0;
            default : exitcond10114_mux_q = 1'b0;
        endcase
    end

    // out_exitcond10114(GPOUT,41)
    assign out_exitcond10114 = exitcond10114_mux_q;

    // j_039_pop21116_mux(MUX,30)
    assign j_039_pop21116_mux_s = in_valid_in_0;
    always @(j_039_pop21116_mux_s or in_j_039_pop21116_1 or in_j_039_pop21116_0)
    begin
        unique case (j_039_pop21116_mux_s)
            1'b0 : j_039_pop21116_mux_q = in_j_039_pop21116_1;
            1'b1 : j_039_pop21116_mux_q = in_j_039_pop21116_0;
            default : j_039_pop21116_mux_q = 32'b0;
        endcase
    end

    // out_j_039_pop21116(GPOUT,42)
    assign out_j_039_pop21116 = j_039_pop21116_mux_q;

    // lim_ext52_pop23118_mux(MUX,31)
    assign lim_ext52_pop23118_mux_s = in_valid_in_0;
    always @(lim_ext52_pop23118_mux_s or in_lim_ext52_pop23118_1 or in_lim_ext52_pop23118_0)
    begin
        unique case (lim_ext52_pop23118_mux_s)
            1'b0 : lim_ext52_pop23118_mux_q = in_lim_ext52_pop23118_1;
            1'b1 : lim_ext52_pop23118_mux_q = in_lim_ext52_pop23118_0;
            default : lim_ext52_pop23118_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext52_pop23118(GPOUT,43)
    assign out_lim_ext52_pop23118 = lim_ext52_pop23118_mux_q;

    // lim_ext93_mux(MUX,32)
    assign lim_ext93_mux_s = in_valid_in_0;
    always @(lim_ext93_mux_s or in_lim_ext93_1 or in_lim_ext93_0)
    begin
        unique case (lim_ext93_mux_s)
            1'b0 : lim_ext93_mux_q = in_lim_ext93_1;
            1'b1 : lim_ext93_mux_q = in_lim_ext93_0;
            default : lim_ext93_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext93(GPOUT,44)
    assign out_lim_ext93 = lim_ext93_mux_q;

    // memdep_phi1_pop1658_pop24119_mux(MUX,33)
    assign memdep_phi1_pop1658_pop24119_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1658_pop24119_mux_s or in_memdep_phi1_pop1658_pop24119_1 or in_memdep_phi1_pop1658_pop24119_0)
    begin
        unique case (memdep_phi1_pop1658_pop24119_mux_s)
            1'b0 : memdep_phi1_pop1658_pop24119_mux_q = in_memdep_phi1_pop1658_pop24119_1;
            1'b1 : memdep_phi1_pop1658_pop24119_mux_q = in_memdep_phi1_pop1658_pop24119_0;
            default : memdep_phi1_pop1658_pop24119_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1658_pop24119(GPOUT,45)
    assign out_memdep_phi1_pop1658_pop24119 = memdep_phi1_pop1658_pop24119_mux_q;

    // memdep_phi1_pop1698_mux(MUX,34)
    assign memdep_phi1_pop1698_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1698_mux_s or in_memdep_phi1_pop1698_1 or in_memdep_phi1_pop1698_0)
    begin
        unique case (memdep_phi1_pop1698_mux_s)
            1'b0 : memdep_phi1_pop1698_mux_q = in_memdep_phi1_pop1698_1;
            1'b1 : memdep_phi1_pop1698_mux_q = in_memdep_phi1_pop1698_0;
            default : memdep_phi1_pop1698_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1698(GPOUT,46)
    assign out_memdep_phi1_pop1698 = memdep_phi1_pop1698_mux_q;

    // memdep_phi2_pop17103_mux(MUX,35)
    assign memdep_phi2_pop17103_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop17103_mux_s or in_memdep_phi2_pop17103_1 or in_memdep_phi2_pop17103_0)
    begin
        unique case (memdep_phi2_pop17103_mux_s)
            1'b0 : memdep_phi2_pop17103_mux_q = in_memdep_phi2_pop17103_1;
            1'b1 : memdep_phi2_pop17103_mux_q = in_memdep_phi2_pop17103_0;
            default : memdep_phi2_pop17103_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop17103(GPOUT,47)
    assign out_memdep_phi2_pop17103 = memdep_phi2_pop17103_mux_q;

    // memdep_phi2_pop1761_pop25120_mux(MUX,36)
    assign memdep_phi2_pop1761_pop25120_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1761_pop25120_mux_s or in_memdep_phi2_pop1761_pop25120_1 or in_memdep_phi2_pop1761_pop25120_0)
    begin
        unique case (memdep_phi2_pop1761_pop25120_mux_s)
            1'b0 : memdep_phi2_pop1761_pop25120_mux_q = in_memdep_phi2_pop1761_pop25120_1;
            1'b1 : memdep_phi2_pop1761_pop25120_mux_q = in_memdep_phi2_pop1761_pop25120_0;
            default : memdep_phi2_pop1761_pop25120_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1761_pop25120(GPOUT,48)
    assign out_memdep_phi2_pop1761_pop25120 = memdep_phi2_pop1761_pop25120_mux_q;

    // memdep_phi4_pop18108_mux(MUX,37)
    assign memdep_phi4_pop18108_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18108_mux_s or in_memdep_phi4_pop18108_1 or in_memdep_phi4_pop18108_0)
    begin
        unique case (memdep_phi4_pop18108_mux_s)
            1'b0 : memdep_phi4_pop18108_mux_q = in_memdep_phi4_pop18108_1;
            1'b1 : memdep_phi4_pop18108_mux_q = in_memdep_phi4_pop18108_0;
            default : memdep_phi4_pop18108_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18108(GPOUT,49)
    assign out_memdep_phi4_pop18108 = memdep_phi4_pop18108_mux_q;

    // memdep_phi4_pop1864_pop26121_mux(MUX,38)
    assign memdep_phi4_pop1864_pop26121_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1864_pop26121_mux_s or in_memdep_phi4_pop1864_pop26121_1 or in_memdep_phi4_pop1864_pop26121_0)
    begin
        unique case (memdep_phi4_pop1864_pop26121_mux_s)
            1'b0 : memdep_phi4_pop1864_pop26121_mux_q = in_memdep_phi4_pop1864_pop26121_1;
            1'b1 : memdep_phi4_pop1864_pop26121_mux_q = in_memdep_phi4_pop1864_pop26121_0;
            default : memdep_phi4_pop1864_pop26121_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1864_pop26121(GPOUT,50)
    assign out_memdep_phi4_pop1864_pop26121 = memdep_phi4_pop1864_pop26121_mux_q;

    // memdep_phi_pop22117_mux(MUX,39)
    assign memdep_phi_pop22117_mux_s = in_valid_in_0;
    always @(memdep_phi_pop22117_mux_s or in_memdep_phi_pop22117_1 or in_memdep_phi_pop22117_0)
    begin
        unique case (memdep_phi_pop22117_mux_s)
            1'b0 : memdep_phi_pop22117_mux_q = in_memdep_phi_pop22117_1;
            1'b1 : memdep_phi_pop22117_mux_q = in_memdep_phi_pop22117_0;
            default : memdep_phi_pop22117_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop22117(GPOUT,51)
    assign out_memdep_phi_pop22117 = memdep_phi_pop22117_mux_q;

    // notcmp43115_mux(MUX,40)
    assign notcmp43115_mux_s = in_valid_in_0;
    always @(notcmp43115_mux_s or in_notcmp43115_1 or in_notcmp43115_0)
    begin
        unique case (notcmp43115_mux_s)
            1'b0 : notcmp43115_mux_q = in_notcmp43115_1;
            1'b1 : notcmp43115_mux_q = in_notcmp43115_0;
            default : notcmp43115_mux_q = 1'b0;
        endcase
    end

    // out_notcmp43115(GPOUT,52)
    assign out_notcmp43115 = notcmp43115_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,56)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,53)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,57)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,54)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,55)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,59)
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
