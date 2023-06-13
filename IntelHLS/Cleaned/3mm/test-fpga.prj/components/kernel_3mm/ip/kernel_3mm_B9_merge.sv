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

// SystemVerilog created from kernel_3mm_B9_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B9_merge (
    input wire [0:0] in_exitcond25203_0,
    input wire [0:0] in_exitcond25203_1,
    input wire [0:0] in_forked137_0,
    input wire [0:0] in_forked137_1,
    input wire [0:0] in_memdep_phi5_pop27209_0,
    input wire [0:0] in_memdep_phi5_pop27209_1,
    input wire [31:0] in_mul31_add40200_0,
    input wire [31:0] in_mul31_add40200_1,
    input wire [0:0] in_notcmp90206_0,
    input wire [0:0] in_notcmp90206_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond25203,
    output wire [0:0] out_forked137,
    output wire [0:0] out_memdep_phi5_pop27209,
    output wire [31:0] out_mul31_add40200,
    output wire [0:0] out_notcmp90206,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond25203_mux_s;
    reg [0:0] exitcond25203_mux_q;
    wire [0:0] forked137_mux_s;
    reg [0:0] forked137_mux_q;
    wire [0:0] memdep_phi5_pop27209_mux_s;
    reg [0:0] memdep_phi5_pop27209_mux_q;
    wire [0:0] mul31_add40200_mux_s;
    reg [31:0] mul31_add40200_mux_q;
    wire [0:0] notcmp90206_mux_s;
    reg [0:0] notcmp90206_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond25203_mux(MUX,2)
    assign exitcond25203_mux_s = in_valid_in_0;
    always @(exitcond25203_mux_s or in_exitcond25203_1 or in_exitcond25203_0)
    begin
        unique case (exitcond25203_mux_s)
            1'b0 : exitcond25203_mux_q = in_exitcond25203_1;
            1'b1 : exitcond25203_mux_q = in_exitcond25203_0;
            default : exitcond25203_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25203(GPOUT,20)
    assign out_exitcond25203 = exitcond25203_mux_q;

    // forked137_mux(MUX,3)
    assign forked137_mux_s = in_valid_in_0;
    always @(forked137_mux_s or in_forked137_1 or in_forked137_0)
    begin
        unique case (forked137_mux_s)
            1'b0 : forked137_mux_q = in_forked137_1;
            1'b1 : forked137_mux_q = in_forked137_0;
            default : forked137_mux_q = 1'b0;
        endcase
    end

    // out_forked137(GPOUT,21)
    assign out_forked137 = forked137_mux_q;

    // memdep_phi5_pop27209_mux(MUX,17)
    assign memdep_phi5_pop27209_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop27209_mux_s or in_memdep_phi5_pop27209_1 or in_memdep_phi5_pop27209_0)
    begin
        unique case (memdep_phi5_pop27209_mux_s)
            1'b0 : memdep_phi5_pop27209_mux_q = in_memdep_phi5_pop27209_1;
            1'b1 : memdep_phi5_pop27209_mux_q = in_memdep_phi5_pop27209_0;
            default : memdep_phi5_pop27209_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop27209(GPOUT,22)
    assign out_memdep_phi5_pop27209 = memdep_phi5_pop27209_mux_q;

    // mul31_add40200_mux(MUX,18)
    assign mul31_add40200_mux_s = in_valid_in_0;
    always @(mul31_add40200_mux_s or in_mul31_add40200_1 or in_mul31_add40200_0)
    begin
        unique case (mul31_add40200_mux_s)
            1'b0 : mul31_add40200_mux_q = in_mul31_add40200_1;
            1'b1 : mul31_add40200_mux_q = in_mul31_add40200_0;
            default : mul31_add40200_mux_q = 32'b0;
        endcase
    end

    // out_mul31_add40200(GPOUT,23)
    assign out_mul31_add40200 = mul31_add40200_mux_q;

    // notcmp90206_mux(MUX,19)
    assign notcmp90206_mux_s = in_valid_in_0;
    always @(notcmp90206_mux_s or in_notcmp90206_1 or in_notcmp90206_0)
    begin
        unique case (notcmp90206_mux_s)
            1'b0 : notcmp90206_mux_q = in_notcmp90206_1;
            1'b1 : notcmp90206_mux_q = in_notcmp90206_0;
            default : notcmp90206_mux_q = 1'b0;
        endcase
    end

    // out_notcmp90206(GPOUT,24)
    assign out_notcmp90206 = notcmp90206_mux_q;

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
