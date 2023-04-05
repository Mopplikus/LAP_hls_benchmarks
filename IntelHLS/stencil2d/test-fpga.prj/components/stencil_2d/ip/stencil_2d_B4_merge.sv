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

// SystemVerilog created from stencil_2d_B4_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B4_merge (
    input wire [0:0] in_exitcond1181_0,
    input wire [0:0] in_exitcond1181_1,
    input wire [0:0] in_forked40_0,
    input wire [0:0] in_forked40_1,
    input wire [0:0] in_memdep_phi1_pop1491_0,
    input wire [0:0] in_memdep_phi1_pop1491_1,
    input wire [31:0] in_mul2576_0,
    input wire [31:0] in_mul2576_1,
    input wire [0:0] in_notcmp2986_0,
    input wire [0:0] in_notcmp2986_1,
    input wire [31:0] in_r_026_pop1371_0,
    input wire [31:0] in_r_026_pop1371_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1181,
    output wire [0:0] out_forked40,
    output wire [0:0] out_memdep_phi1_pop1491,
    output wire [31:0] out_mul2576,
    output wire [0:0] out_notcmp2986,
    output wire [31:0] out_r_026_pop1371,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1181_mux_s;
    reg [0:0] exitcond1181_mux_q;
    wire [0:0] forked40_mux_s;
    reg [0:0] forked40_mux_q;
    wire [0:0] memdep_phi1_pop1491_mux_s;
    reg [0:0] memdep_phi1_pop1491_mux_q;
    wire [0:0] mul2576_mux_s;
    reg [31:0] mul2576_mux_q;
    wire [0:0] notcmp2986_mux_s;
    reg [0:0] notcmp2986_mux_q;
    wire [0:0] r_026_pop1371_mux_s;
    reg [31:0] r_026_pop1371_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1181_mux(MUX,2)
    assign exitcond1181_mux_s = in_valid_in_0;
    always @(exitcond1181_mux_s or in_exitcond1181_1 or in_exitcond1181_0)
    begin
        unique case (exitcond1181_mux_s)
            1'b0 : exitcond1181_mux_q = in_exitcond1181_1;
            1'b1 : exitcond1181_mux_q = in_exitcond1181_0;
            default : exitcond1181_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1181(GPOUT,22)
    assign out_exitcond1181 = exitcond1181_mux_q;

    // forked40_mux(MUX,3)
    assign forked40_mux_s = in_valid_in_0;
    always @(forked40_mux_s or in_forked40_1 or in_forked40_0)
    begin
        unique case (forked40_mux_s)
            1'b0 : forked40_mux_q = in_forked40_1;
            1'b1 : forked40_mux_q = in_forked40_0;
            default : forked40_mux_q = 1'b0;
        endcase
    end

    // out_forked40(GPOUT,23)
    assign out_forked40 = forked40_mux_q;

    // memdep_phi1_pop1491_mux(MUX,19)
    assign memdep_phi1_pop1491_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1491_mux_s or in_memdep_phi1_pop1491_1 or in_memdep_phi1_pop1491_0)
    begin
        unique case (memdep_phi1_pop1491_mux_s)
            1'b0 : memdep_phi1_pop1491_mux_q = in_memdep_phi1_pop1491_1;
            1'b1 : memdep_phi1_pop1491_mux_q = in_memdep_phi1_pop1491_0;
            default : memdep_phi1_pop1491_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1491(GPOUT,24)
    assign out_memdep_phi1_pop1491 = memdep_phi1_pop1491_mux_q;

    // mul2576_mux(MUX,20)
    assign mul2576_mux_s = in_valid_in_0;
    always @(mul2576_mux_s or in_mul2576_1 or in_mul2576_0)
    begin
        unique case (mul2576_mux_s)
            1'b0 : mul2576_mux_q = in_mul2576_1;
            1'b1 : mul2576_mux_q = in_mul2576_0;
            default : mul2576_mux_q = 32'b0;
        endcase
    end

    // out_mul2576(GPOUT,25)
    assign out_mul2576 = mul2576_mux_q;

    // notcmp2986_mux(MUX,21)
    assign notcmp2986_mux_s = in_valid_in_0;
    always @(notcmp2986_mux_s or in_notcmp2986_1 or in_notcmp2986_0)
    begin
        unique case (notcmp2986_mux_s)
            1'b0 : notcmp2986_mux_q = in_notcmp2986_1;
            1'b1 : notcmp2986_mux_q = in_notcmp2986_0;
            default : notcmp2986_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2986(GPOUT,26)
    assign out_notcmp2986 = notcmp2986_mux_q;

    // r_026_pop1371_mux(MUX,31)
    assign r_026_pop1371_mux_s = in_valid_in_0;
    always @(r_026_pop1371_mux_s or in_r_026_pop1371_1 or in_r_026_pop1371_0)
    begin
        unique case (r_026_pop1371_mux_s)
            1'b0 : r_026_pop1371_mux_q = in_r_026_pop1371_1;
            1'b1 : r_026_pop1371_mux_q = in_r_026_pop1371_0;
            default : r_026_pop1371_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1371(GPOUT,27)
    assign out_r_026_pop1371 = r_026_pop1371_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,32)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,33)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,29)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,30)
    assign out_valid_out = valid_or_q;

endmodule
