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

// SystemVerilog created from atax_B7_merge
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_merge (
    input wire [31:0] in_add73_0,
    input wire [31:0] in_add73_1,
    input wire [63:0] in_arrayidx145_pop2580_0,
    input wire [63:0] in_arrayidx145_pop2580_1,
    input wire [0:0] in_exitcond947_pop2682_0,
    input wire [0:0] in_exitcond947_pop2682_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_idxprom43_pop2471_0,
    input wire [63:0] in_idxprom43_pop2471_1,
    input wire [0:0] in_memdep_phi2_pop1370_0,
    input wire [0:0] in_memdep_phi2_pop1370_1,
    input wire [0:0] in_memdep_phi3_pop1040_pop2277_0,
    input wire [0:0] in_memdep_phi3_pop1040_pop2277_1,
    input wire [0:0] in_memdep_phi3_pop1060_0,
    input wire [0:0] in_memdep_phi3_pop1060_1,
    input wire [0:0] in_memdep_phi_pop937_pop2175_0,
    input wire [0:0] in_memdep_phi_pop937_pop2175_1,
    input wire [0:0] in_memdep_phi_pop955_0,
    input wire [0:0] in_memdep_phi_pop955_1,
    input wire [0:0] in_notcmp2649_pop2784_0,
    input wire [0:0] in_notcmp2649_pop2784_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add73,
    output wire [63:0] out_arrayidx145_pop2580,
    output wire [0:0] out_exitcond947_pop2682,
    output wire [0:0] out_forked,
    output wire [63:0] out_idxprom43_pop2471,
    output wire [0:0] out_memdep_phi2_pop1370,
    output wire [0:0] out_memdep_phi3_pop1040_pop2277,
    output wire [0:0] out_memdep_phi3_pop1060,
    output wire [0:0] out_memdep_phi_pop937_pop2175,
    output wire [0:0] out_memdep_phi_pop955,
    output wire [0:0] out_notcmp2649_pop2784,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add73_mux_s;
    reg [31:0] add73_mux_q;
    wire [0:0] arrayidx145_pop2580_mux_s;
    reg [63:0] arrayidx145_pop2580_mux_q;
    wire [0:0] exitcond947_pop2682_mux_s;
    reg [0:0] exitcond947_pop2682_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] idxprom43_pop2471_mux_s;
    reg [63:0] idxprom43_pop2471_mux_q;
    wire [0:0] memdep_phi2_pop1370_mux_s;
    reg [0:0] memdep_phi2_pop1370_mux_q;
    wire [0:0] memdep_phi3_pop1040_pop2277_mux_s;
    reg [0:0] memdep_phi3_pop1040_pop2277_mux_q;
    wire [0:0] memdep_phi3_pop1060_mux_s;
    reg [0:0] memdep_phi3_pop1060_mux_q;
    wire [0:0] memdep_phi_pop937_pop2175_mux_s;
    reg [0:0] memdep_phi_pop937_pop2175_mux_q;
    wire [0:0] memdep_phi_pop955_mux_s;
    reg [0:0] memdep_phi_pop955_mux_q;
    wire [0:0] notcmp2649_pop2784_mux_s;
    reg [0:0] notcmp2649_pop2784_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add73_mux(MUX,2)
    assign add73_mux_s = in_valid_in_0;
    always @(add73_mux_s or in_add73_1 or in_add73_0)
    begin
        unique case (add73_mux_s)
            1'b0 : add73_mux_q = in_add73_1;
            1'b1 : add73_mux_q = in_add73_0;
            default : add73_mux_q = 32'b0;
        endcase
    end

    // out_add73(GPOUT,38)
    assign out_add73 = add73_mux_q;

    // arrayidx145_pop2580_mux(MUX,3)
    assign arrayidx145_pop2580_mux_s = in_valid_in_0;
    always @(arrayidx145_pop2580_mux_s or in_arrayidx145_pop2580_1 or in_arrayidx145_pop2580_0)
    begin
        unique case (arrayidx145_pop2580_mux_s)
            1'b0 : arrayidx145_pop2580_mux_q = in_arrayidx145_pop2580_1;
            1'b1 : arrayidx145_pop2580_mux_q = in_arrayidx145_pop2580_0;
            default : arrayidx145_pop2580_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx145_pop2580(GPOUT,39)
    assign out_arrayidx145_pop2580 = arrayidx145_pop2580_mux_q;

    // exitcond947_pop2682_mux(MUX,4)
    assign exitcond947_pop2682_mux_s = in_valid_in_0;
    always @(exitcond947_pop2682_mux_s or in_exitcond947_pop2682_1 or in_exitcond947_pop2682_0)
    begin
        unique case (exitcond947_pop2682_mux_s)
            1'b0 : exitcond947_pop2682_mux_q = in_exitcond947_pop2682_1;
            1'b1 : exitcond947_pop2682_mux_q = in_exitcond947_pop2682_0;
            default : exitcond947_pop2682_mux_q = 1'b0;
        endcase
    end

    // out_exitcond947_pop2682(GPOUT,40)
    assign out_exitcond947_pop2682 = exitcond947_pop2682_mux_q;

    // forked_mux(MUX,5)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,41)
    assign out_forked = forked_mux_q;

    // idxprom43_pop2471_mux(MUX,6)
    assign idxprom43_pop2471_mux_s = in_valid_in_0;
    always @(idxprom43_pop2471_mux_s or in_idxprom43_pop2471_1 or in_idxprom43_pop2471_0)
    begin
        unique case (idxprom43_pop2471_mux_s)
            1'b0 : idxprom43_pop2471_mux_q = in_idxprom43_pop2471_1;
            1'b1 : idxprom43_pop2471_mux_q = in_idxprom43_pop2471_0;
            default : idxprom43_pop2471_mux_q = 64'b0;
        endcase
    end

    // out_idxprom43_pop2471(GPOUT,42)
    assign out_idxprom43_pop2471 = idxprom43_pop2471_mux_q;

    // memdep_phi2_pop1370_mux(MUX,32)
    assign memdep_phi2_pop1370_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1370_mux_s or in_memdep_phi2_pop1370_1 or in_memdep_phi2_pop1370_0)
    begin
        unique case (memdep_phi2_pop1370_mux_s)
            1'b0 : memdep_phi2_pop1370_mux_q = in_memdep_phi2_pop1370_1;
            1'b1 : memdep_phi2_pop1370_mux_q = in_memdep_phi2_pop1370_0;
            default : memdep_phi2_pop1370_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1370(GPOUT,43)
    assign out_memdep_phi2_pop1370 = memdep_phi2_pop1370_mux_q;

    // memdep_phi3_pop1040_pop2277_mux(MUX,33)
    assign memdep_phi3_pop1040_pop2277_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1040_pop2277_mux_s or in_memdep_phi3_pop1040_pop2277_1 or in_memdep_phi3_pop1040_pop2277_0)
    begin
        unique case (memdep_phi3_pop1040_pop2277_mux_s)
            1'b0 : memdep_phi3_pop1040_pop2277_mux_q = in_memdep_phi3_pop1040_pop2277_1;
            1'b1 : memdep_phi3_pop1040_pop2277_mux_q = in_memdep_phi3_pop1040_pop2277_0;
            default : memdep_phi3_pop1040_pop2277_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1040_pop2277(GPOUT,44)
    assign out_memdep_phi3_pop1040_pop2277 = memdep_phi3_pop1040_pop2277_mux_q;

    // memdep_phi3_pop1060_mux(MUX,34)
    assign memdep_phi3_pop1060_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1060_mux_s or in_memdep_phi3_pop1060_1 or in_memdep_phi3_pop1060_0)
    begin
        unique case (memdep_phi3_pop1060_mux_s)
            1'b0 : memdep_phi3_pop1060_mux_q = in_memdep_phi3_pop1060_1;
            1'b1 : memdep_phi3_pop1060_mux_q = in_memdep_phi3_pop1060_0;
            default : memdep_phi3_pop1060_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1060(GPOUT,45)
    assign out_memdep_phi3_pop1060 = memdep_phi3_pop1060_mux_q;

    // memdep_phi_pop937_pop2175_mux(MUX,35)
    assign memdep_phi_pop937_pop2175_mux_s = in_valid_in_0;
    always @(memdep_phi_pop937_pop2175_mux_s or in_memdep_phi_pop937_pop2175_1 or in_memdep_phi_pop937_pop2175_0)
    begin
        unique case (memdep_phi_pop937_pop2175_mux_s)
            1'b0 : memdep_phi_pop937_pop2175_mux_q = in_memdep_phi_pop937_pop2175_1;
            1'b1 : memdep_phi_pop937_pop2175_mux_q = in_memdep_phi_pop937_pop2175_0;
            default : memdep_phi_pop937_pop2175_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop937_pop2175(GPOUT,46)
    assign out_memdep_phi_pop937_pop2175 = memdep_phi_pop937_pop2175_mux_q;

    // memdep_phi_pop955_mux(MUX,36)
    assign memdep_phi_pop955_mux_s = in_valid_in_0;
    always @(memdep_phi_pop955_mux_s or in_memdep_phi_pop955_1 or in_memdep_phi_pop955_0)
    begin
        unique case (memdep_phi_pop955_mux_s)
            1'b0 : memdep_phi_pop955_mux_q = in_memdep_phi_pop955_1;
            1'b1 : memdep_phi_pop955_mux_q = in_memdep_phi_pop955_0;
            default : memdep_phi_pop955_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop955(GPOUT,47)
    assign out_memdep_phi_pop955 = memdep_phi_pop955_mux_q;

    // notcmp2649_pop2784_mux(MUX,37)
    assign notcmp2649_pop2784_mux_s = in_valid_in_0;
    always @(notcmp2649_pop2784_mux_s or in_notcmp2649_pop2784_1 or in_notcmp2649_pop2784_0)
    begin
        unique case (notcmp2649_pop2784_mux_s)
            1'b0 : notcmp2649_pop2784_mux_q = in_notcmp2649_pop2784_1;
            1'b1 : notcmp2649_pop2784_mux_q = in_notcmp2649_pop2784_0;
            default : notcmp2649_pop2784_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2649_pop2784(GPOUT,48)
    assign out_notcmp2649_pop2784 = notcmp2649_pop2784_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,52)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,53)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,51)
    assign out_valid_out = valid_or_q;

endmodule
