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

// SystemVerilog created from jacobi_1d_B4_merge
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_B4_merge (
    input wire [0:0] in_exitcond1758_0,
    input wire [0:0] in_exitcond1758_1,
    input wire [0:0] in_forked24_0,
    input wire [0:0] in_forked24_1,
    input wire [0:0] in_memdep_phi1_pop1160_0,
    input wire [0:0] in_memdep_phi1_pop1160_1,
    input wire [0:0] in_memdep_phi4_pop1261_0,
    input wire [0:0] in_memdep_phi4_pop1261_1,
    input wire [0:0] in_memdep_phi6_pop1362_0,
    input wire [0:0] in_memdep_phi6_pop1362_1,
    input wire [0:0] in_notcmp3959_0,
    input wire [0:0] in_notcmp3959_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1758,
    output wire [0:0] out_forked24,
    output wire [0:0] out_memdep_phi1_pop1160,
    output wire [0:0] out_memdep_phi4_pop1261,
    output wire [0:0] out_memdep_phi6_pop1362,
    output wire [0:0] out_notcmp3959,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1758_mux_s;
    reg [0:0] exitcond1758_mux_q;
    wire [0:0] forked24_mux_s;
    reg [0:0] forked24_mux_q;
    wire [0:0] memdep_phi1_pop1160_mux_s;
    reg [0:0] memdep_phi1_pop1160_mux_q;
    wire [0:0] memdep_phi4_pop1261_mux_s;
    reg [0:0] memdep_phi4_pop1261_mux_q;
    wire [0:0] memdep_phi6_pop1362_mux_s;
    reg [0:0] memdep_phi6_pop1362_mux_q;
    wire [0:0] notcmp3959_mux_s;
    reg [0:0] notcmp3959_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1758_mux(MUX,2)
    assign exitcond1758_mux_s = in_valid_in_0;
    always @(exitcond1758_mux_s or in_exitcond1758_1 or in_exitcond1758_0)
    begin
        unique case (exitcond1758_mux_s)
            1'b0 : exitcond1758_mux_q = in_exitcond1758_1;
            1'b1 : exitcond1758_mux_q = in_exitcond1758_0;
            default : exitcond1758_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1758(GPOUT,23)
    assign out_exitcond1758 = exitcond1758_mux_q;

    // forked24_mux(MUX,3)
    assign forked24_mux_s = in_valid_in_0;
    always @(forked24_mux_s or in_forked24_1 or in_forked24_0)
    begin
        unique case (forked24_mux_s)
            1'b0 : forked24_mux_q = in_forked24_1;
            1'b1 : forked24_mux_q = in_forked24_0;
            default : forked24_mux_q = 1'b0;
        endcase
    end

    // out_forked24(GPOUT,24)
    assign out_forked24 = forked24_mux_q;

    // memdep_phi1_pop1160_mux(MUX,19)
    assign memdep_phi1_pop1160_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1160_mux_s or in_memdep_phi1_pop1160_1 or in_memdep_phi1_pop1160_0)
    begin
        unique case (memdep_phi1_pop1160_mux_s)
            1'b0 : memdep_phi1_pop1160_mux_q = in_memdep_phi1_pop1160_1;
            1'b1 : memdep_phi1_pop1160_mux_q = in_memdep_phi1_pop1160_0;
            default : memdep_phi1_pop1160_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1160(GPOUT,25)
    assign out_memdep_phi1_pop1160 = memdep_phi1_pop1160_mux_q;

    // memdep_phi4_pop1261_mux(MUX,20)
    assign memdep_phi4_pop1261_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1261_mux_s or in_memdep_phi4_pop1261_1 or in_memdep_phi4_pop1261_0)
    begin
        unique case (memdep_phi4_pop1261_mux_s)
            1'b0 : memdep_phi4_pop1261_mux_q = in_memdep_phi4_pop1261_1;
            1'b1 : memdep_phi4_pop1261_mux_q = in_memdep_phi4_pop1261_0;
            default : memdep_phi4_pop1261_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1261(GPOUT,26)
    assign out_memdep_phi4_pop1261 = memdep_phi4_pop1261_mux_q;

    // memdep_phi6_pop1362_mux(MUX,21)
    assign memdep_phi6_pop1362_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1362_mux_s or in_memdep_phi6_pop1362_1 or in_memdep_phi6_pop1362_0)
    begin
        unique case (memdep_phi6_pop1362_mux_s)
            1'b0 : memdep_phi6_pop1362_mux_q = in_memdep_phi6_pop1362_1;
            1'b1 : memdep_phi6_pop1362_mux_q = in_memdep_phi6_pop1362_0;
            default : memdep_phi6_pop1362_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1362(GPOUT,27)
    assign out_memdep_phi6_pop1362 = memdep_phi6_pop1362_mux_q;

    // notcmp3959_mux(MUX,22)
    assign notcmp3959_mux_s = in_valid_in_0;
    always @(notcmp3959_mux_s or in_notcmp3959_1 or in_notcmp3959_0)
    begin
        unique case (notcmp3959_mux_s)
            1'b0 : notcmp3959_mux_q = in_notcmp3959_1;
            1'b1 : notcmp3959_mux_q = in_notcmp3959_0;
            default : notcmp3959_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3959(GPOUT,28)
    assign out_notcmp3959 = notcmp3959_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,32)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,33)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = valid_or_q;

endmodule
