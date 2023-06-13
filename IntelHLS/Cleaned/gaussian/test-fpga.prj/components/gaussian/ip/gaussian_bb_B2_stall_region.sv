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

// SystemVerilog created from bb_gaussian_B2_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:43 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B2_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_add44_push172,
    output wire [0:0] out_cmp24528,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add44_push172,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next7_gaussian1_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next9_gaussian3_sel_x_b;
    wire [31:0] c_i32_17_q;
    wire [31:0] c_i32_18_q;
    wire [32:0] i_fpga_indvars_iv_next7_gaussian1_a;
    wire [32:0] i_fpga_indvars_iv_next7_gaussian1_b;
    logic [32:0] i_fpga_indvars_iv_next7_gaussian1_o;
    wire [32:0] i_fpga_indvars_iv_next7_gaussian1_q;
    wire [32:0] i_fpga_indvars_iv_next9_gaussian3_a;
    wire [32:0] i_fpga_indvars_iv_next9_gaussian3_b;
    logic [32:0] i_fpga_indvars_iv_next9_gaussian3_o;
    wire [32:0] i_fpga_indvars_iv_next9_gaussian3_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_valid_out;
    reg [31:0] redist0_stall_entry_o4_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V0;


    // SE_redist0_stall_entry_o4_1_0(STALLENABLE,77)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_1_0_V0 = SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall & SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_1_0_backEN = ~ (SE_redist0_stall_entry_o4_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_1_0_v_s_0 = SE_redist0_stall_entry_o4_1_0_backEN & SE_stall_entry_V3;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_1_0_backStall = ~ (SE_redist0_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 & SE_redist0_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // c_i32_17(CONSTANT,9)
    assign c_i32_17_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_q[31:0]);

    // i_fpga_indvars_iv_next7_gaussian1(ADD,13)@1
    assign i_fpga_indvars_iv_next7_gaussian1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_b};
    assign i_fpga_indvars_iv_next7_gaussian1_b = {1'b0, c_i32_17_q};
    assign i_fpga_indvars_iv_next7_gaussian1_o = $unsigned(i_fpga_indvars_iv_next7_gaussian1_a) + $unsigned(i_fpga_indvars_iv_next7_gaussian1_b);
    assign i_fpga_indvars_iv_next7_gaussian1_q = i_fpga_indvars_iv_next7_gaussian1_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next7_gaussian1_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next7_gaussian1_sel_x_b = i_fpga_indvars_iv_next7_gaussian1_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_5_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_fpga_indvars_iv_next7_gaussian1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_wireValid = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_5_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_0000_iv6_replace_phi22_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp24528_0 thei_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv6_replace_phi22_gaussian0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (SE_redist0_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_0000_iv8_replace_phi21_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_wireValid = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and0 = i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_wireValid = SE_redist0_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_and2;

    // c_i32_18(CONSTANT,10)
    assign c_i32_18_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2(BITJOIN,51)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2(BITSELECT,52)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_q[31:0]);

    // i_fpga_indvars_iv_next9_gaussian3(ADD,14)@1
    assign i_fpga_indvars_iv_next9_gaussian3_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_b};
    assign i_fpga_indvars_iv_next9_gaussian3_b = {1'b0, c_i32_18_q};
    assign i_fpga_indvars_iv_next9_gaussian3_o = $unsigned(i_fpga_indvars_iv_next9_gaussian3_a) + $unsigned(i_fpga_indvars_iv_next9_gaussian3_b);
    assign i_fpga_indvars_iv_next9_gaussian3_q = i_fpga_indvars_iv_next9_gaussian3_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next9_gaussian3_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_gaussian3_sel_x_b = i_fpga_indvars_iv_next9_gaussian3_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_6_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_fpga_indvars_iv_next9_gaussian3_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv8_replace_phi21_gaussian2_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian5_out_intel_reserved_ffwd_3_0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_q = i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_q[0:0]);

    // bubble_join_stall_entry(BITJOIN,56)
    assign bubble_join_stall_entry_q = in_add44_push172;

    // bubble_select_stall_entry(BITSELECT,57)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // redist0_stall_entry_o4_1_0(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,5)@1
    assign out_add44_push172 = redist0_stall_entry_o4_1_0_q;
    assign out_cmp24528 = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24528_gaussian6_V0;

    // regfree_osync(GPOUT,33)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian5_gaussian4_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
