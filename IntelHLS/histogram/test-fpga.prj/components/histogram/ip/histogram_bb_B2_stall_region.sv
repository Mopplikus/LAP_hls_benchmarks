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

// SystemVerilog created from bb_histogram_B2_stall_region
// Created for function/kernel histogram
// SystemVerilog created on Tue Apr  4 14:08:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_bb_B2_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_114_q;
    wire [31:0] c_i32_115_q;
    wire [32:0] c_i33_116_q;
    wire [33:0] i_cmp921_histogram1_a;
    wire [33:0] i_cmp921_histogram1_b;
    logic [33:0] i_cmp921_histogram1_o;
    wire [0:0] i_cmp921_histogram1_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_valid_out;
    wire [0:0] i_smax_histogram7_s;
    reg [31:0] i_smax_histogram7_q;
    wire [33:0] i_unnamed_histogram10_a;
    wire [33:0] i_unnamed_histogram10_b;
    logic [33:0] i_unnamed_histogram10_o;
    wire [33:0] i_unnamed_histogram10_q;
    wire [33:0] i_unnamed_histogram4_a;
    wire [33:0] i_unnamed_histogram4_b;
    logic [33:0] i_unnamed_histogram4_o;
    wire [0:0] i_unnamed_histogram4_c;
    wire [32:0] i_unnamed_histogram8_a;
    wire [32:0] i_unnamed_histogram8_b;
    logic [32:0] i_unnamed_histogram8_o;
    wire [32:0] i_unnamed_histogram8_q;
    wire [32:0] i_unnamed_histogram9_vt_join_q;
    wire [31:0] i_unnamed_histogram9_vt_select_31_b;
    wire [32:0] bgTrunc_i_unnamed_histogram10_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_histogram8_sel_x_b;
    wire [31:0] c_i32_013_recast_x_q;
    wire [32:0] i_unnamed_histogram9_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_V0;
    reg [0:0] SE_i_unnamed_histogram4_R_v_0;
    wire [0:0] SE_i_unnamed_histogram4_v_s_0;
    wire [0:0] SE_i_unnamed_histogram4_s_tv_0;
    wire [0:0] SE_i_unnamed_histogram4_backEN;
    wire [0:0] SE_i_unnamed_histogram4_backStall;
    wire [0:0] SE_i_unnamed_histogram4_V0;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_V0;
    reg [0:0] bubble_out_stall_entry_3_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_3_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_3_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_3_reg_backEN;
    wire [0:0] bubble_out_stall_entry_3_reg_backStall;
    wire [0:0] bubble_out_stall_entry_3_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg(STALLENABLE,111)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_and0;

    // c_i33_116(CONSTANT,7)
    assign c_i33_116_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_115(CONSTANT,6)
    assign c_i32_115_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6(BITJOIN,54)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_q = i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6(BITSELECT,55)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_q[31:0]);

    // c_i32_114(CONSTANT,5)
    assign c_i32_114_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_q = i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_q[31:0]);

    // i_unnamed_histogram4(COMPARE,18)@1 + 1
    assign i_unnamed_histogram4_a = $unsigned({{2{c_i32_114_q[31]}}, c_i32_114_q});
    assign i_unnamed_histogram4_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_histogram4_o <= 34'b0;
        end
        else if (SE_i_unnamed_histogram4_backEN == 1'b1)
        begin
            i_unnamed_histogram4_o <= $unsigned($signed(i_unnamed_histogram4_a) - $signed(i_unnamed_histogram4_b));
        end
    end
    assign i_unnamed_histogram4_c[0] = i_unnamed_histogram4_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_histogram7(MUX,16)@2
    assign i_smax_histogram7_s = i_unnamed_histogram4_c;
    always @(i_smax_histogram7_s or c_i32_114_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_b)
    begin
        unique case (i_smax_histogram7_s)
            1'b0 : i_smax_histogram7_q = c_i32_114_q;
            1'b1 : i_smax_histogram7_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_b;
            default : i_smax_histogram7_q = 32'b0;
        endcase
    end

    // i_unnamed_histogram8(ADD,19)@2
    assign i_unnamed_histogram8_a = {1'b0, i_smax_histogram7_q};
    assign i_unnamed_histogram8_b = {1'b0, c_i32_115_q};
    assign i_unnamed_histogram8_o = $unsigned(i_unnamed_histogram8_a) + $unsigned(i_unnamed_histogram8_b);
    assign i_unnamed_histogram8_q = i_unnamed_histogram8_o[32:0];

    // bgTrunc_i_unnamed_histogram8_sel_x(BITSELECT,44)@2
    assign bgTrunc_i_unnamed_histogram8_sel_x_b = i_unnamed_histogram8_q[31:0];

    // i_unnamed_histogram9_sel_x(BITSELECT,49)@2
    assign i_unnamed_histogram9_sel_x_b = {1'b0, bgTrunc_i_unnamed_histogram8_sel_x_b[31:0]};

    // i_unnamed_histogram9_vt_select_31(BITSELECT,23)@2
    assign i_unnamed_histogram9_vt_select_31_b = i_unnamed_histogram9_sel_x_b[31:0];

    // i_unnamed_histogram9_vt_join(BITJOIN,22)@2
    assign i_unnamed_histogram9_vt_join_q = {GND_q, i_unnamed_histogram9_vt_select_31_b};

    // i_unnamed_histogram10(ADD,17)@2
    assign i_unnamed_histogram10_a = {1'b0, i_unnamed_histogram9_vt_join_q};
    assign i_unnamed_histogram10_b = {1'b0, c_i33_116_q};
    assign i_unnamed_histogram10_o = $unsigned(i_unnamed_histogram10_a) + $unsigned(i_unnamed_histogram10_b);
    assign i_unnamed_histogram10_q = i_unnamed_histogram10_o[33:0];

    // bgTrunc_i_unnamed_histogram10_sel_x(BITSELECT,43)@2
    assign bgTrunc_i_unnamed_histogram10_sel_x_b = i_unnamed_histogram10_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12(BLACKBOX,15)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    histogram_i_llvm_fpga_ffwd_source_i33_unnamed_6_histogram0 thei_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_histogram10_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_backStall = SE_i_unnamed_histogram4_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_wireValid = i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_valid_out;

    // SE_i_unnamed_histogram4(STALLENABLE,80)
    // Valid signal propagation
    assign SE_i_unnamed_histogram4_V0 = SE_i_unnamed_histogram4_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_histogram4_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_backStall & SE_i_unnamed_histogram4_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_histogram4_backEN = ~ (SE_i_unnamed_histogram4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_histogram4_v_s_0 = SE_i_unnamed_histogram4_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_V0;
    // Backward Stall generation
    assign SE_i_unnamed_histogram4_backStall = ~ (SE_i_unnamed_histogram4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_histogram4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_histogram4_backEN == 1'b0)
            begin
                SE_i_unnamed_histogram4_R_v_0 <= SE_i_unnamed_histogram4_R_v_0 & SE_i_unnamed_histogram4_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_histogram4_R_v_0 <= SE_i_unnamed_histogram4_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_and0 = i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_wireValid = SE_i_unnamed_histogram4_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_and0;

    // i_llvm_fpga_ffwd_dest_i32_n2514_histogram6(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    histogram_i_llvm_fpga_ffwd_dest_i32_n2514_0 thei_llvm_fpga_ffwd_dest_i32_n2514_histogram6 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_backStall),
        .in_valid_in(bubble_out_stall_entry_3_reg_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_3_reg(STALLENABLE,112)
    // Valid signal propagation
    assign bubble_out_stall_entry_3_reg_V0 = bubble_out_stall_entry_3_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_3_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_n2514_histogram6_out_stall_out & bubble_out_stall_entry_3_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_3_reg_backEN = ~ (bubble_out_stall_entry_3_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_3_reg_v_s_0 = bubble_out_stall_entry_3_reg_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign bubble_out_stall_entry_3_reg_backStall = ~ (bubble_out_stall_entry_3_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_3_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_3_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_3_reg_R_v_0 <= bubble_out_stall_entry_3_reg_R_v_0 & bubble_out_stall_entry_3_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_3_reg_R_v_0 <= bubble_out_stall_entry_3_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n2515_histogram3(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    histogram_i_llvm_fpga_ffwd_dest_i32_n2515_0 thei_llvm_fpga_ffwd_dest_i32_n2515_histogram3 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_n2515_histogram3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (bubble_out_stall_entry_3_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_n2516_histogram0(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    histogram_i_llvm_fpga_ffwd_dest_i32_n2516_0 thei_llvm_fpga_ffwd_dest_i32_n2516_histogram0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_wireValid = i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_q = i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_q[31:0]);

    // c_i32_013_recast_x(CONSTANT,45)
    assign c_i32_013_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp921_histogram1(COMPARE,10)@1
    assign i_cmp921_histogram1_a = $unsigned({{2{c_i32_013_recast_x_q[31]}}, c_i32_013_recast_x_q});
    assign i_cmp921_histogram1_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_b});
    assign i_cmp921_histogram1_o = $unsigned($signed(i_cmp921_histogram1_a) - $signed(i_cmp921_histogram1_b));
    assign i_cmp921_histogram1_c[0] = i_cmp921_histogram1_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    histogram_i_llvm_fpga_ffwd_source_i1_unnamed_5_histogram0 thei_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp921_histogram1_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n2516_histogram0_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,37)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_histogram5_histogram11_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,41)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_out_intel_reserved_ffwd_3_0;

    // dupName_0_sync_out_x(GPOUT,48)@2
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_histogram6_histogram12_V0;

endmodule
