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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_gaussians_c0_enter12611_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body6_s_c0_enter12611_gaussian0 (
    input wire [31:0] in_memdep_4_gaussian_avm_readdata,
    input wire [0:0] in_memdep_4_gaussian_avm_writeack,
    input wire [0:0] in_memdep_4_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_4_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_gaussian6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_gaussian6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_4_gaussian_avm_address,
    output wire [0:0] out_memdep_4_gaussian_avm_enable,
    output wire [0:0] out_memdep_4_gaussian_avm_read,
    output wire [0:0] out_memdep_4_gaussian_avm_write,
    output wire [31:0] out_memdep_4_gaussian_avm_writedata,
    output wire [3:0] out_memdep_4_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_4_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exi3130_0_tpl,
    output wire [0:0] out_c0_exi3130_1_tpl,
    output wire [0:0] out_c0_exi3130_2_tpl,
    output wire [0:0] out_c0_exi3130_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [63:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_A_pmem_q;
    wire [1:0] c_i2_150_q;
    wire [31:0] c_i32_052_q;
    wire [31:0] c_i32_153_q;
    wire [5:0] c_i6_156_q;
    wire [5:0] c_i6_1854_q;
    wire [1:0] i_arrayidx102_gaussian16_vt_const_1_q;
    wire [63:0] i_arrayidx102_gaussian16_vt_join_q;
    wire [61:0] i_arrayidx102_gaussian16_vt_select_63_b;
    wire [1:0] i_cleanups_shl75_gaussian5_vt_join_q;
    wire [0:0] i_cleanups_shl75_gaussian5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor77_gaussian4_q;
    wire [6:0] i_fpga_indvars_iv_next_gaussian28_a;
    wire [6:0] i_fpga_indvars_iv_next_gaussian28_b;
    logic [6:0] i_fpga_indvars_iv_next_gaussian28_o;
    wire [6:0] i_fpga_indvars_iv_next_gaussian28_q;
    wire [63:0] i_idxprom9_gaussian13_vt_join_q;
    wire [31:0] i_idxprom9_gaussian13_vt_select_31_b;
    wire [32:0] i_inc_gaussian18_a;
    wire [32:0] i_inc_gaussian18_b;
    logic [32:0] i_inc_gaussian18_o;
    wire [32:0] i_inc_gaussian18_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_feedback_stall_out_25;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_feedback_stall_out_23;
    wire [1:0] i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_feedback_stall_out_21;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_feedback_stall_out_24;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_valid_out_22;
    wire [31:0] i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_valid_out_21;
    wire [63:0] i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_valid_out_24;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_valid_out_20;
    wire [0:0] i_masked80_gaussian30_qi;
    reg [0:0] i_masked80_gaussian30_q;
    wire [0:0] i_next_cleanups79_gaussian26_s;
    reg [1:0] i_next_cleanups79_gaussian26_q;
    wire [1:0] i_next_initerations70_gaussian8_vt_join_q;
    wire [0:0] i_next_initerations70_gaussian8_vt_select_0_b;
    wire [0:0] i_notcmp67_gaussian23_q;
    wire [0:0] i_or78_gaussian25_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_gaussian28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gaussian18_sel_x_b;
    wire [11:0] i_arrayidx102_gaussian0_add_x_a;
    wire [11:0] i_arrayidx102_gaussian0_add_x_b;
    logic [11:0] i_arrayidx102_gaussian0_add_x_o;
    wire [11:0] i_arrayidx102_gaussian0_add_x_q;
    wire [63:0] i_arrayidx102_gaussian0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx102_gaussian0_narrow_x_b;
    wire [10:0] i_arrayidx102_gaussian0_shift_join_x_q;
    wire [11:0] i_arrayidx102_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx102_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx102_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx102_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx102_gaussian0_mult_extender_x_q;
    wire [3:0] i_arrayidx102_gaussian0_mult_multconst_x_q;
    wire [10:0] i_arrayidx102_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx102_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx102_gaussian0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx102_gaussian0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup76_gaussian3_sel_x_b;
    wire [63:0] i_idxprom9_gaussian13_sel_x_b;
    wire [0:0] i_last_initeration72_gaussian10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    wire [0:0] i_exitcond_gaussian21_cmp_nsign_q;
    wire [11:0] addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_q;
    wire [13:0] add_uid145_i_arrayidx102_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid150_i_arrayidx102_gaussian0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid185_i_cleanups_shl75_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid191_i_next_initerations70_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid193_i_next_initerations70_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_q;
    wire [52:0] i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2_q;
    reg [63:0] redist2_sync_together75_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_q;
    reg [0:0] redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_delay_0;
    reg [0:0] redist4_sync_together75_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together75_aunroll_x_in_i_valid_2_q;
    reg [10:0] redist6_i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist7_i_masked80_gaussian30_q_2_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3_q;
    reg [0:0] redist12_i_first_cleanup_xor77_gaussian4_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together75_aunroll_x_in_i_valid_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together75_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together75_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x(BITSELECT,183)@2
    assign leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_in = i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid185_i_cleanups_shl75_gaussian0_shift_x(BITJOIN,184)@2
    assign leftShiftStage0Idx1_uid185_i_cleanups_shl75_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid184_i_cleanups_shl75_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x(MUX,186)@2
    assign leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out or leftShiftStage0Idx1_uid185_i_cleanups_shl75_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out;
            1'b1 : leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_q = leftShiftStage0Idx1_uid185_i_cleanups_shl75_gaussian0_shift_x_q;
            default : leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl75_gaussian5_vt_select_1(BITSELECT,34)@2
    assign i_cleanups_shl75_gaussian5_vt_select_1_b = leftShiftStage0_uid187_i_cleanups_shl75_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl75_gaussian5_vt_join(BITJOIN,33)@2
    assign i_cleanups_shl75_gaussian5_vt_join_q = {i_cleanups_shl75_gaussian5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor77_gaussian4(LOGICAL,37)@2
    assign i_first_cleanup_xor77_gaussian4_q = i_first_cleanup76_gaussian3_sel_x_b ^ VCC_q;

    // i_notcmp67_gaussian23(LOGICAL,66)@2
    assign i_notcmp67_gaussian23_q = i_exitcond_gaussian21_cmp_nsign_q ^ VCC_q;

    // i_or78_gaussian25(LOGICAL,67)@2
    assign i_or78_gaussian25_q = i_notcmp67_gaussian23_q | i_first_cleanup_xor77_gaussian4_q;

    // i_next_cleanups79_gaussian26(MUX,62)@2
    assign i_next_cleanups79_gaussian26_s = i_or78_gaussian25_q;
    always @(i_next_cleanups79_gaussian26_s or i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out or i_cleanups_shl75_gaussian5_vt_join_q)
    begin
        unique case (i_next_cleanups79_gaussian26_s)
            1'b0 : i_next_cleanups79_gaussian26_q = i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out;
            1'b1 : i_next_cleanups79_gaussian26_q = i_cleanups_shl75_gaussian5_vt_join_q;
            default : i_next_cleanups79_gaussian26_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups74_push23_gaussian27(BLACKBOX,56)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    gaussian_i_llvm_fpga_push_i2_cleanups74_push23_0 thei_llvm_fpga_push_i2_cleanups74_push23_gaussian27 (
        .in_data_in(i_next_cleanups79_gaussian26_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_feedback_stall_out_23),
        .in_keep_going71(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together75_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_150(CONSTANT,22)
    assign c_i2_150_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2(BLACKBOX,48)@2
    // out out_feedback_stall_out_23@20000000
    gaussian_i_llvm_fpga_pop_i2_cleanups74_pop23_0 thei_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2 (
        .in_data_in(c_i2_150_q),
        .in_dir(redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_cleanups74_push23_gaussian27_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together75_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup76_gaussian3_sel_x(BITSELECT,105)@2
    assign i_first_cleanup76_gaussian3_sel_x_b = i_llvm_fpga_pop_i2_cleanups74_pop23_gaussian2_out_data_out[0:0];

    // c_i6_156(CONSTANT,25)
    assign c_i6_156_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_gaussian28(ADD,38)@2
    assign i_fpga_indvars_iv_next_gaussian28_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_data_out};
    assign i_fpga_indvars_iv_next_gaussian28_b = {1'b0, c_i6_156_q};
    assign i_fpga_indvars_iv_next_gaussian28_o = $unsigned(i_fpga_indvars_iv_next_gaussian28_a) + $unsigned(i_fpga_indvars_iv_next_gaussian28_b);
    assign i_fpga_indvars_iv_next_gaussian28_q = i_fpga_indvars_iv_next_gaussian28_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_gaussian28_sel_x(BITSELECT,73)@2
    assign bgTrunc_i_fpga_indvars_iv_next_gaussian28_sel_x_b = i_fpga_indvars_iv_next_gaussian28_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29(BLACKBOX,60)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_gaussian28_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_feedback_stall_out_20),
        .in_keep_going71(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together75_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1854(CONSTANT,26)
    assign c_i6_1854_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20(BLACKBOX,52)@2
    // out out_feedback_stall_out_20@20000000
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20 (
        .in_data_in(c_i6_1854_q),
        .in_dir(redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_gaussian29_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together75_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_gaussian21_cmp_nsign(LOGICAL,133)@2
    assign i_exitcond_gaussian21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_gaussian20_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond81_gaussian24(BLACKBOX,55)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond81_0 thei_llvm_fpga_push_i1_notexitcond81_gaussian24 (
        .in_data_in(i_exitcond_gaussian21_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_not_exitcond_stall_out),
        .in_first_cleanup76(i_first_cleanup76_gaussian3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together75_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,117)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid191_i_next_initerations70_gaussian0_shift_x(BITSELECT,190)@2
    assign rightShiftStage0Idx1Rng1_uid191_i_next_initerations70_gaussian0_shift_x_b = i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid193_i_next_initerations70_gaussian0_shift_x(BITJOIN,192)@2
    assign rightShiftStage0Idx1_uid193_i_next_initerations70_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid191_i_next_initerations70_gaussian0_shift_x_b};

    // valid_fanout_reg1(REG,115)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,116)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations69_push22_gaussian9(BLACKBOX,57)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    gaussian_i_llvm_fpga_push_i2_initerations69_push22_0 thei_llvm_fpga_push_i2_initerations69_push22_gaussian9 (
        .in_data_in(i_next_initerations70_gaussian8_vt_join_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_feedback_stall_out_22),
        .in_keep_going71(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7(BLACKBOX,49)@2
    // out out_feedback_stall_out_22@20000000
    gaussian_i_llvm_fpga_pop_i2_initerations69_pop22_0 thei_llvm_fpga_pop_i2_initerations69_pop22_gaussian7 (
        .in_data_in(c_i2_150_q),
        .in_dir(redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i2_initerations69_push22_gaussian9_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x(MUX,194)@2
    assign rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_data_out or rightShiftStage0Idx1_uid193_i_next_initerations70_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_initerations69_pop22_gaussian7_out_data_out;
            1'b1 : rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_q = rightShiftStage0Idx1_uid193_i_next_initerations70_gaussian0_shift_x_q;
            default : rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations70_gaussian8_vt_select_0(BITSELECT,65)@2
    assign i_next_initerations70_gaussian8_vt_select_0_b = rightShiftStage0_uid195_i_next_initerations70_gaussian0_shift_x_q[0:0];

    // i_next_initerations70_gaussian8_vt_join(BITJOIN,64)@2
    assign i_next_initerations70_gaussian8_vt_join_q = {GND_q, i_next_initerations70_gaussian8_vt_select_0_b};

    // i_last_initeration72_gaussian10_sel_x(BITSELECT,107)@2
    assign i_last_initeration72_gaussian10_sel_x_b = i_next_initerations70_gaussian8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration73_gaussian11(BLACKBOX,53)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    gaussian_i_llvm_fpga_push_i1_lastiniteration73_0 thei_llvm_fpga_push_i1_lastiniteration73_gaussian11 (
        .in_data_in(i_last_initeration72_gaussian10_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_initeration_stall_out),
        .in_keep_going71(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_gaussian6(BLACKBOX,46)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going71_0 thei_llvm_fpga_pipeline_keep_going71_gaussian6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration73_gaussian11_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond81_gaussian24_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,28)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_gaussian6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_gaussian6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going71_gaussian6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,70)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going71_gaussian6_out_pipeline_valid_out;

    // c_i32_153(CONSTANT,24)
    assign c_i32_153_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg7(REG,121)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together75_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_i_first_cleanup_xor77_gaussian4_q_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_first_cleanup_xor77_gaussian4_q_1_q <= '0;
        end
        else
        begin
            redist12_i_first_cleanup_xor77_gaussian4_q_1_q <= $unsigned(i_first_cleanup_xor77_gaussian4_q);
        end
    end

    // c_gaussian_A_pmem(CONSTANT,4)
    assign c_gaussian_A_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,196)@3
    assign i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_A_pmem_q[63:11];
    assign i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_A_pmem_q[10:0];

    // c_i32_052(CONSTANT,23)
    assign c_i32_052_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,118)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist4_sync_together75_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,122)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist4_sync_together75_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2_q <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q);
        end
    end

    // i_inc_gaussian18(ADD,43)@3
    assign i_inc_gaussian18_a = {1'b0, i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_data_out};
    assign i_inc_gaussian18_b = {1'b0, c_i32_153_q};
    assign i_inc_gaussian18_o = $unsigned(i_inc_gaussian18_a) + $unsigned(i_inc_gaussian18_b);
    assign i_inc_gaussian18_q = i_inc_gaussian18_o[32:0];

    // bgTrunc_i_inc_gaussian18_sel_x(BITSELECT,74)@3
    assign bgTrunc_i_inc_gaussian18_sel_x_b = i_inc_gaussian18_q[31:0];

    // i_llvm_fpga_push_i32_x_036_push21_gaussian19(BLACKBOX,58)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    gaussian_i_llvm_fpga_push_i32_x_036_push21_0 thei_llvm_fpga_push_i32_x_036_push21_gaussian19 (
        .in_data_in(bgTrunc_i_inc_gaussian18_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_feedback_stall_out_21),
        .in_keep_going71(redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2_q <= $unsigned(redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_x_036_pop21_gaussian12(BLACKBOX,50)@3
    // out out_feedback_stall_out_21@20000000
    gaussian_i_llvm_fpga_pop_i32_x_036_pop21_0 thei_llvm_fpga_pop_i32_x_036_pop21_gaussian12 (
        .in_data_in(c_i32_052_q),
        .in_dir(redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_x_036_push21_gaussian19_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom9_gaussian13_sel_x(BITSELECT,106)@3
    assign i_idxprom9_gaussian13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_x_036_pop21_gaussian12_out_data_out[31:0]};

    // i_idxprom9_gaussian13_vt_select_31(BITSELECT,42)@3
    assign i_idxprom9_gaussian13_vt_select_31_b = i_idxprom9_gaussian13_sel_x_b[31:0];

    // i_idxprom9_gaussian13_vt_join(BITJOIN,41)@3
    assign i_idxprom9_gaussian13_vt_join_q = {c_i32_052_q, i_idxprom9_gaussian13_vt_select_31_b};

    // i_arrayidx102_gaussian0_dupName_3_trunc_sel_x(BITSELECT,99)@3
    assign i_arrayidx102_gaussian0_dupName_3_trunc_sel_x_b = i_idxprom9_gaussian13_vt_join_q[10:0];

    // i_arrayidx102_gaussian0_narrow_x(BITSELECT,82)@3
    assign i_arrayidx102_gaussian0_narrow_x_b = i_arrayidx102_gaussian0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx102_gaussian0_shift_join_x(BITJOIN,83)@3
    assign i_arrayidx102_gaussian0_shift_join_x_q = {i_arrayidx102_gaussian0_narrow_x_b, i_arrayidx102_gaussian16_vt_const_1_q};

    // i_arrayidx102_gaussian0_mult_multconst_x(CONSTANT,94)
    assign i_arrayidx102_gaussian0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg5(REG,119)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,120)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom94_push24_gaussian15(BLACKBOX,59)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    gaussian_i_llvm_fpga_push_i64_idxprom94_push24_0 thei_llvm_fpga_push_i64_idxprom94_push24_gaussian15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_feedback_stall_out_24),
        .in_keep_going71(redist9_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together75_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together75_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together75_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14(BLACKBOX,51)@2
    // out out_feedback_stall_out_24@20000000
    gaussian_i_llvm_fpga_pop_i64_idxprom94_pop24_0 thei_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14 (
        .in_data_in(redist2_sync_together75_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together75_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i64_idxprom94_push24_gaussian15_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx102_gaussian0_dupName_0_trunc_sel_x(BITSELECT,96)@2
    assign i_arrayidx102_gaussian0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom94_pop24_gaussian14_out_data_out[10:0];

    // addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x(ADD,143)@2
    assign addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_a = {1'b0, i_arrayidx102_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_b = {3'b000, lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_b);
    assign addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_q = addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select(BITSELECT,197)@2
    assign lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_b = i_arrayidx102_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_c = i_arrayidx102_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid145_i_arrayidx102_gaussian0_mult_x(BITJOIN,144)@2
    assign add_uid145_i_arrayidx102_gaussian0_mult_x_q = {addsumAHighB_uid144_i_arrayidx102_gaussian0_mult_x_q, lowRangeB_uid142_i_arrayidx102_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid150_i_arrayidx102_gaussian0_mult_x(BITJOIN,149)@2
    assign sR_mergedSignalTM_uid150_i_arrayidx102_gaussian0_mult_x_q = {add_uid145_i_arrayidx102_gaussian0_mult_x_q, i_arrayidx102_gaussian0_mult_multconst_x_q};

    // i_arrayidx102_gaussian0_mult_extender_x(BITJOIN,93)@2
    assign i_arrayidx102_gaussian0_mult_extender_x_q = {i_arrayidx102_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid150_i_arrayidx102_gaussian0_mult_x_q};

    // i_arrayidx102_gaussian0_dupName_1_trunc_sel_x(BITSELECT,97)@2
    assign i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx102_gaussian0_mult_extender_x_q[10:0];

    // redist6_i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx102_gaussian0_add_x(ADD,77)@3
    assign i_arrayidx102_gaussian0_add_x_a = {1'b0, i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx102_gaussian0_add_x_b = {1'b0, redist6_i_arrayidx102_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx102_gaussian0_add_x_o = $unsigned(i_arrayidx102_gaussian0_add_x_a) + $unsigned(i_arrayidx102_gaussian0_add_x_b);
    assign i_arrayidx102_gaussian0_add_x_q = i_arrayidx102_gaussian0_add_x_o[11:0];

    // i_arrayidx102_gaussian0_dupName_2_trunc_sel_x(BITSELECT,98)@3
    assign i_arrayidx102_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx102_gaussian0_add_x_q[10:0];

    // i_arrayidx102_gaussian0_dupName_0_add_x(ADD,87)@3
    assign i_arrayidx102_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx102_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx102_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx102_gaussian0_shift_join_x_q};
    assign i_arrayidx102_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx102_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx102_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx102_gaussian0_dupName_0_add_x_q = i_arrayidx102_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx102_gaussian0_dupName_5_trunc_sel_x(BITSELECT,100)@3
    assign i_arrayidx102_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx102_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx102_gaussian0_append_upper_bits_x(BITJOIN,78)@3
    assign i_arrayidx102_gaussian0_append_upper_bits_x_q = {i_arrayidx102_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx102_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx102_gaussian16_vt_select_63(BITSELECT,31)@3
    assign i_arrayidx102_gaussian16_vt_select_63_b = i_arrayidx102_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx102_gaussian16_vt_const_1(CONSTANT,29)
    assign i_arrayidx102_gaussian16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx102_gaussian16_vt_join(BITJOIN,30)@3
    assign i_arrayidx102_gaussian16_vt_join_q = {i_arrayidx102_gaussian16_vt_select_63_b, i_arrayidx102_gaussian16_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_4_gaussian17(BLACKBOX,45)@3
    // out out_memdep_4_gaussian_avm_address@20000000
    // out out_memdep_4_gaussian_avm_burstcount@20000000
    // out out_memdep_4_gaussian_avm_byteenable@20000000
    // out out_memdep_4_gaussian_avm_enable@20000000
    // out out_memdep_4_gaussian_avm_read@20000000
    // out out_memdep_4_gaussian_avm_write@20000000
    // out out_memdep_4_gaussian_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    gaussian_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_gaussian17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx102_gaussian16_vt_join_q),
        .in_i_predicate(redist12_i_first_cleanup_xor77_gaussian4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(c_i32_153_q),
        .in_memdep_4_gaussian_avm_readdata(in_memdep_4_gaussian_avm_readdata),
        .in_memdep_4_gaussian_avm_readdatavalid(in_memdep_4_gaussian_avm_readdatavalid),
        .in_memdep_4_gaussian_avm_waitrequest(in_memdep_4_gaussian_avm_waitrequest),
        .in_memdep_4_gaussian_avm_writeack(in_memdep_4_gaussian_avm_writeack),
        .out_memdep_4_gaussian_avm_address(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_address),
        .out_memdep_4_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_burstcount),
        .out_memdep_4_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_byteenable),
        .out_memdep_4_gaussian_avm_enable(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_enable),
        .out_memdep_4_gaussian_avm_read(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_read),
        .out_memdep_4_gaussian_avm_write(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_write),
        .out_memdep_4_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,76)
    assign out_memdep_4_gaussian_avm_address = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_address;
    assign out_memdep_4_gaussian_avm_enable = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_enable;
    assign out_memdep_4_gaussian_avm_read = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_read;
    assign out_memdep_4_gaussian_avm_write = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_write;
    assign out_memdep_4_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_writedata;
    assign out_memdep_4_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_byteenable;
    assign out_memdep_4_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_4_gaussian17_out_memdep_4_gaussian_avm_burstcount;

    // redist5_sync_together75_aunroll_x_in_i_valid_2(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together75_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist5_sync_together75_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together75_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,114)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together75_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,123)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist4_sync_together75_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,124)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together75_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32(BLACKBOX,54)@4
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    gaussian_i_llvm_fpga_push_i1_notcmp8395_push25_0 thei_llvm_fpga_push_i1_notcmp8395_push25_gaussian32 (
        .in_data_in(redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_feedback_stall_out_25),
        .in_keep_going71(redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_delay_0 <= '0;
            redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_q <= redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31(BLACKBOX,47)@3
    // out out_feedback_stall_out_25@20000000
    gaussian_i_llvm_fpga_pop_i1_notcmp8395_pop25_0 thei_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31 (
        .in_data_in(redist3_sync_together75_aunroll_x_in_c0_eni3_3_tpl_2_q),
        .in_dir(redist1_sync_together75_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_notcmp8395_push25_gaussian32_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out);
        end
    end

    // i_masked80_gaussian30(LOGICAL,61)@2 + 1
    assign i_masked80_gaussian30_qi = i_notcmp67_gaussian23_q & i_first_cleanup76_gaussian3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked80_gaussian30_delay ( .xin(i_masked80_gaussian30_qi), .xout(i_masked80_gaussian30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked80_gaussian30_q_2(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_masked80_gaussian30_q_2_q <= '0;
        end
        else
        begin
            redist7_i_masked80_gaussian30_q_2_q <= $unsigned(i_masked80_gaussian30_q);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,112)@4
    assign out_c0_exi3130_0_tpl = GND_q;
    assign out_c0_exi3130_1_tpl = redist11_i_llvm_fpga_pipeline_keep_going71_gaussian6_out_data_out_3_q;
    assign out_c0_exi3130_2_tpl = redist7_i_masked80_gaussian30_q_2_q;
    assign out_c0_exi3130_3_tpl = redist8_i_llvm_fpga_pop_i1_notcmp8395_pop25_gaussian31_out_data_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
