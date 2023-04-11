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

// SystemVerilog created from atax_B5_merge
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B5_merge (
    input wire [63:0] in_arrayidx165_0,
    input wire [63:0] in_arrayidx165_1,
    input wire [0:0] in_exitcond967_0,
    input wire [0:0] in_exitcond967_1,
    input wire [0:0] in_forked11_0,
    input wire [0:0] in_forked11_1,
    input wire [0:0] in_forked3563_0,
    input wire [0:0] in_forked3563_1,
    input wire [63:0] in_idxprom64_0,
    input wire [63:0] in_idxprom64_1,
    input wire [0:0] in_memdep_phi3_pop1039_pop1569_0,
    input wire [0:0] in_memdep_phi3_pop1039_pop1569_1,
    input wire [0:0] in_memdep_phi3_pop1062_0,
    input wire [0:0] in_memdep_phi3_pop1062_1,
    input wire [0:0] in_memdep_phi_pop936_pop1466_0,
    input wire [0:0] in_memdep_phi_pop936_pop1466_1,
    input wire [0:0] in_memdep_phi_pop957_0,
    input wire [0:0] in_memdep_phi_pop957_1,
    input wire [0:0] in_notcmp2668_0,
    input wire [0:0] in_notcmp2668_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax4_0,
    input wire [31:0] in_unnamed_atax4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx165,
    output wire [0:0] out_exitcond967,
    output wire [0:0] out_forked11,
    output wire [0:0] out_forked3563,
    output wire [63:0] out_idxprom64,
    output wire [0:0] out_memdep_phi3_pop1039_pop1569,
    output wire [0:0] out_memdep_phi3_pop1062,
    output wire [0:0] out_memdep_phi_pop936_pop1466,
    output wire [0:0] out_memdep_phi_pop957,
    output wire [0:0] out_notcmp2668,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx165_mux_s;
    reg [63:0] arrayidx165_mux_q;
    wire [0:0] exitcond967_mux_s;
    reg [0:0] exitcond967_mux_q;
    wire [0:0] forked11_mux_s;
    reg [0:0] forked11_mux_q;
    wire [0:0] forked3563_mux_s;
    reg [0:0] forked3563_mux_q;
    wire [0:0] idxprom64_mux_s;
    reg [63:0] idxprom64_mux_q;
    wire [0:0] memdep_phi3_pop1039_pop1569_mux_s;
    reg [0:0] memdep_phi3_pop1039_pop1569_mux_q;
    wire [0:0] memdep_phi3_pop1062_mux_s;
    reg [0:0] memdep_phi3_pop1062_mux_q;
    wire [0:0] memdep_phi_pop936_pop1466_mux_s;
    reg [0:0] memdep_phi_pop936_pop1466_mux_q;
    wire [0:0] memdep_phi_pop957_mux_s;
    reg [0:0] memdep_phi_pop957_mux_q;
    wire [0:0] notcmp2668_mux_s;
    reg [0:0] notcmp2668_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax4_mux_s;
    reg [31:0] unnamed_atax4_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx165_mux(MUX,2)
    assign arrayidx165_mux_s = in_valid_in_0;
    always @(arrayidx165_mux_s or in_arrayidx165_1 or in_arrayidx165_0)
    begin
        unique case (arrayidx165_mux_s)
            1'b0 : arrayidx165_mux_q = in_arrayidx165_1;
            1'b1 : arrayidx165_mux_q = in_arrayidx165_0;
            default : arrayidx165_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx165(GPOUT,37)
    assign out_arrayidx165 = arrayidx165_mux_q;

    // exitcond967_mux(MUX,3)
    assign exitcond967_mux_s = in_valid_in_0;
    always @(exitcond967_mux_s or in_exitcond967_1 or in_exitcond967_0)
    begin
        unique case (exitcond967_mux_s)
            1'b0 : exitcond967_mux_q = in_exitcond967_1;
            1'b1 : exitcond967_mux_q = in_exitcond967_0;
            default : exitcond967_mux_q = 1'b0;
        endcase
    end

    // out_exitcond967(GPOUT,38)
    assign out_exitcond967 = exitcond967_mux_q;

    // forked11_mux(MUX,4)
    assign forked11_mux_s = in_valid_in_0;
    always @(forked11_mux_s or in_forked11_1 or in_forked11_0)
    begin
        unique case (forked11_mux_s)
            1'b0 : forked11_mux_q = in_forked11_1;
            1'b1 : forked11_mux_q = in_forked11_0;
            default : forked11_mux_q = 1'b0;
        endcase
    end

    // out_forked11(GPOUT,39)
    assign out_forked11 = forked11_mux_q;

    // forked3563_mux(MUX,5)
    assign forked3563_mux_s = in_valid_in_0;
    always @(forked3563_mux_s or in_forked3563_1 or in_forked3563_0)
    begin
        unique case (forked3563_mux_s)
            1'b0 : forked3563_mux_q = in_forked3563_1;
            1'b1 : forked3563_mux_q = in_forked3563_0;
            default : forked3563_mux_q = 1'b0;
        endcase
    end

    // out_forked3563(GPOUT,40)
    assign out_forked3563 = forked3563_mux_q;

    // idxprom64_mux(MUX,6)
    assign idxprom64_mux_s = in_valid_in_0;
    always @(idxprom64_mux_s or in_idxprom64_1 or in_idxprom64_0)
    begin
        unique case (idxprom64_mux_s)
            1'b0 : idxprom64_mux_q = in_idxprom64_1;
            1'b1 : idxprom64_mux_q = in_idxprom64_0;
            default : idxprom64_mux_q = 64'b0;
        endcase
    end

    // out_idxprom64(GPOUT,41)
    assign out_idxprom64 = idxprom64_mux_q;

    // memdep_phi3_pop1039_pop1569_mux(MUX,32)
    assign memdep_phi3_pop1039_pop1569_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1039_pop1569_mux_s or in_memdep_phi3_pop1039_pop1569_1 or in_memdep_phi3_pop1039_pop1569_0)
    begin
        unique case (memdep_phi3_pop1039_pop1569_mux_s)
            1'b0 : memdep_phi3_pop1039_pop1569_mux_q = in_memdep_phi3_pop1039_pop1569_1;
            1'b1 : memdep_phi3_pop1039_pop1569_mux_q = in_memdep_phi3_pop1039_pop1569_0;
            default : memdep_phi3_pop1039_pop1569_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1039_pop1569(GPOUT,42)
    assign out_memdep_phi3_pop1039_pop1569 = memdep_phi3_pop1039_pop1569_mux_q;

    // memdep_phi3_pop1062_mux(MUX,33)
    assign memdep_phi3_pop1062_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1062_mux_s or in_memdep_phi3_pop1062_1 or in_memdep_phi3_pop1062_0)
    begin
        unique case (memdep_phi3_pop1062_mux_s)
            1'b0 : memdep_phi3_pop1062_mux_q = in_memdep_phi3_pop1062_1;
            1'b1 : memdep_phi3_pop1062_mux_q = in_memdep_phi3_pop1062_0;
            default : memdep_phi3_pop1062_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1062(GPOUT,43)
    assign out_memdep_phi3_pop1062 = memdep_phi3_pop1062_mux_q;

    // memdep_phi_pop936_pop1466_mux(MUX,34)
    assign memdep_phi_pop936_pop1466_mux_s = in_valid_in_0;
    always @(memdep_phi_pop936_pop1466_mux_s or in_memdep_phi_pop936_pop1466_1 or in_memdep_phi_pop936_pop1466_0)
    begin
        unique case (memdep_phi_pop936_pop1466_mux_s)
            1'b0 : memdep_phi_pop936_pop1466_mux_q = in_memdep_phi_pop936_pop1466_1;
            1'b1 : memdep_phi_pop936_pop1466_mux_q = in_memdep_phi_pop936_pop1466_0;
            default : memdep_phi_pop936_pop1466_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop936_pop1466(GPOUT,44)
    assign out_memdep_phi_pop936_pop1466 = memdep_phi_pop936_pop1466_mux_q;

    // memdep_phi_pop957_mux(MUX,35)
    assign memdep_phi_pop957_mux_s = in_valid_in_0;
    always @(memdep_phi_pop957_mux_s or in_memdep_phi_pop957_1 or in_memdep_phi_pop957_0)
    begin
        unique case (memdep_phi_pop957_mux_s)
            1'b0 : memdep_phi_pop957_mux_q = in_memdep_phi_pop957_1;
            1'b1 : memdep_phi_pop957_mux_q = in_memdep_phi_pop957_0;
            default : memdep_phi_pop957_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop957(GPOUT,45)
    assign out_memdep_phi_pop957 = memdep_phi_pop957_mux_q;

    // notcmp2668_mux(MUX,36)
    assign notcmp2668_mux_s = in_valid_in_0;
    always @(notcmp2668_mux_s or in_notcmp2668_1 or in_notcmp2668_0)
    begin
        unique case (notcmp2668_mux_s)
            1'b0 : notcmp2668_mux_q = in_notcmp2668_1;
            1'b1 : notcmp2668_mux_q = in_notcmp2668_0;
            default : notcmp2668_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2668(GPOUT,46)
    assign out_notcmp2668 = notcmp2668_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,51)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,52)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_atax4_mux(MUX,53)
    assign unnamed_atax4_mux_s = in_valid_in_0;
    always @(unnamed_atax4_mux_s or in_unnamed_atax4_1 or in_unnamed_atax4_0)
    begin
        unique case (unnamed_atax4_mux_s)
            1'b0 : unnamed_atax4_mux_q = in_unnamed_atax4_1;
            1'b1 : unnamed_atax4_mux_q = in_unnamed_atax4_0;
            default : unnamed_atax4_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_atax4(GPOUT,49)
    assign out_unnamed_atax4 = unnamed_atax4_mux_q;

    // out_valid_out(GPOUT,50)
    assign out_valid_out = valid_or_q;

endmodule
