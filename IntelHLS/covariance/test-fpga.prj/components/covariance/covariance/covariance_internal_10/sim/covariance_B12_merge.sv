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

// SystemVerilog created from covariance_B12_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_merge (
    input wire [0:0] in_forked23184_0,
    input wire [0:0] in_forked23184_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28171_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28171_1,
    input wire [31:0] in_i24_034_pop29104_pop62190_0,
    input wire [31:0] in_i24_034_pop29104_pop62190_1,
    input wire [31:0] in_i24_034_pop29177_0,
    input wire [31:0] in_i24_034_pop29177_1,
    input wire [31:0] in_j28_033_pop58186_0,
    input wire [31:0] in_j28_033_pop58186_1,
    input wire [31:0] in_lim_ext77_pop49163_0,
    input wire [31:0] in_lim_ext77_pop49163_1,
    input wire [31:0] in_lim_ext78_pop30180_0,
    input wire [31:0] in_lim_ext78_pop30180_1,
    input wire [31:0] in_lim_ext79_pop59187_0,
    input wire [31:0] in_lim_ext79_pop59187_1,
    input wire [0:0] in_notcmp22185_0,
    input wire [0:0] in_notcmp22185_1,
    input wire [0:0] in_notcmp27102_pop61189_0,
    input wire [0:0] in_notcmp27102_pop61189_1,
    input wire [0:0] in_notcmp27174_0,
    input wire [0:0] in_notcmp27174_1,
    input wire [31:0] in_reorder_limiter_enter132_0,
    input wire [31:0] in_reorder_limiter_enter132_1,
    input wire [31:0] in_reorder_limiter_enter91_pop31183_0,
    input wire [31:0] in_reorder_limiter_enter91_pop31183_1,
    input wire [31:0] in_reorder_limiter_enter92_pop60188_0,
    input wire [31:0] in_reorder_limiter_enter92_pop60188_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked23184,
    output wire [32:0] out_fpga_indvars_iv14_pop28171,
    output wire [31:0] out_i24_034_pop29104_pop62190,
    output wire [31:0] out_i24_034_pop29177,
    output wire [31:0] out_j28_033_pop58186,
    output wire [31:0] out_lim_ext77_pop49163,
    output wire [31:0] out_lim_ext78_pop30180,
    output wire [31:0] out_lim_ext79_pop59187,
    output wire [0:0] out_notcmp22185,
    output wire [0:0] out_notcmp27102_pop61189,
    output wire [0:0] out_notcmp27174,
    output wire [31:0] out_reorder_limiter_enter132,
    output wire [31:0] out_reorder_limiter_enter91_pop31183,
    output wire [31:0] out_reorder_limiter_enter92_pop60188,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked23184_mux_s;
    reg [0:0] forked23184_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] fpga_indvars_iv14_pop28171_mux_s;
    reg [32:0] fpga_indvars_iv14_pop28171_mux_q;
    wire [0:0] i24_034_pop29104_pop62190_mux_s;
    reg [31:0] i24_034_pop29104_pop62190_mux_q;
    wire [0:0] i24_034_pop29177_mux_s;
    reg [31:0] i24_034_pop29177_mux_q;
    wire [0:0] j28_033_pop58186_mux_s;
    reg [31:0] j28_033_pop58186_mux_q;
    wire [0:0] lim_ext77_pop49163_mux_s;
    reg [31:0] lim_ext77_pop49163_mux_q;
    wire [0:0] lim_ext78_pop30180_mux_s;
    reg [31:0] lim_ext78_pop30180_mux_q;
    wire [0:0] lim_ext79_pop59187_mux_s;
    reg [31:0] lim_ext79_pop59187_mux_q;
    wire [0:0] notcmp22185_mux_s;
    reg [0:0] notcmp22185_mux_q;
    wire [0:0] notcmp27102_pop61189_mux_s;
    reg [0:0] notcmp27102_pop61189_mux_q;
    wire [0:0] notcmp27174_mux_s;
    reg [0:0] notcmp27174_mux_q;
    wire [0:0] reorder_limiter_enter132_mux_s;
    reg [31:0] reorder_limiter_enter132_mux_q;
    wire [0:0] reorder_limiter_enter91_pop31183_mux_s;
    reg [31:0] reorder_limiter_enter91_pop31183_mux_q;
    wire [0:0] reorder_limiter_enter92_pop60188_mux_s;
    reg [31:0] reorder_limiter_enter92_pop60188_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

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

    // out_forked(GPOUT,47)
    assign out_forked = forked_mux_q;

    // forked23184_mux(MUX,2)
    assign forked23184_mux_s = in_valid_in_0;
    always @(forked23184_mux_s or in_forked23184_1 or in_forked23184_0)
    begin
        unique case (forked23184_mux_s)
            1'b0 : forked23184_mux_q = in_forked23184_1;
            1'b1 : forked23184_mux_q = in_forked23184_0;
            default : forked23184_mux_q = 1'b0;
        endcase
    end

    // out_forked23184(GPOUT,48)
    assign out_forked23184 = forked23184_mux_q;

    // fpga_indvars_iv14_pop28171_mux(MUX,4)
    assign fpga_indvars_iv14_pop28171_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv14_pop28171_mux_s or in_fpga_indvars_iv14_pop28171_1 or in_fpga_indvars_iv14_pop28171_0)
    begin
        unique case (fpga_indvars_iv14_pop28171_mux_s)
            1'b0 : fpga_indvars_iv14_pop28171_mux_q = in_fpga_indvars_iv14_pop28171_1;
            1'b1 : fpga_indvars_iv14_pop28171_mux_q = in_fpga_indvars_iv14_pop28171_0;
            default : fpga_indvars_iv14_pop28171_mux_q = 33'b0;
        endcase
    end

    // out_fpga_indvars_iv14_pop28171(GPOUT,49)
    assign out_fpga_indvars_iv14_pop28171 = fpga_indvars_iv14_pop28171_mux_q;

    // i24_034_pop29104_pop62190_mux(MUX,5)
    assign i24_034_pop29104_pop62190_mux_s = in_valid_in_0;
    always @(i24_034_pop29104_pop62190_mux_s or in_i24_034_pop29104_pop62190_1 or in_i24_034_pop29104_pop62190_0)
    begin
        unique case (i24_034_pop29104_pop62190_mux_s)
            1'b0 : i24_034_pop29104_pop62190_mux_q = in_i24_034_pop29104_pop62190_1;
            1'b1 : i24_034_pop29104_pop62190_mux_q = in_i24_034_pop29104_pop62190_0;
            default : i24_034_pop29104_pop62190_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop29104_pop62190(GPOUT,50)
    assign out_i24_034_pop29104_pop62190 = i24_034_pop29104_pop62190_mux_q;

    // i24_034_pop29177_mux(MUX,6)
    assign i24_034_pop29177_mux_s = in_valid_in_0;
    always @(i24_034_pop29177_mux_s or in_i24_034_pop29177_1 or in_i24_034_pop29177_0)
    begin
        unique case (i24_034_pop29177_mux_s)
            1'b0 : i24_034_pop29177_mux_q = in_i24_034_pop29177_1;
            1'b1 : i24_034_pop29177_mux_q = in_i24_034_pop29177_0;
            default : i24_034_pop29177_mux_q = 32'b0;
        endcase
    end

    // out_i24_034_pop29177(GPOUT,51)
    assign out_i24_034_pop29177 = i24_034_pop29177_mux_q;

    // j28_033_pop58186_mux(MUX,40)
    assign j28_033_pop58186_mux_s = in_valid_in_0;
    always @(j28_033_pop58186_mux_s or in_j28_033_pop58186_1 or in_j28_033_pop58186_0)
    begin
        unique case (j28_033_pop58186_mux_s)
            1'b0 : j28_033_pop58186_mux_q = in_j28_033_pop58186_1;
            1'b1 : j28_033_pop58186_mux_q = in_j28_033_pop58186_0;
            default : j28_033_pop58186_mux_q = 32'b0;
        endcase
    end

    // out_j28_033_pop58186(GPOUT,52)
    assign out_j28_033_pop58186 = j28_033_pop58186_mux_q;

    // lim_ext77_pop49163_mux(MUX,41)
    assign lim_ext77_pop49163_mux_s = in_valid_in_0;
    always @(lim_ext77_pop49163_mux_s or in_lim_ext77_pop49163_1 or in_lim_ext77_pop49163_0)
    begin
        unique case (lim_ext77_pop49163_mux_s)
            1'b0 : lim_ext77_pop49163_mux_q = in_lim_ext77_pop49163_1;
            1'b1 : lim_ext77_pop49163_mux_q = in_lim_ext77_pop49163_0;
            default : lim_ext77_pop49163_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext77_pop49163(GPOUT,53)
    assign out_lim_ext77_pop49163 = lim_ext77_pop49163_mux_q;

    // lim_ext78_pop30180_mux(MUX,42)
    assign lim_ext78_pop30180_mux_s = in_valid_in_0;
    always @(lim_ext78_pop30180_mux_s or in_lim_ext78_pop30180_1 or in_lim_ext78_pop30180_0)
    begin
        unique case (lim_ext78_pop30180_mux_s)
            1'b0 : lim_ext78_pop30180_mux_q = in_lim_ext78_pop30180_1;
            1'b1 : lim_ext78_pop30180_mux_q = in_lim_ext78_pop30180_0;
            default : lim_ext78_pop30180_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext78_pop30180(GPOUT,54)
    assign out_lim_ext78_pop30180 = lim_ext78_pop30180_mux_q;

    // lim_ext79_pop59187_mux(MUX,43)
    assign lim_ext79_pop59187_mux_s = in_valid_in_0;
    always @(lim_ext79_pop59187_mux_s or in_lim_ext79_pop59187_1 or in_lim_ext79_pop59187_0)
    begin
        unique case (lim_ext79_pop59187_mux_s)
            1'b0 : lim_ext79_pop59187_mux_q = in_lim_ext79_pop59187_1;
            1'b1 : lim_ext79_pop59187_mux_q = in_lim_ext79_pop59187_0;
            default : lim_ext79_pop59187_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext79_pop59187(GPOUT,55)
    assign out_lim_ext79_pop59187 = lim_ext79_pop59187_mux_q;

    // notcmp22185_mux(MUX,44)
    assign notcmp22185_mux_s = in_valid_in_0;
    always @(notcmp22185_mux_s or in_notcmp22185_1 or in_notcmp22185_0)
    begin
        unique case (notcmp22185_mux_s)
            1'b0 : notcmp22185_mux_q = in_notcmp22185_1;
            1'b1 : notcmp22185_mux_q = in_notcmp22185_0;
            default : notcmp22185_mux_q = 1'b0;
        endcase
    end

    // out_notcmp22185(GPOUT,56)
    assign out_notcmp22185 = notcmp22185_mux_q;

    // notcmp27102_pop61189_mux(MUX,45)
    assign notcmp27102_pop61189_mux_s = in_valid_in_0;
    always @(notcmp27102_pop61189_mux_s or in_notcmp27102_pop61189_1 or in_notcmp27102_pop61189_0)
    begin
        unique case (notcmp27102_pop61189_mux_s)
            1'b0 : notcmp27102_pop61189_mux_q = in_notcmp27102_pop61189_1;
            1'b1 : notcmp27102_pop61189_mux_q = in_notcmp27102_pop61189_0;
            default : notcmp27102_pop61189_mux_q = 1'b0;
        endcase
    end

    // out_notcmp27102_pop61189(GPOUT,57)
    assign out_notcmp27102_pop61189 = notcmp27102_pop61189_mux_q;

    // notcmp27174_mux(MUX,46)
    assign notcmp27174_mux_s = in_valid_in_0;
    always @(notcmp27174_mux_s or in_notcmp27174_1 or in_notcmp27174_0)
    begin
        unique case (notcmp27174_mux_s)
            1'b0 : notcmp27174_mux_q = in_notcmp27174_1;
            1'b1 : notcmp27174_mux_q = in_notcmp27174_0;
            default : notcmp27174_mux_q = 1'b0;
        endcase
    end

    // out_notcmp27174(GPOUT,58)
    assign out_notcmp27174 = notcmp27174_mux_q;

    // reorder_limiter_enter132_mux(MUX,65)
    assign reorder_limiter_enter132_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter132_mux_s or in_reorder_limiter_enter132_1 or in_reorder_limiter_enter132_0)
    begin
        unique case (reorder_limiter_enter132_mux_s)
            1'b0 : reorder_limiter_enter132_mux_q = in_reorder_limiter_enter132_1;
            1'b1 : reorder_limiter_enter132_mux_q = in_reorder_limiter_enter132_0;
            default : reorder_limiter_enter132_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter132(GPOUT,59)
    assign out_reorder_limiter_enter132 = reorder_limiter_enter132_mux_q;

    // reorder_limiter_enter91_pop31183_mux(MUX,66)
    assign reorder_limiter_enter91_pop31183_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter91_pop31183_mux_s or in_reorder_limiter_enter91_pop31183_1 or in_reorder_limiter_enter91_pop31183_0)
    begin
        unique case (reorder_limiter_enter91_pop31183_mux_s)
            1'b0 : reorder_limiter_enter91_pop31183_mux_q = in_reorder_limiter_enter91_pop31183_1;
            1'b1 : reorder_limiter_enter91_pop31183_mux_q = in_reorder_limiter_enter91_pop31183_0;
            default : reorder_limiter_enter91_pop31183_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter91_pop31183(GPOUT,60)
    assign out_reorder_limiter_enter91_pop31183 = reorder_limiter_enter91_pop31183_mux_q;

    // reorder_limiter_enter92_pop60188_mux(MUX,67)
    assign reorder_limiter_enter92_pop60188_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter92_pop60188_mux_s or in_reorder_limiter_enter92_pop60188_1 or in_reorder_limiter_enter92_pop60188_0)
    begin
        unique case (reorder_limiter_enter92_pop60188_mux_s)
            1'b0 : reorder_limiter_enter92_pop60188_mux_q = in_reorder_limiter_enter92_pop60188_1;
            1'b1 : reorder_limiter_enter92_pop60188_mux_q = in_reorder_limiter_enter92_pop60188_0;
            default : reorder_limiter_enter92_pop60188_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter92_pop60188(GPOUT,61)
    assign out_reorder_limiter_enter92_pop60188 = reorder_limiter_enter92_pop60188_mux_q;

    // valid_or(LOGICAL,70)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,68)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,62)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,69)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,63)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,64)
    assign out_valid_out = valid_or_q;

endmodule
