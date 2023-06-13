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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_ataxs_c1_enter_atax0
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c1_in_for_body_s_c1_enter_atax0 (
    output wire [0:0] out_c1_exi2_0_tpl,
    output wire [63:0] out_c1_exi2_1_tpl,
    output wire [31:0] out_c1_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [0:0] in_c1_eni2_1_tpl,
    input wire [0:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc23_atax9_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add14_atax8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index88_atax0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index88_atax0_c_i2_01_x_q;
    wire [31:0] c_i32_014_q;
    wire [31:0] c_i32_117_q;
    wire [32:0] i_inc23_atax9_a;
    wire [32:0] i_inc23_atax9_b;
    logic [32:0] i_inc23_atax9_o;
    wire [32:0] i_inc23_atax9_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_valid_out_11;
    wire [32:0] i_mul_add14_atax8_a;
    wire [32:0] i_mul_add14_atax8_b;
    logic [32:0] i_mul_add14_atax8_o;
    wire [32:0] i_mul_add14_atax8_q;
    wire [31:0] i_mul_add14_atax8_vt_join_q;
    wire [29:0] i_mul_add14_atax8_vt_select_31_b;
    wire [31:0] i_unnamed_atax6_vt_join_q;
    wire [29:0] i_unnamed_atax6_vt_select_31_b;
    wire [3:0] i_unnamed_atax7_vt_const_3_q;
    wire [31:0] i_unnamed_atax7_vt_join_q;
    wire [27:0] i_unnamed_atax7_vt_select_31_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [27:0] leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid66_dupName_0_i_unnamed_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_s;
    reg [31:0] leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid74_i_unnamed_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid76_i_unnamed_atax0_shift_x_s;
    reg [31:0] leftShiftStage0_uid76_i_unnamed_atax0_shift_x_q;
    wire [60:0] i_mptr_bitcast_index88_atax0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index88_atax0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index88_atax0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index88_atax0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index88_atax0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index88_atax0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index88_atax0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index88_atax0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index88_atax0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index88_atax0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [59:0] redist1_i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist2_valid_fanout_reg0_q_2_q;
    reg [0:0] redist2_valid_fanout_reg0_q_2_delay_0;
    reg [29:0] redist3_i_mul_add14_atax8_vt_select_31_b_2_q;
    reg [29:0] redist3_i_mul_add14_atax8_vt_select_31_b_2_delay_0;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q;
    reg [0:0] redist5_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [0:0] redist6_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q;
    reg [0:0] redist7_sync_together22_aunroll_x_in_i_valid_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // redist7_sync_together22_aunroll_x_in_i_valid_1(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together22_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together22_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,52)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist2_valid_fanout_reg0_q_2(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist2_valid_fanout_reg0_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist2_valid_fanout_reg0_q_2_q <= redist2_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x(BITSELECT,64)@3
    assign leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_in = redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q[27:0];
    assign leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_b = leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_in[27:0];

    // leftShiftStage0Idx1_uid66_dupName_0_i_unnamed_atax0_shift_x(BITJOIN,65)@3
    assign leftShiftStage0Idx1_uid66_dupName_0_i_unnamed_atax0_shift_x_q = {leftShiftStage0Idx1Rng4_uid65_dupName_0_i_unnamed_atax0_shift_x_b, i_unnamed_atax7_vt_const_3_q};

    // valid_fanout_reg1(REG,53)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,108)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg3(REG,55)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_117(CONSTANT,27)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_atax9(ADD,32)@2
    assign i_inc23_atax9_a = {1'b0, i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out};
    assign i_inc23_atax9_b = {1'b0, c_i32_117_q};
    assign i_inc23_atax9_o = $unsigned(i_inc23_atax9_a) + $unsigned(i_inc23_atax9_b);
    assign i_inc23_atax9_q = i_inc23_atax9_o[32:0];

    // bgTrunc_i_inc23_atax9_sel_x(BITSELECT,6)@2
    assign bgTrunc_i_inc23_atax9_sel_x_b = i_inc23_atax9_q[31:0];

    // redist6_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_push_i32_i_076_push11_atax10(BLACKBOX,35)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i32_i_076_push11_0 thei_llvm_fpga_push_i32_i_076_push11_atax10 (
        .in_c1_ene2(redist6_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q),
        .in_data_in(bgTrunc_i_inc23_atax9_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_feedback_stall_out_11),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // c_i32_014(CONSTANT,26)
    assign c_i32_014_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_076_pop11_atax2(BLACKBOX,34)@2
    // out out_feedback_stall_out_11@20000000
    atax_i_llvm_fpga_pop_i32_i_076_pop11_0 thei_llvm_fpga_pop_i32_i_076_pop11_atax2 (
        .in_data_in(c_i32_014_q),
        .in_dir(redist5_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_076_push11_atax10_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x(MUX,67)@3
    assign leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_s or redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q or leftShiftStage0Idx1_uid66_dupName_0_i_unnamed_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_q = redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_q = leftShiftStage0Idx1_uid66_dupName_0_i_unnamed_atax0_shift_x_q;
            default : leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_atax7_vt_select_31(BITSELECT,49)@3
    assign i_unnamed_atax7_vt_select_31_b = leftShiftStage0_uid68_dupName_0_i_unnamed_atax0_shift_x_q[31:4];

    // i_unnamed_atax7_vt_const_3(CONSTANT,47)
    assign i_unnamed_atax7_vt_const_3_q = $unsigned(4'b0000);

    // i_unnamed_atax7_vt_join(BITJOIN,48)@3
    assign i_unnamed_atax7_vt_join_q = {i_unnamed_atax7_vt_select_31_b, i_unnamed_atax7_vt_const_3_q};

    // leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x(BITSELECT,72)@3
    assign leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_in = redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q[29:0];
    assign leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_b = leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid74_i_unnamed_atax0_shift_x(BITJOIN,73)@3
    assign leftShiftStage0Idx1_uid74_i_unnamed_atax0_shift_x_q = {leftShiftStage0Idx1Rng2_uid73_i_unnamed_atax0_shift_x_b, i_mptr_bitcast_index88_atax0_c_i2_01_x_q};

    // leftShiftStage0_uid76_i_unnamed_atax0_shift_x(MUX,75)@3
    assign leftShiftStage0_uid76_i_unnamed_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid76_i_unnamed_atax0_shift_x_s or redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q or leftShiftStage0Idx1_uid74_i_unnamed_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid76_i_unnamed_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid76_i_unnamed_atax0_shift_x_q = redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid76_i_unnamed_atax0_shift_x_q = leftShiftStage0Idx1_uid74_i_unnamed_atax0_shift_x_q;
            default : leftShiftStage0_uid76_i_unnamed_atax0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_atax6_vt_select_31(BITSELECT,46)@3
    assign i_unnamed_atax6_vt_select_31_b = leftShiftStage0_uid76_i_unnamed_atax0_shift_x_q[31:2];

    // i_unnamed_atax6_vt_join(BITJOIN,45)@3
    assign i_unnamed_atax6_vt_join_q = {i_unnamed_atax6_vt_select_31_b, i_mptr_bitcast_index88_atax0_c_i2_01_x_q};

    // i_mul_add14_atax8(ADD,36)@3
    assign i_mul_add14_atax8_a = {1'b0, i_unnamed_atax6_vt_join_q};
    assign i_mul_add14_atax8_b = {1'b0, i_unnamed_atax7_vt_join_q};
    assign i_mul_add14_atax8_o = $unsigned(i_mul_add14_atax8_a) + $unsigned(i_mul_add14_atax8_b);
    assign i_mul_add14_atax8_q = i_mul_add14_atax8_o[32:0];

    // bgTrunc_i_mul_add14_atax8_sel_x(BITSELECT,7)@3
    assign bgTrunc_i_mul_add14_atax8_sel_x_b = i_mul_add14_atax8_q[31:0];

    // i_mul_add14_atax8_vt_select_31(BITSELECT,39)@3
    assign i_mul_add14_atax8_vt_select_31_b = bgTrunc_i_mul_add14_atax8_sel_x_b[31:2];

    // redist3_i_mul_add14_atax8_vt_select_31_b_2(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul_add14_atax8_vt_select_31_b_2_delay_0 <= '0;
            redist3_i_mul_add14_atax8_vt_select_31_b_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mul_add14_atax8_vt_select_31_b_2_delay_0 <= $unsigned(i_mul_add14_atax8_vt_select_31_b);
            redist3_i_mul_add14_atax8_vt_select_31_b_2_q <= redist3_i_mul_add14_atax8_vt_select_31_b_2_delay_0;
        end
    end

    // i_mptr_bitcast_index88_atax0_c_i2_01_x(CONSTANT,13)
    assign i_mptr_bitcast_index88_atax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mul_add14_atax8_vt_join(BITJOIN,38)@5
    assign i_mul_add14_atax8_vt_join_q = {redist3_i_mul_add14_atax8_vt_select_31_b_2_q, i_mptr_bitcast_index88_atax0_c_i2_01_x_q};

    // i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,98)
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_014_q[29:0];
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,94)@3
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist4_i_llvm_fpga_pop_i32_i_076_pop11_atax2_out_data_out_1_q, i_mptr_bitcast_index88_atax0_c_i2_01_x_q};

    // valid_fanout_reg2(REG,54)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist7_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4(BLACKBOX,33)@3
    atax_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,99)@3
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879416_atax4_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index88_atax0_add_x_p1_of_2(ADD,83)@3 + 1
    assign i_mptr_bitcast_index88_atax0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index88_atax0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index88_atax0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index88_atax0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index88_atax0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index88_atax0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index88_atax0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index88_atax0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q = i_mptr_bitcast_index88_atax0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,97)@4
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,90)@4
    assign i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index88_atax0_add_x_p2_of_2(ADD,84)@4 + 1
    assign i_mptr_bitcast_index88_atax0_add_x_p2_of_2_cin = i_mptr_bitcast_index88_atax0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index88_atax0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index88_atax0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index88_atax0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index88_atax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index88_atax0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index88_atax0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index88_atax0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index88_atax0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index88_atax0_add_x_p2_of_2_q = i_mptr_bitcast_index88_atax0_add_x_p2_of_2_o[5:1];

    // redist1_i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q_1(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index88_atax0_add_x_BitJoin_for_q(BITJOIN,85)@5
    assign i_mptr_bitcast_index88_atax0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index88_atax0_add_x_p2_of_2_q, redist1_i_mptr_bitcast_index88_atax0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index88_atax0_dupName_0_trunc_sel_x(BITSELECT,10)@5
    assign i_mptr_bitcast_index88_atax0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index88_atax0_add_x_BitJoin_for_q_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,21)@5
    assign out_c1_exi2_0_tpl = GND_q;
    assign out_c1_exi2_1_tpl = i_mptr_bitcast_index88_atax0_dupName_0_trunc_sel_x_b;
    assign out_c1_exi2_2_tpl = i_mul_add14_atax8_vt_join_q;
    assign out_o_valid = redist2_valid_fanout_reg0_q_2_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
