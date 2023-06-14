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

// SystemVerilog created from matvec_B3_merge
// Created for function/kernel matvec
// SystemVerilog created on Tue Jun 13 02:57:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_B3_merge (
    input wire [0:0] in_exitcond321_0,
    input wire [0:0] in_exitcond321_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_032_pop923_0,
    input wire [31:0] in_i_032_pop923_1,
    input wire [0:0] in_memdep_phi_pop1024_0,
    input wire [0:0] in_memdep_phi_pop1024_1,
    input wire [0:0] in_notcmp722_0,
    input wire [0:0] in_notcmp722_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond321,
    output wire [0:0] out_forked,
    output wire [31:0] out_i_032_pop923,
    output wire [0:0] out_memdep_phi_pop1024,
    output wire [0:0] out_notcmp722,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond321_mux_s;
    reg [0:0] exitcond321_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i_032_pop923_mux_s;
    reg [31:0] i_032_pop923_mux_q;
    wire [0:0] memdep_phi_pop1024_mux_s;
    reg [0:0] memdep_phi_pop1024_mux_q;
    wire [0:0] notcmp722_mux_s;
    reg [0:0] notcmp722_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond321_mux(MUX,2)
    assign exitcond321_mux_s = in_valid_in_0;
    always @(exitcond321_mux_s or in_exitcond321_1 or in_exitcond321_0)
    begin
        unique case (exitcond321_mux_s)
            1'b0 : exitcond321_mux_q = in_exitcond321_1;
            1'b1 : exitcond321_mux_q = in_exitcond321_0;
            default : exitcond321_mux_q = 1'b0;
        endcase
    end

    // out_exitcond321(GPOUT,20)
    assign out_exitcond321 = exitcond321_mux_q;

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,21)
    assign out_forked = forked_mux_q;

    // i_032_pop923_mux(MUX,4)
    assign i_032_pop923_mux_s = in_valid_in_0;
    always @(i_032_pop923_mux_s or in_i_032_pop923_1 or in_i_032_pop923_0)
    begin
        unique case (i_032_pop923_mux_s)
            1'b0 : i_032_pop923_mux_q = in_i_032_pop923_1;
            1'b1 : i_032_pop923_mux_q = in_i_032_pop923_0;
            default : i_032_pop923_mux_q = 32'b0;
        endcase
    end

    // out_i_032_pop923(GPOUT,22)
    assign out_i_032_pop923 = i_032_pop923_mux_q;

    // memdep_phi_pop1024_mux(MUX,18)
    assign memdep_phi_pop1024_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1024_mux_s or in_memdep_phi_pop1024_1 or in_memdep_phi_pop1024_0)
    begin
        unique case (memdep_phi_pop1024_mux_s)
            1'b0 : memdep_phi_pop1024_mux_q = in_memdep_phi_pop1024_1;
            1'b1 : memdep_phi_pop1024_mux_q = in_memdep_phi_pop1024_0;
            default : memdep_phi_pop1024_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1024(GPOUT,23)
    assign out_memdep_phi_pop1024 = memdep_phi_pop1024_mux_q;

    // notcmp722_mux(MUX,19)
    assign notcmp722_mux_s = in_valid_in_0;
    always @(notcmp722_mux_s or in_notcmp722_1 or in_notcmp722_0)
    begin
        unique case (notcmp722_mux_s)
            1'b0 : notcmp722_mux_q = in_notcmp722_1;
            1'b1 : notcmp722_mux_q = in_notcmp722_0;
            default : notcmp722_mux_q = 1'b0;
        endcase
    end

    // out_notcmp722(GPOUT,24)
    assign out_notcmp722 = notcmp722_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
