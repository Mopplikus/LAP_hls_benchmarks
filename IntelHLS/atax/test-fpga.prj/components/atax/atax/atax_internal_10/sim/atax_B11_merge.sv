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

// SystemVerilog created from atax_B11_merge
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:55:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B11_merge (
    input wire [31:0] in_add119_0,
    input wire [31:0] in_add119_1,
    input wire [63:0] in_arrayidx36599_pop39122_0,
    input wire [63:0] in_arrayidx36599_pop39122_1,
    input wire [0:0] in_exitcond20101_pop40124_0,
    input wire [0:0] in_exitcond20101_pop40124_1,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [63:0] in_idxprom3597_pop38117_0,
    input wire [63:0] in_idxprom3597_pop38117_1,
    input wire [0:0] in_memdep_phi_pop20116_0,
    input wire [0:0] in_memdep_phi_pop20116_1,
    input wire [0:0] in_notcmp62103_pop41126_0,
    input wire [0:0] in_notcmp62103_pop41126_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add119,
    output wire [63:0] out_arrayidx36599_pop39122,
    output wire [0:0] out_exitcond20101_pop40124,
    output wire [0:0] out_forked31,
    output wire [63:0] out_idxprom3597_pop38117,
    output wire [0:0] out_memdep_phi_pop20116,
    output wire [0:0] out_notcmp62103_pop41126,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add119_mux_s;
    reg [31:0] add119_mux_q;
    wire [0:0] arrayidx36599_pop39122_mux_s;
    reg [63:0] arrayidx36599_pop39122_mux_q;
    wire [0:0] exitcond20101_pop40124_mux_s;
    reg [0:0] exitcond20101_pop40124_mux_q;
    wire [0:0] forked31_mux_s;
    reg [0:0] forked31_mux_q;
    wire [0:0] idxprom3597_pop38117_mux_s;
    reg [63:0] idxprom3597_pop38117_mux_q;
    wire [0:0] memdep_phi_pop20116_mux_s;
    reg [0:0] memdep_phi_pop20116_mux_q;
    wire [0:0] notcmp62103_pop41126_mux_s;
    reg [0:0] notcmp62103_pop41126_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add119_mux(MUX,2)
    assign add119_mux_s = in_valid_in_0;
    always @(add119_mux_s or in_add119_1 or in_add119_0)
    begin
        unique case (add119_mux_s)
            1'b0 : add119_mux_q = in_add119_1;
            1'b1 : add119_mux_q = in_add119_0;
            default : add119_mux_q = 32'b0;
        endcase
    end

    // out_add119(GPOUT,26)
    assign out_add119 = add119_mux_q;

    // arrayidx36599_pop39122_mux(MUX,3)
    assign arrayidx36599_pop39122_mux_s = in_valid_in_0;
    always @(arrayidx36599_pop39122_mux_s or in_arrayidx36599_pop39122_1 or in_arrayidx36599_pop39122_0)
    begin
        unique case (arrayidx36599_pop39122_mux_s)
            1'b0 : arrayidx36599_pop39122_mux_q = in_arrayidx36599_pop39122_1;
            1'b1 : arrayidx36599_pop39122_mux_q = in_arrayidx36599_pop39122_0;
            default : arrayidx36599_pop39122_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx36599_pop39122(GPOUT,27)
    assign out_arrayidx36599_pop39122 = arrayidx36599_pop39122_mux_q;

    // exitcond20101_pop40124_mux(MUX,4)
    assign exitcond20101_pop40124_mux_s = in_valid_in_0;
    always @(exitcond20101_pop40124_mux_s or in_exitcond20101_pop40124_1 or in_exitcond20101_pop40124_0)
    begin
        unique case (exitcond20101_pop40124_mux_s)
            1'b0 : exitcond20101_pop40124_mux_q = in_exitcond20101_pop40124_1;
            1'b1 : exitcond20101_pop40124_mux_q = in_exitcond20101_pop40124_0;
            default : exitcond20101_pop40124_mux_q = 1'b0;
        endcase
    end

    // out_exitcond20101_pop40124(GPOUT,28)
    assign out_exitcond20101_pop40124 = exitcond20101_pop40124_mux_q;

    // forked31_mux(MUX,5)
    assign forked31_mux_s = in_valid_in_0;
    always @(forked31_mux_s or in_forked31_1 or in_forked31_0)
    begin
        unique case (forked31_mux_s)
            1'b0 : forked31_mux_q = in_forked31_1;
            1'b1 : forked31_mux_q = in_forked31_0;
            default : forked31_mux_q = 1'b0;
        endcase
    end

    // out_forked31(GPOUT,29)
    assign out_forked31 = forked31_mux_q;

    // idxprom3597_pop38117_mux(MUX,6)
    assign idxprom3597_pop38117_mux_s = in_valid_in_0;
    always @(idxprom3597_pop38117_mux_s or in_idxprom3597_pop38117_1 or in_idxprom3597_pop38117_0)
    begin
        unique case (idxprom3597_pop38117_mux_s)
            1'b0 : idxprom3597_pop38117_mux_q = in_idxprom3597_pop38117_1;
            1'b1 : idxprom3597_pop38117_mux_q = in_idxprom3597_pop38117_0;
            default : idxprom3597_pop38117_mux_q = 64'b0;
        endcase
    end

    // out_idxprom3597_pop38117(GPOUT,30)
    assign out_idxprom3597_pop38117 = idxprom3597_pop38117_mux_q;

    // memdep_phi_pop20116_mux(MUX,24)
    assign memdep_phi_pop20116_mux_s = in_valid_in_0;
    always @(memdep_phi_pop20116_mux_s or in_memdep_phi_pop20116_1 or in_memdep_phi_pop20116_0)
    begin
        unique case (memdep_phi_pop20116_mux_s)
            1'b0 : memdep_phi_pop20116_mux_q = in_memdep_phi_pop20116_1;
            1'b1 : memdep_phi_pop20116_mux_q = in_memdep_phi_pop20116_0;
            default : memdep_phi_pop20116_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop20116(GPOUT,31)
    assign out_memdep_phi_pop20116 = memdep_phi_pop20116_mux_q;

    // notcmp62103_pop41126_mux(MUX,25)
    assign notcmp62103_pop41126_mux_s = in_valid_in_0;
    always @(notcmp62103_pop41126_mux_s or in_notcmp62103_pop41126_1 or in_notcmp62103_pop41126_0)
    begin
        unique case (notcmp62103_pop41126_mux_s)
            1'b0 : notcmp62103_pop41126_mux_q = in_notcmp62103_pop41126_1;
            1'b1 : notcmp62103_pop41126_mux_q = in_notcmp62103_pop41126_0;
            default : notcmp62103_pop41126_mux_q = 1'b0;
        endcase
    end

    // out_notcmp62103_pop41126(GPOUT,32)
    assign out_notcmp62103_pop41126 = notcmp62103_pop41126_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
