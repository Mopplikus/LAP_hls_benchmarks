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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d0
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_i_sfc_logic_s_c0_in_for_body_s_c0_enter723_jacobi_1d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [63:0] out_c0_exi7_3_tpl,
    output wire [63:0] out_c0_exi7_4_tpl,
    output wire [63:0] out_c0_exi7_5_tpl,
    output wire [63:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_jacobi_1d1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_039_q;
    wire [31:0] c_i32_140_q;
    wire [3:0] c_i4_736_q;
    wire [7:0] c_i8_143_q;
    wire [7:0] c_i8_9841_q;
    wire [3:0] i_cleanups_shl54_jacobi_1d5_vt_join_q;
    wire [2:0] i_cleanups_shl54_jacobi_1d5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor56_jacobi_1d4_q;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d30_a;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d30_b;
    logic [8:0] i_fpga_indvars_iv_next_jacobi_1d30_o;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d30_q;
    wire [63:0] i_idxprom_jacobi_1d13_vt_join_q;
    wire [31:0] i_idxprom_jacobi_1d13_vt_select_31_b;
    wire [32:0] i_inc_jacobi_1d20_a;
    wire [32:0] i_inc_jacobi_1d20_b;
    logic [32:0] i_inc_jacobi_1d20_o;
    wire [32:0] i_inc_jacobi_1d20_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_a_13419_jacobi_1d14_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_a_23521_jacobi_1d16_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b3623_jacobi_1d18_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_feedback_stall_out_15;
    wire [3:0] i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_feedback_stall_out_14;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_valid_out_12;
    wire [0:0] i_masked59_jacobi_1d32_q;
    wire [0:0] i_next_cleanups58_jacobi_1d28_s;
    reg [3:0] i_next_cleanups58_jacobi_1d28_q;
    wire [3:0] i_next_initerations49_jacobi_1d8_vt_join_q;
    wire [2:0] i_next_initerations49_jacobi_1d8_vt_select_2_b;
    wire [0:0] i_notcmp46_jacobi_1d25_q;
    wire [0:0] i_or57_jacobi_1d27_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_jacobi_1d30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_jacobi_1d20_sel_x_b;
    wire [64:0] i_arrayidx11_jacobi_1d0_add_x_a;
    wire [64:0] i_arrayidx11_jacobi_1d0_add_x_b;
    logic [64:0] i_arrayidx11_jacobi_1d0_add_x_o;
    wire [64:0] i_arrayidx11_jacobi_1d0_add_x_q;
    wire [1:0] i_arrayidx11_jacobi_1d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx11_jacobi_1d0_narrow_x_b;
    wire [63:0] i_arrayidx11_jacobi_1d0_shift_join_x_q;
    wire [63:0] i_arrayidx11_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx7_jacobi_1d0_add_x_a;
    wire [64:0] i_arrayidx7_jacobi_1d0_add_x_b;
    logic [64:0] i_arrayidx7_jacobi_1d0_add_x_o;
    wire [64:0] i_arrayidx7_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx7_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_jacobi_1d0_add_x_a;
    wire [64:0] i_arrayidx_jacobi_1d0_add_x_b;
    logic [64:0] i_arrayidx_jacobi_1d0_add_x_o;
    wire [64:0] i_arrayidx_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup55_jacobi_1d3_sel_x_b;
    wire [63:0] i_idxprom_jacobi_1d13_sel_x_b;
    wire [0:0] i_last_initeration51_jacobi_1d10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_jacobi_1d23_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid126_i_cleanups_shl54_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_s;
    reg [3:0] leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid132_i_next_initerations49_jacobi_1d0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid134_i_next_initerations49_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_s;
    reg [3:0] rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_q;
    reg [0:0] redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together61_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,140)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist1_sync_together61_aunroll_x_in_i_valid_1(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together61_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together61_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x(BITSELECT,124)@2
    assign leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_in = i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid126_i_cleanups_shl54_jacobi_1d0_shift_x(BITJOIN,125)@2
    assign leftShiftStage0Idx1_uid126_i_cleanups_shl54_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid125_i_cleanups_shl54_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x(MUX,127)@2
    assign leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_s or i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out or leftShiftStage0Idx1_uid126_i_cleanups_shl54_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_q = i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out;
            1'b1 : leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid126_i_cleanups_shl54_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl54_jacobi_1d5_vt_select_3(BITSELECT,17)@2
    assign i_cleanups_shl54_jacobi_1d5_vt_select_3_b = leftShiftStage0_uid128_i_cleanups_shl54_jacobi_1d0_shift_x_q[3:1];

    // i_cleanups_shl54_jacobi_1d5_vt_join(BITJOIN,16)@2
    assign i_cleanups_shl54_jacobi_1d5_vt_join_q = {i_cleanups_shl54_jacobi_1d5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor56_jacobi_1d4(LOGICAL,20)@2
    assign i_first_cleanup_xor56_jacobi_1d4_q = i_first_cleanup55_jacobi_1d3_sel_x_b ^ VCC_q;

    // i_notcmp46_jacobi_1d25(LOGICAL,47)@2
    assign i_notcmp46_jacobi_1d25_q = i_exitcond_jacobi_1d23_cmp_nsign_q ^ VCC_q;

    // i_or57_jacobi_1d27(LOGICAL,48)@2
    assign i_or57_jacobi_1d27_q = i_notcmp46_jacobi_1d25_q | i_first_cleanup_xor56_jacobi_1d4_q;

    // i_next_cleanups58_jacobi_1d28(MUX,43)@2
    assign i_next_cleanups58_jacobi_1d28_s = i_or57_jacobi_1d27_q;
    always @(i_next_cleanups58_jacobi_1d28_s or i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out or i_cleanups_shl54_jacobi_1d5_vt_join_q)
    begin
        unique case (i_next_cleanups58_jacobi_1d28_s)
            1'b0 : i_next_cleanups58_jacobi_1d28_q = i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out;
            1'b1 : i_next_cleanups58_jacobi_1d28_q = i_cleanups_shl54_jacobi_1d5_vt_join_q;
            default : i_next_cleanups58_jacobi_1d28_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29(BLACKBOX,39)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    jacobi_1d_i_llvm_fpga_push_i4_cleanups53_push15_0 thei_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29 (
        .in_data_in(i_next_cleanups58_jacobi_1d28_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_feedback_stall_out_15),
        .in_keep_going50(redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_736(CONSTANT,9)
    assign c_i4_736_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2(BLACKBOX,33)@2
    // out out_feedback_stall_out_15@20000000
    jacobi_1d_i_llvm_fpga_pop_i4_cleanups53_pop15_0 thei_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i4_cleanups53_push15_jacobi_1d29_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup55_jacobi_1d3_sel_x(BITSELECT,94)@2
    assign i_first_cleanup55_jacobi_1d3_sel_x_b = i_llvm_fpga_pop_i4_cleanups53_pop15_jacobi_1d2_out_data_out[0:0];

    // c_i8_143(CONSTANT,10)
    assign c_i8_143_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_jacobi_1d30(ADD,21)@2
    assign i_fpga_indvars_iv_next_jacobi_1d30_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_data_out};
    assign i_fpga_indvars_iv_next_jacobi_1d30_b = {1'b0, c_i8_143_q};
    assign i_fpga_indvars_iv_next_jacobi_1d30_o = $unsigned(i_fpga_indvars_iv_next_jacobi_1d30_a) + $unsigned(i_fpga_indvars_iv_next_jacobi_1d30_b);
    assign i_fpga_indvars_iv_next_jacobi_1d30_q = i_fpga_indvars_iv_next_jacobi_1d30_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_jacobi_1d30_sel_x(BITSELECT,56)@2
    assign bgTrunc_i_fpga_indvars_iv_next_jacobi_1d30_sel_x_b = i_fpga_indvars_iv_next_jacobi_1d30_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31(BLACKBOX,41)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv_push12_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_jacobi_1d30_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_feedback_stall_out_12),
        .in_keep_going50(redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9841(CONSTANT,11)
    assign c_i8_9841_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22(BLACKBOX,35)@2
    // out out_feedback_stall_out_12@20000000
    jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22 (
        .in_data_in(c_i8_9841_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i8_fpga_indvars_iv_push12_jacobi_1d31_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_jacobi_1d23_cmp_nsign(LOGICAL,120)@2
    assign i_exitcond_jacobi_1d23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop12_jacobi_1d22_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26(BLACKBOX,37)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond60_0 thei_llvm_fpga_push_i1_notexitcond60_jacobi_1d26 (
        .in_data_in(i_exitcond_jacobi_1d23_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_not_exitcond_stall_out),
        .in_first_cleanup55(i_first_cleanup55_jacobi_1d3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together61_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,106)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid132_i_next_initerations49_jacobi_1d0_shift_x(BITSELECT,131)@2
    assign rightShiftStage0Idx1Rng1_uid132_i_next_initerations49_jacobi_1d0_shift_x_b = i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid134_i_next_initerations49_jacobi_1d0_shift_x(BITJOIN,133)@2
    assign rightShiftStage0Idx1_uid134_i_next_initerations49_jacobi_1d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid132_i_next_initerations49_jacobi_1d0_shift_x_b};

    // valid_fanout_reg1(REG,104)@1 + 1
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

    // valid_fanout_reg2(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9(BLACKBOX,40)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    jacobi_1d_i_llvm_fpga_push_i4_initerations48_push14_0 thei_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9 (
        .in_data_in(i_next_initerations49_jacobi_1d8_vt_join_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_feedback_stall_out_14),
        .in_keep_going50(redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7(BLACKBOX,34)@2
    // out out_feedback_stall_out_14@20000000
    jacobi_1d_i_llvm_fpga_pop_i4_initerations48_pop14_0 thei_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i4_initerations48_push14_jacobi_1d9_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x(MUX,135)@2
    assign rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_s or i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_data_out or rightShiftStage0Idx1_uid134_i_next_initerations49_jacobi_1d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_s)
            1'b0 : rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_q = i_llvm_fpga_pop_i4_initerations48_pop14_jacobi_1d7_out_data_out;
            1'b1 : rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_q = rightShiftStage0Idx1_uid134_i_next_initerations49_jacobi_1d0_shift_x_q;
            default : rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations49_jacobi_1d8_vt_select_2(BITSELECT,46)@2
    assign i_next_initerations49_jacobi_1d8_vt_select_2_b = rightShiftStage0_uid136_i_next_initerations49_jacobi_1d0_shift_x_q[2:0];

    // i_next_initerations49_jacobi_1d8_vt_join(BITJOIN,45)@2
    assign i_next_initerations49_jacobi_1d8_vt_join_q = {GND_q, i_next_initerations49_jacobi_1d8_vt_select_2_b};

    // i_last_initeration51_jacobi_1d10_sel_x(BITSELECT,96)@2
    assign i_last_initeration51_jacobi_1d10_sel_x_b = i_next_initerations49_jacobi_1d8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11(BLACKBOX,36)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    jacobi_1d_i_llvm_fpga_push_i1_lastiniteration52_0 thei_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11 (
        .in_data_in(i_last_initeration51_jacobi_1d10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_initeration_stall_out),
        .in_keep_going50(redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going50_jacobi_1d6(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    jacobi_1d_i_llvm_fpga_pipeline_keep_going50_0 thei_llvm_fpga_pipeline_keep_going50_jacobi_1d6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration52_jacobi_1d11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond60_jacobi_1d26_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,51)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,103)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked59_jacobi_1d32(LOGICAL,42)@2
    assign i_masked59_jacobi_1d32_q = i_notcmp46_jacobi_1d25_q & i_first_cleanup55_jacobi_1d3_sel_x_b;

    // i_arrayidx11_jacobi_1d0_narrow_x(BITSELECT,74)@2
    assign i_arrayidx11_jacobi_1d0_narrow_x_b = i_idxprom_jacobi_1d13_vt_join_q[61:0];

    // i_arrayidx11_jacobi_1d0_c_i2_01_x(CONSTANT,73)
    assign i_arrayidx11_jacobi_1d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx11_jacobi_1d0_shift_join_x(BITJOIN,75)@2
    assign i_arrayidx11_jacobi_1d0_shift_join_x_q = {i_arrayidx11_jacobi_1d0_narrow_x_b, i_arrayidx11_jacobi_1d0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,110)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_b3623_jacobi_1d18(BLACKBOX,30)@2
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1024i32_b3623_0 thei_llvm_fpga_ffwd_dest_p1024i32_b3623_jacobi_1d18 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_b3623_jacobi_1d18_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx11_jacobi_1d0_add_x(ADD,72)@2
    assign i_arrayidx11_jacobi_1d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_b3623_jacobi_1d18_out_dest_data_out_2_0};
    assign i_arrayidx11_jacobi_1d0_add_x_b = {1'b0, i_arrayidx11_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx11_jacobi_1d0_add_x_o = $unsigned(i_arrayidx11_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx11_jacobi_1d0_add_x_b);
    assign i_arrayidx11_jacobi_1d0_add_x_q = i_arrayidx11_jacobi_1d0_add_x_o[64:0];

    // i_arrayidx11_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,77)@2
    assign i_arrayidx11_jacobi_1d0_dupName_0_trunc_sel_x_b = i_arrayidx11_jacobi_1d0_add_x_q[63:0];

    // valid_fanout_reg6(REG,109)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_a_23521_jacobi_1d16(BLACKBOX,29)@2
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1024i32_a_23521_0 thei_llvm_fpga_ffwd_dest_p1024i32_a_23521_jacobi_1d16 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_a_23521_jacobi_1d16_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx7_jacobi_1d0_add_x(ADD,78)@2
    assign i_arrayidx7_jacobi_1d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_a_23521_jacobi_1d16_out_dest_data_out_1_0};
    assign i_arrayidx7_jacobi_1d0_add_x_b = {1'b0, i_arrayidx11_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx7_jacobi_1d0_add_x_o = $unsigned(i_arrayidx7_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx7_jacobi_1d0_add_x_b);
    assign i_arrayidx7_jacobi_1d0_add_x_q = i_arrayidx7_jacobi_1d0_add_x_o[64:0];

    // i_arrayidx7_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,83)@2
    assign i_arrayidx7_jacobi_1d0_dupName_0_trunc_sel_x_b = i_arrayidx7_jacobi_1d0_add_x_q[63:0];

    // valid_fanout_reg5(REG,108)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_a_13419_jacobi_1d14(BLACKBOX,28)@2
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1024i32_a_13419_0 thei_llvm_fpga_ffwd_dest_p1024i32_a_13419_jacobi_1d14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_a_13419_jacobi_1d14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_jacobi_1d0_add_x(ADD,84)@2
    assign i_arrayidx_jacobi_1d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_a_13419_jacobi_1d14_out_dest_data_out_0_0};
    assign i_arrayidx_jacobi_1d0_add_x_b = {1'b0, i_arrayidx11_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx_jacobi_1d0_add_x_o = $unsigned(i_arrayidx_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx_jacobi_1d0_add_x_b);
    assign i_arrayidx_jacobi_1d0_add_x_q = i_arrayidx_jacobi_1d0_add_x_o[64:0];

    // i_arrayidx_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,89)@2
    assign i_arrayidx_jacobi_1d0_dupName_0_trunc_sel_x_b = i_arrayidx_jacobi_1d0_add_x_q[63:0];

    // c_i32_039(CONSTANT,6)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,107)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,111)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_140(CONSTANT,7)
    assign c_i32_140_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_jacobi_1d20(ADD,26)@2
    assign i_inc_jacobi_1d20_a = {1'b0, i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_data_out};
    assign i_inc_jacobi_1d20_b = {1'b0, c_i32_140_q};
    assign i_inc_jacobi_1d20_o = $unsigned(i_inc_jacobi_1d20_a) + $unsigned(i_inc_jacobi_1d20_b);
    assign i_inc_jacobi_1d20_q = i_inc_jacobi_1d20_o[32:0];

    // bgTrunc_i_inc_jacobi_1d20_sel_x(BITSELECT,57)@2
    assign bgTrunc_i_inc_jacobi_1d20_sel_x_b = i_inc_jacobi_1d20_q[31:0];

    // i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21(BLACKBOX,38)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    jacobi_1d_i_llvm_fpga_push_i32_i_033_push13_0 thei_llvm_fpga_push_i32_i_033_push13_jacobi_1d21 (
        .in_data_in(bgTrunc_i_inc_jacobi_1d20_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_feedback_stall_out_13),
        .in_keep_going50(redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12(BLACKBOX,32)@2
    // out out_feedback_stall_out_13@20000000
    jacobi_1d_i_llvm_fpga_pop_i32_i_033_pop13_0 thei_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12 (
        .in_data_in(c_i32_039_q),
        .in_dir(redist0_sync_together61_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_i_033_push13_jacobi_1d21_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_jacobi_1d13_sel_x(BITSELECT,95)@2
    assign i_idxprom_jacobi_1d13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_033_pop13_jacobi_1d12_out_data_out[31:0]};

    // i_idxprom_jacobi_1d13_vt_select_31(BITSELECT,25)@2
    assign i_idxprom_jacobi_1d13_vt_select_31_b = i_idxprom_jacobi_1d13_sel_x_b[31:0];

    // i_idxprom_jacobi_1d13_vt_join(BITJOIN,24)@2
    assign i_idxprom_jacobi_1d13_vt_join_q = {c_i32_039_q, i_idxprom_jacobi_1d13_vt_select_31_b};

    // sync_out_aunroll_x(GPOUT,101)@2
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = i_first_cleanup_xor56_jacobi_1d4_q;
    assign out_c0_exi7_2_tpl = redist2_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_out_data_out_1_q;
    assign out_c0_exi7_3_tpl = i_idxprom_jacobi_1d13_vt_join_q;
    assign out_c0_exi7_4_tpl = i_arrayidx_jacobi_1d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_5_tpl = i_arrayidx7_jacobi_1d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_6_tpl = i_arrayidx11_jacobi_1d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_7_tpl = i_masked59_jacobi_1d32_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_jacobi_1d1 = GND_q;

endmodule
