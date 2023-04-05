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

// SystemVerilog created from bb_triangular_B2_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B2_stall_region (
    input wire [0:0] in_wgl_10_enter_exit_valid_in,
    input wire [0:0] in_wgl_10_enter_exit_stall_in,
    output wire [0:0] out_wgl_10_enter_exit_valid_out,
    output wire [0:0] out_wgl_10_enter_exit_stall_out,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe72,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_c0_exe72,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_017_q;
    wire [31:0] c_i32_119_q;
    wire [31:0] c_i32_218_q;
    wire [32:0] c_i33_120_q;
    wire [33:0] i_cmp2237_triangular1_a;
    wire [33:0] i_cmp2237_triangular1_b;
    logic [33:0] i_cmp2237_triangular1_o;
    wire [0:0] i_cmp2237_triangular1_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_valid_out;
    wire [0:0] i_smin17_triangular9_s;
    reg [31:0] i_smin17_triangular9_q;
    wire [32:0] i_unnamed_triangular10_a;
    wire [32:0] i_unnamed_triangular10_b;
    logic [32:0] i_unnamed_triangular10_o;
    wire [32:0] i_unnamed_triangular10_q;
    wire [32:0] i_unnamed_triangular11_vt_join_q;
    wire [31:0] i_unnamed_triangular11_vt_select_31_b;
    wire [33:0] i_unnamed_triangular12_a;
    wire [33:0] i_unnamed_triangular12_b;
    logic [33:0] i_unnamed_triangular12_o;
    wire [33:0] i_unnamed_triangular12_q;
    wire [32:0] i_unnamed_triangular4_a;
    wire [32:0] i_unnamed_triangular4_b;
    logic [32:0] i_unnamed_triangular4_o;
    wire [32:0] i_unnamed_triangular4_q;
    wire [32:0] i_unnamed_triangular6_a;
    wire [32:0] i_unnamed_triangular6_b;
    logic [32:0] i_unnamed_triangular6_o;
    wire [32:0] i_unnamed_triangular6_q;
    wire [31:0] bgTrunc_i_unnamed_triangular10_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular12_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular4_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular6_sel_x_b;
    wire [32:0] i_unnamed_triangular11_sel_x_b;
    wire [0:0] i_unnamed_triangular7_cmp_sign_q;
    reg [31:0] redist0_bgTrunc_i_unnamed_triangular6_sel_x_b_1_0_q;
    reg [31:0] redist1_stall_entry_o4_1_0_q;
    reg [31:0] redist2_stall_entry_o4_2_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and2;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and3;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_V0;
    reg [0:0] SE_i_smin17_triangular9_R_v_0;
    wire [0:0] SE_i_smin17_triangular9_v_s_0;
    wire [0:0] SE_i_smin17_triangular9_s_tv_0;
    wire [0:0] SE_i_smin17_triangular9_backEN;
    wire [0:0] SE_i_smin17_triangular9_backStall;
    wire [0:0] SE_i_smin17_triangular9_V0;
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
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_1;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V2;
    reg [0:0] SE_redist2_stall_entry_o4_2_0_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o4_2_0_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o4_2_0_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o4_2_0_backEN;
    wire [0:0] SE_redist2_stall_entry_o4_2_0_backStall;
    wire [0:0] SE_redist2_stall_entry_o4_2_0_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_V0;


    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0(BITJOIN,86)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_q = i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0(BITSELECT,87)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_q[31:0]);

    // c_i32_017(CONSTANT,7)
    assign c_i32_017_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp2237_triangular1(COMPARE,15)@2
    assign i_cmp2237_triangular1_a = $unsigned({{2{c_i32_017_q[31]}}, c_i32_017_q});
    assign i_cmp2237_triangular1_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_b});
    assign i_cmp2237_triangular1_o = $unsigned($signed(i_cmp2237_triangular1_a) - $signed(i_cmp2237_triangular1_b));
    assign i_cmp2237_triangular1_c[0] = i_cmp2237_triangular1_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13(BLACKBOX,19)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i1_unnamed_5_triangular0 thei_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_cmp2237_triangular1_c),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0(STALLENABLE,108)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_wireValid = i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_n4634_triangular0(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    triangular_i_llvm_fpga_ffwd_dest_i32_n4634_0 thei_llvm_fpga_ffwd_dest_i32_n4634_triangular0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_backStall),
        .in_valid_in(SE_redist1_stall_entry_o4_1_0_V1),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_stall_entry_o4_2_0(STALLENABLE,134)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o4_2_0_V0 = SE_redist2_stall_entry_o4_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o4_2_0_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall & SE_redist2_stall_entry_o4_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o4_2_0_backEN = ~ (SE_redist2_stall_entry_o4_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o4_2_0_v_s_0 = SE_redist2_stall_entry_o4_2_0_backEN & SE_redist1_stall_entry_o4_1_0_V0;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o4_2_0_backStall = ~ (SE_redist2_stall_entry_o4_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o4_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o4_2_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o4_2_0_R_v_0 <= SE_redist2_stall_entry_o4_2_0_R_v_0 & SE_redist2_stall_entry_o4_2_0_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o4_2_0_R_v_0 <= SE_redist2_stall_entry_o4_2_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg(STALLENABLE,171)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14(STALLENABLE,112)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_valid_out;

    // c_i32_218(CONSTANT,9)
    assign c_i32_218_q = $unsigned(32'b11111111111111111111111111111110);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_q = i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_q[31:0]);

    // i_unnamed_triangular4(ADD,30)@1
    assign i_unnamed_triangular4_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_b};
    assign i_unnamed_triangular4_b = {1'b0, c_i32_218_q};
    assign i_unnamed_triangular4_o = $unsigned(i_unnamed_triangular4_a) + $unsigned(i_unnamed_triangular4_b);
    assign i_unnamed_triangular4_q = i_unnamed_triangular4_o[32:0];

    // bgTrunc_i_unnamed_triangular4_sel_x(BITSELECT,58)@1
    assign bgTrunc_i_unnamed_triangular4_sel_x_b = i_unnamed_triangular4_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_6_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_triangular4_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3(STALLENABLE,106)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_wireValid = i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_n4631_triangular3(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_i_llvm_fpga_ffwd_dest_i32_n4631_0 thei_llvm_fpga_ffwd_dest_i32_n4631_triangular3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_120(CONSTANT,10)
    assign c_i33_120_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_119(CONSTANT,8)
    assign c_i32_119_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_q = i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_q[31:0]);

    // i_unnamed_triangular6(ADD,31)@1
    assign i_unnamed_triangular6_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_b};
    assign i_unnamed_triangular6_b = {1'b0, c_i32_119_q};
    assign i_unnamed_triangular6_o = $unsigned(i_unnamed_triangular6_a) + $unsigned(i_unnamed_triangular6_b);
    assign i_unnamed_triangular6_q = i_unnamed_triangular6_o[32:0];

    // bgTrunc_i_unnamed_triangular6_sel_x(BITSELECT,59)@1
    assign bgTrunc_i_unnamed_triangular6_sel_x_b = i_unnamed_triangular6_q[31:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_triangular7_cmp_sign(LOGICAL,71)@1
    assign i_unnamed_triangular7_cmp_sign_q = $unsigned(bgTrunc_i_unnamed_triangular6_sel_x_b[31:31]);

    // i_smin17_triangular9(MUX,23)@1 + 1
    assign i_smin17_triangular9_s = i_unnamed_triangular7_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smin17_triangular9_q <= 32'b0;
        end
        else if (SE_i_smin17_triangular9_backEN == 1'b1)
        begin
            unique case (i_smin17_triangular9_s)
                1'b0 : i_smin17_triangular9_q <= c_i32_017_q;
                1'b1 : i_smin17_triangular9_q <= bgTrunc_i_unnamed_triangular6_sel_x_b;
                default : i_smin17_triangular9_q <= 32'b0;
            endcase
        end
    end

    // redist0_bgTrunc_i_unnamed_triangular6_sel_x_b_1_0(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_unnamed_triangular6_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_smin17_triangular9_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_unnamed_triangular6_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_unnamed_triangular6_sel_x_b);
        end
    end

    // i_unnamed_triangular10(SUB,24)@2
    assign i_unnamed_triangular10_a = {1'b0, redist0_bgTrunc_i_unnamed_triangular6_sel_x_b_1_0_q};
    assign i_unnamed_triangular10_b = {1'b0, i_smin17_triangular9_q};
    assign i_unnamed_triangular10_o = $unsigned(i_unnamed_triangular10_a) - $unsigned(i_unnamed_triangular10_b);
    assign i_unnamed_triangular10_q = i_unnamed_triangular10_o[32:0];

    // bgTrunc_i_unnamed_triangular10_sel_x(BITSELECT,56)@2
    assign bgTrunc_i_unnamed_triangular10_sel_x_b = $unsigned(i_unnamed_triangular10_q[31:0]);

    // i_unnamed_triangular11_sel_x(BITSELECT,65)@2
    assign i_unnamed_triangular11_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular10_sel_x_b[31:0]};

    // i_unnamed_triangular11_vt_select_31(BITSELECT,28)@2
    assign i_unnamed_triangular11_vt_select_31_b = i_unnamed_triangular11_sel_x_b[31:0];

    // i_unnamed_triangular11_vt_join(BITJOIN,27)@2
    assign i_unnamed_triangular11_vt_join_q = {GND_q, i_unnamed_triangular11_vt_select_31_b};

    // i_unnamed_triangular12(ADD,29)@2
    assign i_unnamed_triangular12_a = {1'b0, i_unnamed_triangular11_vt_join_q};
    assign i_unnamed_triangular12_b = {1'b0, c_i33_120_q};
    assign i_unnamed_triangular12_o = $unsigned(i_unnamed_triangular12_a) + $unsigned(i_unnamed_triangular12_b);
    assign i_unnamed_triangular12_q = i_unnamed_triangular12_o[33:0];

    // bgTrunc_i_unnamed_triangular12_sel_x(BITSELECT,57)@2
    assign bgTrunc_i_unnamed_triangular12_sel_x_b = i_unnamed_triangular12_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i33_unnamed_7_triangular0 thei_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bgTrunc_i_unnamed_triangular12_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall),
        .in_valid_in(SE_i_smin17_triangular9_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_smin17_triangular9(STALLENABLE,117)
    // Valid signal propagation
    assign SE_i_smin17_triangular9_V0 = SE_i_smin17_triangular9_R_v_0;
    // Stall signal propagation
    assign SE_i_smin17_triangular9_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_stall_out & SE_i_smin17_triangular9_R_v_0;
    // Backward Enable generation
    assign SE_i_smin17_triangular9_backEN = ~ (SE_i_smin17_triangular9_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_smin17_triangular9_v_s_0 = SE_i_smin17_triangular9_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_V0;
    // Backward Stall generation
    assign SE_i_smin17_triangular9_backStall = ~ (SE_i_smin17_triangular9_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_smin17_triangular9_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_smin17_triangular9_backEN == 1'b0)
            begin
                SE_i_smin17_triangular9_R_v_0 <= SE_i_smin17_triangular9_R_v_0 & SE_i_smin17_triangular9_s_tv_0;
            end
            else
            begin
                SE_i_smin17_triangular9_R_v_0 <= SE_i_smin17_triangular9_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5(STALLENABLE,104)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_backStall = SE_i_smin17_triangular9_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_wireValid = i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_n4630_triangular5(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_i_llvm_fpga_ffwd_dest_i32_n4630_0 thei_llvm_fpga_ffwd_dest_i32_n4630_triangular5 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,124)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_n4630_triangular5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_n4631_triangular3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_redist1_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // SE_redist1_stall_entry_o4_1_0(STALLENABLE,133)
    // Valid signal propagation
    assign SE_redist1_stall_entry_o4_1_0_V0 = SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_V1 = SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_V2 = SE_redist1_stall_entry_o4_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_stall_entry_o4_1_0_s_tv_0 = SE_redist2_stall_entry_o4_2_0_backStall & SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_1 = i_llvm_fpga_ffwd_dest_i32_n4634_triangular0_out_stall_out & SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_2 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_stall & SE_redist1_stall_entry_o4_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_stall_entry_o4_1_0_or0 = SE_redist1_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist1_stall_entry_o4_1_0_or1 = SE_redist1_stall_entry_o4_1_0_s_tv_1 | SE_redist1_stall_entry_o4_1_0_or0;
    assign SE_redist1_stall_entry_o4_1_0_backEN = ~ (SE_redist1_stall_entry_o4_1_0_s_tv_2 | SE_redist1_stall_entry_o4_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_stall_entry_o4_1_0_v_s_0 = SE_redist1_stall_entry_o4_1_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_redist1_stall_entry_o4_1_0_backStall = ~ (SE_redist1_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_1 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_R_v_0 & SE_redist1_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_R_v_1 & SE_redist1_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_2 <= SE_redist1_stall_entry_o4_1_0_R_v_2 & SE_redist1_stall_entry_o4_1_0_s_tv_2;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_2 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16(STALLENABLE,116)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and0 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_valid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_valid_out & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_valid_out & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and1;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and3 = SE_redist2_stall_entry_o4_2_0_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and2;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_1_reg_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_and3;

    // bubble_join_stall_entry(BITJOIN,96)
    assign bubble_join_stall_entry_q = in_c0_exe72;

    // bubble_select_stall_entry(BITSELECT,97)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // redist1_stall_entry_o4_1_0(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_o_data@2
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_wgl_10_enter_exit_stall_out@20000000
    // out out_wgl_10_enter_exit_valid_out@20000000
    triangular_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16 (
        .in_i_data(redist1_stall_entry_o4_1_0_q),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_backStall),
        .in_i_valid(SE_redist1_stall_entry_o4_1_0_V2),
        .in_wgl_10_enter_exit_stall_in(in_wgl_10_enter_exit_stall_in),
        .in_wgl_10_enter_exit_valid_in(in_wgl_10_enter_exit_valid_in),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_valid),
        .out_wgl_10_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_stall_out),
        .out_wgl_10_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_wgl_10_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_valid_out;
    assign out_wgl_10_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_wgl_10_enter_exit_stall_out;

    // regfree_osync(GPOUT,50)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_triangular5_triangular13_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,54)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular6_triangular14_out_intel_reserved_ffwd_4_0;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16(BITJOIN,92)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16(BITSELECT,93)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_q[31:0]);

    // redist2_stall_entry_o4_2_0(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o4_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_stall_entry_o4_2_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o4_2_0_q <= $unsigned(redist1_stall_entry_o4_1_0_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,62)@2
    assign out_c0_exe72 = redist2_stall_entry_o4_2_0_q;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_b;
    assign out_valid_out = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular16_V0;

    // dupName_1_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i33_unnamed_triangular7_triangular15_out_intel_reserved_ffwd_5_0;

endmodule
