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

// SystemVerilog created from covariance_B7_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B7_merge (
    input wire [0:0] in_exitcond1094_pop41154_0,
    input wire [0:0] in_exitcond1094_pop41154_1,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [63:0] in_idxprom7143_0,
    input wire [63:0] in_idxprom7143_1,
    input wire [31:0] in_lim_ext111_0,
    input wire [31:0] in_lim_ext111_1,
    input wire [31:0] in_lim_ext76_pop37148_0,
    input wire [31:0] in_lim_ext76_pop37148_1,
    input wire [0:0] in_memdep_phi1_pop16116_0,
    input wire [0:0] in_memdep_phi1_pop16116_1,
    input wire [0:0] in_memdep_phi1_pop1682_pop38145_0,
    input wire [0:0] in_memdep_phi1_pop1682_pop38145_1,
    input wire [0:0] in_memdep_phi2_pop17121_0,
    input wire [0:0] in_memdep_phi2_pop17121_1,
    input wire [0:0] in_memdep_phi2_pop1785_pop39150_0,
    input wire [0:0] in_memdep_phi2_pop1785_pop39150_1,
    input wire [0:0] in_memdep_phi4_pop18126_0,
    input wire [0:0] in_memdep_phi4_pop18126_1,
    input wire [0:0] in_memdep_phi4_pop1888_pop40152_0,
    input wire [0:0] in_memdep_phi4_pop1888_pop40152_1,
    input wire [31:0] in_mul142_0,
    input wire [31:0] in_mul142_1,
    input wire [0:0] in_notcmp6596_pop42156_0,
    input wire [0:0] in_notcmp6596_pop42156_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1094_pop41154,
    output wire [0:0] out_forked34,
    output wire [63:0] out_idxprom7143,
    output wire [31:0] out_lim_ext111,
    output wire [31:0] out_lim_ext76_pop37148,
    output wire [0:0] out_memdep_phi1_pop16116,
    output wire [0:0] out_memdep_phi1_pop1682_pop38145,
    output wire [0:0] out_memdep_phi2_pop17121,
    output wire [0:0] out_memdep_phi2_pop1785_pop39150,
    output wire [0:0] out_memdep_phi4_pop18126,
    output wire [0:0] out_memdep_phi4_pop1888_pop40152,
    output wire [31:0] out_mul142,
    output wire [0:0] out_notcmp6596_pop42156,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1094_pop41154_mux_s;
    reg [0:0] exitcond1094_pop41154_mux_q;
    wire [0:0] forked34_mux_s;
    reg [0:0] forked34_mux_q;
    wire [0:0] idxprom7143_mux_s;
    reg [63:0] idxprom7143_mux_q;
    wire [0:0] lim_ext111_mux_s;
    reg [31:0] lim_ext111_mux_q;
    wire [0:0] lim_ext76_pop37148_mux_s;
    reg [31:0] lim_ext76_pop37148_mux_q;
    wire [0:0] memdep_phi1_pop16116_mux_s;
    reg [0:0] memdep_phi1_pop16116_mux_q;
    wire [0:0] memdep_phi1_pop1682_pop38145_mux_s;
    reg [0:0] memdep_phi1_pop1682_pop38145_mux_q;
    wire [0:0] memdep_phi2_pop17121_mux_s;
    reg [0:0] memdep_phi2_pop17121_mux_q;
    wire [0:0] memdep_phi2_pop1785_pop39150_mux_s;
    reg [0:0] memdep_phi2_pop1785_pop39150_mux_q;
    wire [0:0] memdep_phi4_pop18126_mux_s;
    reg [0:0] memdep_phi4_pop18126_mux_q;
    wire [0:0] memdep_phi4_pop1888_pop40152_mux_s;
    reg [0:0] memdep_phi4_pop1888_pop40152_mux_q;
    wire [0:0] mul142_mux_s;
    reg [31:0] mul142_mux_q;
    wire [0:0] notcmp6596_pop42156_mux_s;
    reg [0:0] notcmp6596_pop42156_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1094_pop41154_mux(MUX,2)
    assign exitcond1094_pop41154_mux_s = in_valid_in_0;
    always @(exitcond1094_pop41154_mux_s or in_exitcond1094_pop41154_1 or in_exitcond1094_pop41154_0)
    begin
        unique case (exitcond1094_pop41154_mux_s)
            1'b0 : exitcond1094_pop41154_mux_q = in_exitcond1094_pop41154_1;
            1'b1 : exitcond1094_pop41154_mux_q = in_exitcond1094_pop41154_0;
            default : exitcond1094_pop41154_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1094_pop41154(GPOUT,44)
    assign out_exitcond1094_pop41154 = exitcond1094_pop41154_mux_q;

    // forked34_mux(MUX,3)
    assign forked34_mux_s = in_valid_in_0;
    always @(forked34_mux_s or in_forked34_1 or in_forked34_0)
    begin
        unique case (forked34_mux_s)
            1'b0 : forked34_mux_q = in_forked34_1;
            1'b1 : forked34_mux_q = in_forked34_0;
            default : forked34_mux_q = 1'b0;
        endcase
    end

    // out_forked34(GPOUT,45)
    assign out_forked34 = forked34_mux_q;

    // idxprom7143_mux(MUX,4)
    assign idxprom7143_mux_s = in_valid_in_0;
    always @(idxprom7143_mux_s or in_idxprom7143_1 or in_idxprom7143_0)
    begin
        unique case (idxprom7143_mux_s)
            1'b0 : idxprom7143_mux_q = in_idxprom7143_1;
            1'b1 : idxprom7143_mux_q = in_idxprom7143_0;
            default : idxprom7143_mux_q = 64'b0;
        endcase
    end

    // out_idxprom7143(GPOUT,46)
    assign out_idxprom7143 = idxprom7143_mux_q;

    // lim_ext111_mux(MUX,34)
    assign lim_ext111_mux_s = in_valid_in_0;
    always @(lim_ext111_mux_s or in_lim_ext111_1 or in_lim_ext111_0)
    begin
        unique case (lim_ext111_mux_s)
            1'b0 : lim_ext111_mux_q = in_lim_ext111_1;
            1'b1 : lim_ext111_mux_q = in_lim_ext111_0;
            default : lim_ext111_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext111(GPOUT,47)
    assign out_lim_ext111 = lim_ext111_mux_q;

    // lim_ext76_pop37148_mux(MUX,35)
    assign lim_ext76_pop37148_mux_s = in_valid_in_0;
    always @(lim_ext76_pop37148_mux_s or in_lim_ext76_pop37148_1 or in_lim_ext76_pop37148_0)
    begin
        unique case (lim_ext76_pop37148_mux_s)
            1'b0 : lim_ext76_pop37148_mux_q = in_lim_ext76_pop37148_1;
            1'b1 : lim_ext76_pop37148_mux_q = in_lim_ext76_pop37148_0;
            default : lim_ext76_pop37148_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext76_pop37148(GPOUT,48)
    assign out_lim_ext76_pop37148 = lim_ext76_pop37148_mux_q;

    // memdep_phi1_pop16116_mux(MUX,36)
    assign memdep_phi1_pop16116_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop16116_mux_s or in_memdep_phi1_pop16116_1 or in_memdep_phi1_pop16116_0)
    begin
        unique case (memdep_phi1_pop16116_mux_s)
            1'b0 : memdep_phi1_pop16116_mux_q = in_memdep_phi1_pop16116_1;
            1'b1 : memdep_phi1_pop16116_mux_q = in_memdep_phi1_pop16116_0;
            default : memdep_phi1_pop16116_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop16116(GPOUT,49)
    assign out_memdep_phi1_pop16116 = memdep_phi1_pop16116_mux_q;

    // memdep_phi1_pop1682_pop38145_mux(MUX,37)
    assign memdep_phi1_pop1682_pop38145_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1682_pop38145_mux_s or in_memdep_phi1_pop1682_pop38145_1 or in_memdep_phi1_pop1682_pop38145_0)
    begin
        unique case (memdep_phi1_pop1682_pop38145_mux_s)
            1'b0 : memdep_phi1_pop1682_pop38145_mux_q = in_memdep_phi1_pop1682_pop38145_1;
            1'b1 : memdep_phi1_pop1682_pop38145_mux_q = in_memdep_phi1_pop1682_pop38145_0;
            default : memdep_phi1_pop1682_pop38145_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1682_pop38145(GPOUT,50)
    assign out_memdep_phi1_pop1682_pop38145 = memdep_phi1_pop1682_pop38145_mux_q;

    // memdep_phi2_pop17121_mux(MUX,38)
    assign memdep_phi2_pop17121_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop17121_mux_s or in_memdep_phi2_pop17121_1 or in_memdep_phi2_pop17121_0)
    begin
        unique case (memdep_phi2_pop17121_mux_s)
            1'b0 : memdep_phi2_pop17121_mux_q = in_memdep_phi2_pop17121_1;
            1'b1 : memdep_phi2_pop17121_mux_q = in_memdep_phi2_pop17121_0;
            default : memdep_phi2_pop17121_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop17121(GPOUT,51)
    assign out_memdep_phi2_pop17121 = memdep_phi2_pop17121_mux_q;

    // memdep_phi2_pop1785_pop39150_mux(MUX,39)
    assign memdep_phi2_pop1785_pop39150_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1785_pop39150_mux_s or in_memdep_phi2_pop1785_pop39150_1 or in_memdep_phi2_pop1785_pop39150_0)
    begin
        unique case (memdep_phi2_pop1785_pop39150_mux_s)
            1'b0 : memdep_phi2_pop1785_pop39150_mux_q = in_memdep_phi2_pop1785_pop39150_1;
            1'b1 : memdep_phi2_pop1785_pop39150_mux_q = in_memdep_phi2_pop1785_pop39150_0;
            default : memdep_phi2_pop1785_pop39150_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1785_pop39150(GPOUT,52)
    assign out_memdep_phi2_pop1785_pop39150 = memdep_phi2_pop1785_pop39150_mux_q;

    // memdep_phi4_pop18126_mux(MUX,40)
    assign memdep_phi4_pop18126_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18126_mux_s or in_memdep_phi4_pop18126_1 or in_memdep_phi4_pop18126_0)
    begin
        unique case (memdep_phi4_pop18126_mux_s)
            1'b0 : memdep_phi4_pop18126_mux_q = in_memdep_phi4_pop18126_1;
            1'b1 : memdep_phi4_pop18126_mux_q = in_memdep_phi4_pop18126_0;
            default : memdep_phi4_pop18126_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18126(GPOUT,53)
    assign out_memdep_phi4_pop18126 = memdep_phi4_pop18126_mux_q;

    // memdep_phi4_pop1888_pop40152_mux(MUX,41)
    assign memdep_phi4_pop1888_pop40152_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1888_pop40152_mux_s or in_memdep_phi4_pop1888_pop40152_1 or in_memdep_phi4_pop1888_pop40152_0)
    begin
        unique case (memdep_phi4_pop1888_pop40152_mux_s)
            1'b0 : memdep_phi4_pop1888_pop40152_mux_q = in_memdep_phi4_pop1888_pop40152_1;
            1'b1 : memdep_phi4_pop1888_pop40152_mux_q = in_memdep_phi4_pop1888_pop40152_0;
            default : memdep_phi4_pop1888_pop40152_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1888_pop40152(GPOUT,54)
    assign out_memdep_phi4_pop1888_pop40152 = memdep_phi4_pop1888_pop40152_mux_q;

    // mul142_mux(MUX,42)
    assign mul142_mux_s = in_valid_in_0;
    always @(mul142_mux_s or in_mul142_1 or in_mul142_0)
    begin
        unique case (mul142_mux_s)
            1'b0 : mul142_mux_q = in_mul142_1;
            1'b1 : mul142_mux_q = in_mul142_0;
            default : mul142_mux_q = 32'b0;
        endcase
    end

    // out_mul142(GPOUT,55)
    assign out_mul142 = mul142_mux_q;

    // notcmp6596_pop42156_mux(MUX,43)
    assign notcmp6596_pop42156_mux_s = in_valid_in_0;
    always @(notcmp6596_pop42156_mux_s or in_notcmp6596_pop42156_1 or in_notcmp6596_pop42156_0)
    begin
        unique case (notcmp6596_pop42156_mux_s)
            1'b0 : notcmp6596_pop42156_mux_q = in_notcmp6596_pop42156_1;
            1'b1 : notcmp6596_pop42156_mux_q = in_notcmp6596_pop42156_0;
            default : notcmp6596_pop42156_mux_q = 1'b0;
        endcase
    end

    // out_notcmp6596_pop42156(GPOUT,56)
    assign out_notcmp6596_pop42156 = notcmp6596_pop42156_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,60)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,61)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = valid_or_q;

endmodule
