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

// SystemVerilog created from jacobi_1d_B5_merge
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_B5_merge (
    input wire [0:0] in_exitcond1749_pop1968_0,
    input wire [0:0] in_exitcond1749_pop1968_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_mPtr_bitcast707663_0,
    input wire [63:0] in_mPtr_bitcast707663_1,
    input wire [0:0] in_memdep_phi6_pop1355_pop2365_0,
    input wire [0:0] in_memdep_phi6_pop1355_pop2365_1,
    input wire [0:0] in_notcmp3951_pop2070_0,
    input wire [0:0] in_notcmp3951_pop2070_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1749_pop1968,
    output wire [0:0] out_forked,
    output wire [63:0] out_mPtr_bitcast707663,
    output wire [0:0] out_memdep_phi6_pop1355_pop2365,
    output wire [0:0] out_notcmp3951_pop2070,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1749_pop1968_mux_s;
    reg [0:0] exitcond1749_pop1968_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mPtr_bitcast707663_mux_s;
    reg [63:0] mPtr_bitcast707663_mux_q;
    wire [0:0] memdep_phi6_pop1355_pop2365_mux_s;
    reg [0:0] memdep_phi6_pop1355_pop2365_mux_q;
    wire [0:0] notcmp3951_pop2070_mux_s;
    reg [0:0] notcmp3951_pop2070_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1749_pop1968_mux(MUX,2)
    assign exitcond1749_pop1968_mux_s = in_valid_in_0;
    always @(exitcond1749_pop1968_mux_s or in_exitcond1749_pop1968_1 or in_exitcond1749_pop1968_0)
    begin
        unique case (exitcond1749_pop1968_mux_s)
            1'b0 : exitcond1749_pop1968_mux_q = in_exitcond1749_pop1968_1;
            1'b1 : exitcond1749_pop1968_mux_q = in_exitcond1749_pop1968_0;
            default : exitcond1749_pop1968_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1749_pop1968(GPOUT,20)
    assign out_exitcond1749_pop1968 = exitcond1749_pop1968_mux_q;

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

    // mPtr_bitcast707663_mux(MUX,17)
    assign mPtr_bitcast707663_mux_s = in_valid_in_0;
    always @(mPtr_bitcast707663_mux_s or in_mPtr_bitcast707663_1 or in_mPtr_bitcast707663_0)
    begin
        unique case (mPtr_bitcast707663_mux_s)
            1'b0 : mPtr_bitcast707663_mux_q = in_mPtr_bitcast707663_1;
            1'b1 : mPtr_bitcast707663_mux_q = in_mPtr_bitcast707663_0;
            default : mPtr_bitcast707663_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast707663(GPOUT,22)
    assign out_mPtr_bitcast707663 = mPtr_bitcast707663_mux_q;

    // memdep_phi6_pop1355_pop2365_mux(MUX,18)
    assign memdep_phi6_pop1355_pop2365_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1355_pop2365_mux_s or in_memdep_phi6_pop1355_pop2365_1 or in_memdep_phi6_pop1355_pop2365_0)
    begin
        unique case (memdep_phi6_pop1355_pop2365_mux_s)
            1'b0 : memdep_phi6_pop1355_pop2365_mux_q = in_memdep_phi6_pop1355_pop2365_1;
            1'b1 : memdep_phi6_pop1355_pop2365_mux_q = in_memdep_phi6_pop1355_pop2365_0;
            default : memdep_phi6_pop1355_pop2365_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1355_pop2365(GPOUT,23)
    assign out_memdep_phi6_pop1355_pop2365 = memdep_phi6_pop1355_pop2365_mux_q;

    // notcmp3951_pop2070_mux(MUX,19)
    assign notcmp3951_pop2070_mux_s = in_valid_in_0;
    always @(notcmp3951_pop2070_mux_s or in_notcmp3951_pop2070_1 or in_notcmp3951_pop2070_0)
    begin
        unique case (notcmp3951_pop2070_mux_s)
            1'b0 : notcmp3951_pop2070_mux_q = in_notcmp3951_pop2070_1;
            1'b1 : notcmp3951_pop2070_mux_q = in_notcmp3951_pop2070_0;
            default : notcmp3951_pop2070_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3951_pop2070(GPOUT,24)
    assign out_notcmp3951_pop2070 = notcmp3951_pop2070_mux_q;

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
