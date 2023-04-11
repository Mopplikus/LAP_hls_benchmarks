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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_examples_c0_enter62_example0
// Created for function/kernel example
// SystemVerilog created on Fri Apr  7 17:41:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_i_sfc_logic_s_c0_in_for_body_s_c0_enter62_example0 (
    input wire [31:0] in_unnamed_example3_example_avm_readdata,
    input wire [0:0] in_unnamed_example3_example_avm_writeack,
    input wire [0:0] in_unnamed_example3_example_avm_waitrequest,
    input wire [0:0] in_unnamed_example3_example_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [31:0] in_unnamed_example4_example_avm_readdata,
    input wire [0:0] in_unnamed_example4_example_avm_writeack,
    input wire [0:0] in_unnamed_example4_example_avm_waitrequest,
    input wire [0:0] in_unnamed_example4_example_avm_readdatavalid,
    output wire [31:0] out_unnamed_example3_example_avm_address,
    output wire [0:0] out_unnamed_example3_example_avm_enable,
    output wire [0:0] out_unnamed_example3_example_avm_read,
    output wire [0:0] out_unnamed_example3_example_avm_write,
    output wire [31:0] out_unnamed_example3_example_avm_writedata,
    output wire [3:0] out_unnamed_example3_example_avm_byteenable,
    output wire [0:0] out_unnamed_example3_example_avm_burstcount,
    output wire [31:0] out_unnamed_example4_example_avm_address,
    output wire [0:0] out_unnamed_example4_example_avm_enable,
    output wire [0:0] out_unnamed_example4_example_avm_read,
    output wire [0:0] out_unnamed_example4_example_avm_write,
    output wire [31:0] out_unnamed_example4_example_avm_writedata,
    output wire [3:0] out_unnamed_example4_example_avm_byteenable,
    output wire [0:0] out_unnamed_example4_example_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_example1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_example_A_pmem_q;
    wire [63:0] c_example_B_pmem_q;
    wire [31:0] c_float_0_000000e_0059_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_160_q;
    wire [3:0] c_i4_755_q;
    wire [7:0] c_i8_163_q;
    wire [7:0] c_i8_9861_q;
    wire [31:0] i_add_example21_out_primWireOut;
    wire [1:0] i_arrayidx1_example14_vt_const_1_q;
    wire [63:0] i_arrayidx1_example14_vt_join_q;
    wire [61:0] i_arrayidx1_example14_vt_select_63_b;
    wire [63:0] i_arrayidx42_example16_vt_join_q;
    wire [61:0] i_arrayidx42_example16_vt_select_63_b;
    wire [3:0] i_cleanups_shl_example5_vt_join_q;
    wire [2:0] i_cleanups_shl_example5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_example4_q;
    wire [8:0] i_fpga_indvars_iv_next_example34_a;
    wire [8:0] i_fpga_indvars_iv_next_example34_b;
    logic [8:0] i_fpga_indvars_iv_next_example34_o;
    wire [8:0] i_fpga_indvars_iv_next_example34_q;
    wire [63:0] i_idxprom_example13_vt_join_q;
    wire [31:0] i_idxprom_example13_vt_select_31_b;
    wire [32:0] i_inc_example24_a;
    wire [32:0] i_inc_example24_b;
    logic [32:0] i_inc_example24_o;
    wire [32:0] i_inc_example24_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_example5_example36_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_example3_example15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_example4_example17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_s_010_pop7_example20_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_pop_i32_i_09_pop8_example12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_09_pop8_example12_out_feedback_stall_out_8;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_feedback_stall_out_6;
    wire [31:0] i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_valid_out_8;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_valid_out_6;
    wire [0:0] i_masked_example37_qi;
    reg [0:0] i_masked_example37_q;
    wire [0:0] i_next_cleanups_example32_s;
    reg [3:0] i_next_cleanups_example32_q;
    wire [3:0] i_next_initerations_example8_vt_join_q;
    wire [2:0] i_next_initerations_example8_vt_select_2_b;
    wire [0:0] i_notcmp_example29_q;
    wire [0:0] i_or_example31_q;
    wire [31:0] i_sub_example18_out_primWireOut;
    wire [0:0] i_unnamed_example22_s;
    reg [31:0] i_unnamed_example22_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_example34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_example24_sel_x_b;
    wire [9:0] i_arrayidx1_example0_add_x_a;
    wire [9:0] i_arrayidx1_example0_add_x_b;
    logic [9:0] i_arrayidx1_example0_add_x_o;
    wire [9:0] i_arrayidx1_example0_add_x_q;
    wire [63:0] i_arrayidx1_example0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_example0_narrow_x_b;
    wire [8:0] i_arrayidx1_example0_shift_join_x_q;
    wire [8:0] i_arrayidx1_example0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_example0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx42_example0_add_x_a;
    wire [9:0] i_arrayidx42_example0_add_x_b;
    logic [9:0] i_arrayidx42_example0_add_x_o;
    wire [9:0] i_arrayidx42_example0_add_x_q;
    wire [63:0] i_arrayidx42_example0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx42_example0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_example3_sel_x_b;
    wire [63:0] i_idxprom_example13_sel_x_b;
    wire [0:0] i_last_initeration_example10_sel_x_b;
    wire [22:0] cstZeroWF_uid129_i_cmp5_example19_q;
    wire [7:0] cstAllZWE_uid130_i_cmp5_example19_q;
    wire [7:0] exp_x_uid131_i_cmp5_example19_b;
    wire [22:0] frac_x_uid132_i_cmp5_example19_b;
    wire [0:0] expXIsZero_uid133_i_cmp5_example19_q;
    wire [0:0] expXIsMax_uid134_i_cmp5_example19_q;
    wire [0:0] fracXIsZero_uid135_i_cmp5_example19_q;
    wire [0:0] fracXIsNotZero_uid136_i_cmp5_example19_q;
    wire [0:0] excZ_x_uid137_i_cmp5_example19_q;
    wire [0:0] excN_x_uid139_i_cmp5_example19_q;
    wire [7:0] exp_y_uid148_i_cmp5_example19_b;
    wire [22:0] frac_y_uid149_i_cmp5_example19_b;
    wire [0:0] expXIsZero_uid150_i_cmp5_example19_q;
    wire [0:0] expXIsMax_uid151_i_cmp5_example19_q;
    wire [0:0] fracXIsZero_uid152_i_cmp5_example19_q;
    wire [0:0] fracXIsNotZero_uid153_i_cmp5_example19_q;
    wire [0:0] excZ_y_uid154_i_cmp5_example19_q;
    wire [0:0] excN_y_uid156_i_cmp5_example19_q;
    wire [0:0] oneIsNaN_uid162_i_cmp5_example19_qi;
    reg [0:0] oneIsNaN_uid162_i_cmp5_example19_q;
    wire [30:0] expFracX_uid167_i_cmp5_example19_q;
    wire [30:0] expFracY_uid169_i_cmp5_example19_q;
    wire [32:0] efxGTefy_uid171_i_cmp5_example19_a;
    wire [32:0] efxGTefy_uid171_i_cmp5_example19_b;
    logic [32:0] efxGTefy_uid171_i_cmp5_example19_o;
    wire [0:0] efxGTefy_uid171_i_cmp5_example19_c;
    wire [32:0] efxLTefy_uid172_i_cmp5_example19_a;
    wire [32:0] efxLTefy_uid172_i_cmp5_example19_b;
    logic [32:0] efxLTefy_uid172_i_cmp5_example19_o;
    wire [0:0] efxLTefy_uid172_i_cmp5_example19_c;
    wire [0:0] signX_uid176_i_cmp5_example19_b;
    wire [0:0] signY_uid177_i_cmp5_example19_b;
    wire [1:0] two_uid178_i_cmp5_example19_q;
    wire [1:0] concSXSY_uid179_i_cmp5_example19_q;
    wire [0:0] sxLTsy_uid180_i_cmp5_example19_q;
    wire [0:0] xorSigns_uid181_i_cmp5_example19_q;
    wire [0:0] sxEQsy_uid182_i_cmp5_example19_q;
    wire [0:0] expFracCompMux_uid183_i_cmp5_example19_s;
    reg [0:0] expFracCompMux_uid183_i_cmp5_example19_q;
    wire [0:0] invExcYZ_uid184_i_cmp5_example19_q;
    wire [0:0] invExcXZ_uid185_i_cmp5_example19_q;
    wire [0:0] oneNonZero_uid186_i_cmp5_example19_q;
    wire [0:0] rc2_uid187_i_cmp5_example19_q;
    wire [0:0] sxEQsyExpFracCompMux_uid188_i_cmp5_example19_q;
    wire [0:0] r_uid189_i_cmp5_example19_qi;
    reg [0:0] r_uid189_i_cmp5_example19_q;
    wire [0:0] rPostExc_uid190_i_cmp5_example19_qi;
    reg [0:0] rPostExc_uid190_i_cmp5_example19_q;
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
    wire [0:0] i_exitcond_example27_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid216_i_cleanups_shl_example0_shift_x_q;
    wire [0:0] leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_s;
    reg [3:0] leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid222_i_next_initerations_example0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid224_i_next_initerations_example0_shift_x_q;
    wire [0:0] rightShiftStage0_uid226_i_next_initerations_example0_shift_x_s;
    reg [3:0] rightShiftStage0_uid226_i_next_initerations_example0_shift_x_q;
    wire [54:0] i_arrayidx1_example0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_example0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx42_example0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx42_example0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_rPostExc_uid190_i_cmp5_example19_q_2_q;
    reg [0:0] redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
    reg [0:0] redist2_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q;
    reg [0:0] redist3_sync_together80_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together80_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together80_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist6_sync_together80_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist6_sync_together80_aunroll_x_in_i_valid_11_delay_0;
    reg [0:0] redist6_sync_together80_aunroll_x_in_i_valid_11_delay_1;
    reg [0:0] redist7_i_masked_example37_q_10_q;
    reg [31:0] redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_q;
    reg [31:0] redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_delay_0;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10_q;
    reg [0:0] redist10_i_first_cleanup_xor_example4_q_10_q;
    reg [31:0] redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together80_aunroll_x_in_i_valid_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together80_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together80_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_sync_together80_aunroll_x_in_i_valid_2(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together80_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist4_sync_together80_aunroll_x_in_i_valid_2_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x(BITSELECT,214)@3
    assign leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_b = leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid216_i_cleanups_shl_example0_shift_x(BITJOIN,215)@3
    assign leftShiftStage0Idx1_uid216_i_cleanups_shl_example0_shift_x_q = {leftShiftStage0Idx1Rng1_uid215_i_cleanups_shl_example0_shift_x_b, GND_q};

    // leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x(MUX,217)@3
    assign leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or leftShiftStage0Idx1_uid216_i_cleanups_shl_example0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_s)
            1'b0 : leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_q = leftShiftStage0Idx1_uid216_i_cleanups_shl_example0_shift_x_q;
            default : leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_example5_vt_select_3(BITSELECT,41)@3
    assign i_cleanups_shl_example5_vt_select_3_b = leftShiftStage0_uid218_i_cleanups_shl_example0_shift_x_q[3:1];

    // i_cleanups_shl_example5_vt_join(BITJOIN,40)@3
    assign i_cleanups_shl_example5_vt_join_q = {i_cleanups_shl_example5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_example4(LOGICAL,45)@3
    assign i_first_cleanup_xor_example4_q = i_first_cleanup_example3_sel_x_b ^ VCC_q;

    // i_notcmp_example29(LOGICAL,74)@3
    assign i_notcmp_example29_q = i_exitcond_example27_cmp_nsign_q ^ VCC_q;

    // i_or_example31(LOGICAL,75)@3
    assign i_or_example31_q = i_notcmp_example29_q | i_first_cleanup_xor_example4_q;

    // i_next_cleanups_example32(MUX,70)@3
    assign i_next_cleanups_example32_s = i_or_example31_q;
    always @(i_next_cleanups_example32_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or i_cleanups_shl_example5_vt_join_q)
    begin
        unique case (i_next_cleanups_example32_s)
            1'b0 : i_next_cleanups_example32_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : i_next_cleanups_example32_q = i_cleanups_shl_example5_vt_join_q;
            default : i_next_cleanups_example32_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_example33(BLACKBOX,66)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    example_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_example33 (
        .in_data_in(i_next_cleanups_example32_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_755(CONSTANT,27)
    assign c_i4_755_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_example2(BLACKBOX,59)@3
    // out out_feedback_stall_out_10@20000000
    example_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_example2 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_example33_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_example3_sel_x(BITSELECT,118)@3
    assign i_first_cleanup_example3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[0:0];

    // c_i8_163(CONSTANT,28)
    assign c_i8_163_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_example34(ADD,46)@3
    assign i_fpga_indvars_iv_next_example34_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_data_out};
    assign i_fpga_indvars_iv_next_example34_b = {1'b0, c_i8_163_q};
    assign i_fpga_indvars_iv_next_example34_o = $unsigned(i_fpga_indvars_iv_next_example34_a) + $unsigned(i_fpga_indvars_iv_next_example34_b);
    assign i_fpga_indvars_iv_next_example34_q = i_fpga_indvars_iv_next_example34_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_example34_sel_x(BITSELECT,84)@3
    assign bgTrunc_i_fpga_indvars_iv_next_example34_sel_x_b = i_fpga_indvars_iv_next_example34_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35(BLACKBOX,68)@3
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    example_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_example34_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9861(CONSTANT,29)
    assign c_i8_9861_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26(BLACKBOX,61)@3
    // out out_feedback_stall_out_6@20000000
    example_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26 (
        .in_data_in(c_i8_9861_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example35_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_example27_cmp_nsign(LOGICAL,210)@3
    assign i_exitcond_example27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example26_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond_example30(BLACKBOX,64)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    example_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_example30 (
        .in_data_in(i_exitcond_example27_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_example3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,194)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid222_i_next_initerations_example0_shift_x(BITSELECT,221)@3
    assign rightShiftStage0Idx1Rng1_uid222_i_next_initerations_example0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid224_i_next_initerations_example0_shift_x(BITJOIN,223)@3
    assign rightShiftStage0Idx1_uid224_i_next_initerations_example0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid222_i_next_initerations_example0_shift_x_b};

    // valid_fanout_reg1(REG,192)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,193)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_example9(BLACKBOX,67)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    example_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_example9 (
        .in_data_in(i_next_initerations_example8_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_example7(BLACKBOX,60)@3
    // out out_feedback_stall_out_9@20000000
    example_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_example7 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid226_i_next_initerations_example0_shift_x(MUX,225)@3
    assign rightShiftStage0_uid226_i_next_initerations_example0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid226_i_next_initerations_example0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out or rightShiftStage0Idx1_uid224_i_next_initerations_example0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid226_i_next_initerations_example0_shift_x_s)
            1'b0 : rightShiftStage0_uid226_i_next_initerations_example0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
            1'b1 : rightShiftStage0_uid226_i_next_initerations_example0_shift_x_q = rightShiftStage0Idx1_uid224_i_next_initerations_example0_shift_x_q;
            default : rightShiftStage0_uid226_i_next_initerations_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_example8_vt_select_2(BITSELECT,73)@3
    assign i_next_initerations_example8_vt_select_2_b = rightShiftStage0_uid226_i_next_initerations_example0_shift_x_q[2:0];

    // i_next_initerations_example8_vt_join(BITJOIN,72)@3
    assign i_next_initerations_example8_vt_join_q = {GND_q, i_next_initerations_example8_vt_select_2_b};

    // i_last_initeration_example10_sel_x(BITSELECT,120)@3
    assign i_last_initeration_example10_sel_x_b = i_next_initerations_example8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_example11(BLACKBOX,63)@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    example_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_example11 (
        .in_data_in(i_last_initeration_example10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= '0;
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q <= redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_example6(BLACKBOX,56)@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    example_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_example6 (
        .in_data_in(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_example30_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;

    // redist5_sync_together80_aunroll_x_in_i_valid_8(DELAY,234)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together80_aunroll_x_in_i_valid_8 ( .xin(redist4_sync_together80_aunroll_x_in_i_valid_2_q), .xout(redist5_sync_together80_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together80_aunroll_x_in_i_valid_11(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together80_aunroll_x_in_i_valid_11_delay_0 <= '0;
            redist6_sync_together80_aunroll_x_in_i_valid_11_delay_1 <= '0;
            redist6_sync_together80_aunroll_x_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist6_sync_together80_aunroll_x_in_i_valid_11_delay_0 <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_8_q);
            redist6_sync_together80_aunroll_x_in_i_valid_11_delay_1 <= redist6_sync_together80_aunroll_x_in_i_valid_11_delay_0;
            redist6_sync_together80_aunroll_x_in_i_valid_11_q <= redist6_sync_together80_aunroll_x_in_i_valid_11_delay_1;
        end
    end

    // valid_fanout_reg10(REG,201)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist6_sync_together80_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg7(REG,198)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg8(REG,199)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together80_aunroll_x_in_i_valid_11_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10(DELAY,238)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10 ( .xin(i_llvm_fpga_pipeline_keep_going_example6_out_data_out), .xout(redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f32_s_010_push7_example23(BLACKBOX,62)@13
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    example_i_llvm_fpga_push_f32_s_010_push7_0 thei_llvm_fpga_push_f32_s_010_push7_example23 (
        .in_data_in(i_unnamed_example22_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_f32_s_010_pop7_example20_out_feedback_stall_out_7),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9(DELAY,231)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9 ( .xin(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q), .xout(redist2_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_0_000000e_0059(FLOATCONSTANT,6)
    assign c_float_0_000000e_0059_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_s_010_pop7_example20(BLACKBOX,57)@10
    // out out_feedback_stall_out_7@20000000
    example_i_llvm_fpga_pop_f32_s_010_pop7_0 thei_llvm_fpga_pop_f32_s_010_pop7_example20 (
        .in_data_in(c_float_0_000000e_0059_q),
        .in_dir(redist2_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_7(i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_f32_s_010_push7_example23_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_f32_s_010_pop7_example20_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_inputreg0(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out);
        end
    end

    // redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_delay_0 <= '0;
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_delay_0 <= $unsigned(redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_inputreg0_q);
            redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_q <= redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_delay_0;
        end
    end

    // valid_fanout_reg6(REG,197)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_example_B_pmem(CONSTANT,5)
    assign c_example_B_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx42_example0_upper_bits_x_merged_bit_select(BITSELECT,228)@3
    assign i_arrayidx42_example0_upper_bits_x_merged_bit_select_b = c_example_B_pmem_q[63:9];
    assign i_arrayidx42_example0_upper_bits_x_merged_bit_select_c = c_example_B_pmem_q[8:0];

    // c_i32_058(CONSTANT,24)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,195)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,200)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_160(CONSTANT,25)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_example24(ADD,51)@3
    assign i_inc_example24_a = {1'b0, i_llvm_fpga_pop_i32_i_09_pop8_example12_out_data_out};
    assign i_inc_example24_b = {1'b0, c_i32_160_q};
    assign i_inc_example24_o = $unsigned(i_inc_example24_a) + $unsigned(i_inc_example24_b);
    assign i_inc_example24_q = i_inc_example24_o[32:0];

    // bgTrunc_i_inc_example24_sel_x(BITSELECT,85)@3
    assign bgTrunc_i_inc_example24_sel_x_b = i_inc_example24_q[31:0];

    // i_llvm_fpga_push_i32_i_09_push8_example25(BLACKBOX,65)@3
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    example_i_llvm_fpga_push_i32_i_09_push8_0 thei_llvm_fpga_push_i32_i_09_push8_example25 (
        .in_data_in(bgTrunc_i_inc_example24_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_09_pop8_example12_out_feedback_stall_out_8),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_09_pop8_example12(BLACKBOX,58)@3
    // out out_feedback_stall_out_8@20000000
    example_i_llvm_fpga_pop_i32_i_09_pop8_0 thei_llvm_fpga_pop_i32_i_09_pop8_example12 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_09_push8_example25_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_09_pop8_example12_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_09_pop8_example12_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_example13_sel_x(BITSELECT,119)@3
    assign i_idxprom_example13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_09_pop8_example12_out_data_out[31:0]};

    // i_idxprom_example13_vt_select_31(BITSELECT,50)@3
    assign i_idxprom_example13_vt_select_31_b = i_idxprom_example13_sel_x_b[31:0];

    // i_idxprom_example13_vt_join(BITJOIN,49)@3
    assign i_idxprom_example13_vt_join_q = {c_i32_058_q, i_idxprom_example13_vt_select_31_b};

    // i_arrayidx1_example0_dupName_0_trunc_sel_x(BITSELECT,100)@3
    assign i_arrayidx1_example0_dupName_0_trunc_sel_x_b = i_idxprom_example13_vt_join_q[8:0];

    // i_arrayidx1_example0_narrow_x(BITSELECT,93)@3
    assign i_arrayidx1_example0_narrow_x_b = i_arrayidx1_example0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_example0_shift_join_x(BITJOIN,94)@3
    assign i_arrayidx1_example0_shift_join_x_q = {i_arrayidx1_example0_narrow_x_b, i_arrayidx1_example14_vt_const_1_q};

    // i_arrayidx42_example0_add_x(ADD,102)@3
    assign i_arrayidx42_example0_add_x_a = {1'b0, i_arrayidx42_example0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_example0_add_x_b = {1'b0, i_arrayidx1_example0_shift_join_x_q};
    assign i_arrayidx42_example0_add_x_o = $unsigned(i_arrayidx42_example0_add_x_a) + $unsigned(i_arrayidx42_example0_add_x_b);
    assign i_arrayidx42_example0_add_x_q = i_arrayidx42_example0_add_x_o[9:0];

    // i_arrayidx42_example0_dupName_2_trunc_sel_x(BITSELECT,113)@3
    assign i_arrayidx42_example0_dupName_2_trunc_sel_x_b = i_arrayidx42_example0_add_x_q[8:0];

    // i_arrayidx42_example0_append_upper_bits_x(BITJOIN,103)@3
    assign i_arrayidx42_example0_append_upper_bits_x_q = {i_arrayidx42_example0_upper_bits_x_merged_bit_select_b, i_arrayidx42_example0_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_example16_vt_select_63(BITSELECT,38)@3
    assign i_arrayidx42_example16_vt_select_63_b = i_arrayidx42_example0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_example14_vt_const_1(CONSTANT,33)
    assign i_arrayidx1_example14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx42_example16_vt_join(BITJOIN,37)@3
    assign i_arrayidx42_example16_vt_join_q = {i_arrayidx42_example16_vt_select_63_b, i_arrayidx1_example14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_example4_example17(BLACKBOX,55)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_example4_example_avm_address@20000000
    // out out_unnamed_example4_example_avm_burstcount@20000000
    // out out_unnamed_example4_example_avm_byteenable@20000000
    // out out_unnamed_example4_example_avm_enable@20000000
    // out out_unnamed_example4_example_avm_read@20000000
    // out out_unnamed_example4_example_avm_write@20000000
    // out out_unnamed_example4_example_avm_writedata@20000000
    example_i_llvm_fpga_mem_unnamed_4_example0 thei_llvm_fpga_mem_unnamed_example4_example17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_example16_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_example4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_example4_example_avm_readdata(in_unnamed_example4_example_avm_readdata),
        .in_unnamed_example4_example_avm_readdatavalid(in_unnamed_example4_example_avm_readdatavalid),
        .in_unnamed_example4_example_avm_waitrequest(in_unnamed_example4_example_avm_waitrequest),
        .in_unnamed_example4_example_avm_writeack(in_unnamed_example4_example_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_example4_example17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_example4_example_avm_address(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_address),
        .out_unnamed_example4_example_avm_burstcount(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_burstcount),
        .out_unnamed_example4_example_avm_byteenable(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_byteenable),
        .out_unnamed_example4_example_avm_enable(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_enable),
        .out_unnamed_example4_example_avm_read(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_read),
        .out_unnamed_example4_example_avm_write(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_write),
        .out_unnamed_example4_example_avm_writedata(i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,196)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together80_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_example_A_pmem(CONSTANT,4)
    assign c_example_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_example0_upper_bits_x_merged_bit_select(BITSELECT,227)@3
    assign i_arrayidx1_example0_upper_bits_x_merged_bit_select_b = c_example_A_pmem_q[63:9];
    assign i_arrayidx1_example0_upper_bits_x_merged_bit_select_c = c_example_A_pmem_q[8:0];

    // i_arrayidx1_example0_add_x(ADD,90)@3
    assign i_arrayidx1_example0_add_x_a = {1'b0, i_arrayidx1_example0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_example0_add_x_b = {1'b0, i_arrayidx1_example0_shift_join_x_q};
    assign i_arrayidx1_example0_add_x_o = $unsigned(i_arrayidx1_example0_add_x_a) + $unsigned(i_arrayidx1_example0_add_x_b);
    assign i_arrayidx1_example0_add_x_q = i_arrayidx1_example0_add_x_o[9:0];

    // i_arrayidx1_example0_dupName_2_trunc_sel_x(BITSELECT,101)@3
    assign i_arrayidx1_example0_dupName_2_trunc_sel_x_b = i_arrayidx1_example0_add_x_q[8:0];

    // i_arrayidx1_example0_append_upper_bits_x(BITJOIN,91)@3
    assign i_arrayidx1_example0_append_upper_bits_x_q = {i_arrayidx1_example0_upper_bits_x_merged_bit_select_b, i_arrayidx1_example0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_example14_vt_select_63(BITSELECT,35)@3
    assign i_arrayidx1_example14_vt_select_63_b = i_arrayidx1_example0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_example14_vt_join(BITJOIN,34)@3
    assign i_arrayidx1_example14_vt_join_q = {i_arrayidx1_example14_vt_select_63_b, i_arrayidx1_example14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_example3_example15(BLACKBOX,54)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_example3_example_avm_address@20000000
    // out out_unnamed_example3_example_avm_burstcount@20000000
    // out out_unnamed_example3_example_avm_byteenable@20000000
    // out out_unnamed_example3_example_avm_enable@20000000
    // out out_unnamed_example3_example_avm_read@20000000
    // out out_unnamed_example3_example_avm_write@20000000
    // out out_unnamed_example3_example_avm_writedata@20000000
    example_i_llvm_fpga_mem_unnamed_3_example0 thei_llvm_fpga_mem_unnamed_example3_example15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_example14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_example4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_example3_example_avm_readdata(in_unnamed_example3_example_avm_readdata),
        .in_unnamed_example3_example_avm_readdatavalid(in_unnamed_example3_example_avm_readdatavalid),
        .in_unnamed_example3_example_avm_waitrequest(in_unnamed_example3_example_avm_waitrequest),
        .in_unnamed_example3_example_avm_writeack(in_unnamed_example3_example_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_example3_example15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_example3_example_avm_address(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_address),
        .out_unnamed_example3_example_avm_burstcount(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_burstcount),
        .out_unnamed_example3_example_avm_byteenable(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_byteenable),
        .out_unnamed_example3_example_avm_enable(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_enable),
        .out_unnamed_example3_example_avm_read(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_read),
        .out_unnamed_example3_example_avm_write(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_write),
        .out_unnamed_example3_example_avm_writedata(i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_example18(BLACKBOX,76)@7
    // out out_primWireOut@10
    example_flt_i_sfc_logic_s_c0_in_for_body00002463a0054c2a6342iyc5 thei_sub_example18 (
        .in_0(i_llvm_fpga_mem_unnamed_example3_example15_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_example4_example17_out_o_readdata),
        .out_primWireOut(i_sub_example18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_example21(BLACKBOX,32)@10
    // out out_primWireOut@13
    example_flt_i_sfc_logic_s_c0_in_for_body00003a0054c2a6344c246w65 thei_add_example21 (
        .in_0(i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out),
        .in_1(i_sub_example18_out_primWireOut),
        .out_primWireOut(i_add_example21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // frac_y_uid149_i_cmp5_example19(BITSELECT,148)@10
    assign frac_y_uid149_i_cmp5_example19_b = c_float_0_000000e_0059_q[22:0];

    // cstZeroWF_uid129_i_cmp5_example19(CONSTANT,128)
    assign cstZeroWF_uid129_i_cmp5_example19_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid152_i_cmp5_example19(LOGICAL,151)@10
    assign fracXIsZero_uid152_i_cmp5_example19_q = $unsigned(cstZeroWF_uid129_i_cmp5_example19_q == frac_y_uid149_i_cmp5_example19_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid153_i_cmp5_example19(LOGICAL,152)@10
    assign fracXIsNotZero_uid153_i_cmp5_example19_q = ~ (fracXIsZero_uid152_i_cmp5_example19_q);

    // exp_y_uid148_i_cmp5_example19(BITSELECT,147)@10
    assign exp_y_uid148_i_cmp5_example19_b = c_float_0_000000e_0059_q[30:23];

    // expXIsMax_uid151_i_cmp5_example19(LOGICAL,150)@10
    assign expXIsMax_uid151_i_cmp5_example19_q = $unsigned(exp_y_uid148_i_cmp5_example19_b == c_i8_163_q ? 1'b1 : 1'b0);

    // excN_y_uid156_i_cmp5_example19(LOGICAL,155)@10
    assign excN_y_uid156_i_cmp5_example19_q = expXIsMax_uid151_i_cmp5_example19_q & fracXIsNotZero_uid153_i_cmp5_example19_q;

    // frac_x_uid132_i_cmp5_example19(BITSELECT,131)@10
    assign frac_x_uid132_i_cmp5_example19_b = i_sub_example18_out_primWireOut[22:0];

    // fracXIsZero_uid135_i_cmp5_example19(LOGICAL,134)@10
    assign fracXIsZero_uid135_i_cmp5_example19_q = $unsigned(cstZeroWF_uid129_i_cmp5_example19_q == frac_x_uid132_i_cmp5_example19_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid136_i_cmp5_example19(LOGICAL,135)@10
    assign fracXIsNotZero_uid136_i_cmp5_example19_q = ~ (fracXIsZero_uid135_i_cmp5_example19_q);

    // exp_x_uid131_i_cmp5_example19(BITSELECT,130)@10
    assign exp_x_uid131_i_cmp5_example19_b = i_sub_example18_out_primWireOut[30:23];

    // expXIsMax_uid134_i_cmp5_example19(LOGICAL,133)@10
    assign expXIsMax_uid134_i_cmp5_example19_q = $unsigned(exp_x_uid131_i_cmp5_example19_b == c_i8_163_q ? 1'b1 : 1'b0);

    // excN_x_uid139_i_cmp5_example19(LOGICAL,138)@10
    assign excN_x_uid139_i_cmp5_example19_q = expXIsMax_uid134_i_cmp5_example19_q & fracXIsNotZero_uid136_i_cmp5_example19_q;

    // oneIsNaN_uid162_i_cmp5_example19(LOGICAL,161)@10 + 1
    assign oneIsNaN_uid162_i_cmp5_example19_qi = excN_x_uid139_i_cmp5_example19_q | excN_y_uid156_i_cmp5_example19_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid162_i_cmp5_example19_delay ( .xin(oneIsNaN_uid162_i_cmp5_example19_qi), .xout(oneIsNaN_uid162_i_cmp5_example19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid130_i_cmp5_example19(CONSTANT,129)
    assign cstAllZWE_uid130_i_cmp5_example19_q = $unsigned(8'b00000000);

    // expXIsZero_uid150_i_cmp5_example19(LOGICAL,149)@10
    assign expXIsZero_uid150_i_cmp5_example19_q = $unsigned(exp_y_uid148_i_cmp5_example19_b == cstAllZWE_uid130_i_cmp5_example19_q ? 1'b1 : 1'b0);

    // excZ_y_uid154_i_cmp5_example19(LOGICAL,153)@10
    assign excZ_y_uid154_i_cmp5_example19_q = expXIsZero_uid150_i_cmp5_example19_q & fracXIsZero_uid152_i_cmp5_example19_q;

    // invExcYZ_uid184_i_cmp5_example19(LOGICAL,183)@10
    assign invExcYZ_uid184_i_cmp5_example19_q = ~ (excZ_y_uid154_i_cmp5_example19_q);

    // expXIsZero_uid133_i_cmp5_example19(LOGICAL,132)@10
    assign expXIsZero_uid133_i_cmp5_example19_q = $unsigned(exp_x_uid131_i_cmp5_example19_b == cstAllZWE_uid130_i_cmp5_example19_q ? 1'b1 : 1'b0);

    // excZ_x_uid137_i_cmp5_example19(LOGICAL,136)@10
    assign excZ_x_uid137_i_cmp5_example19_q = expXIsZero_uid133_i_cmp5_example19_q & fracXIsZero_uid135_i_cmp5_example19_q;

    // invExcXZ_uid185_i_cmp5_example19(LOGICAL,184)@10
    assign invExcXZ_uid185_i_cmp5_example19_q = ~ (excZ_x_uid137_i_cmp5_example19_q);

    // oneNonZero_uid186_i_cmp5_example19(LOGICAL,185)@10
    assign oneNonZero_uid186_i_cmp5_example19_q = invExcXZ_uid185_i_cmp5_example19_q | invExcYZ_uid184_i_cmp5_example19_q;

    // two_uid178_i_cmp5_example19(CONSTANT,177)
    assign two_uid178_i_cmp5_example19_q = $unsigned(2'b10);

    // signX_uid176_i_cmp5_example19(BITSELECT,175)@10
    assign signX_uid176_i_cmp5_example19_b = $unsigned(i_sub_example18_out_primWireOut[31:31]);

    // signY_uid177_i_cmp5_example19(BITSELECT,176)@10
    assign signY_uid177_i_cmp5_example19_b = $unsigned(c_float_0_000000e_0059_q[31:31]);

    // concSXSY_uid179_i_cmp5_example19(BITJOIN,178)@10
    assign concSXSY_uid179_i_cmp5_example19_q = {signX_uid176_i_cmp5_example19_b, signY_uid177_i_cmp5_example19_b};

    // sxLTsy_uid180_i_cmp5_example19(LOGICAL,179)@10
    assign sxLTsy_uid180_i_cmp5_example19_q = $unsigned(concSXSY_uid179_i_cmp5_example19_q == two_uid178_i_cmp5_example19_q ? 1'b1 : 1'b0);

    // rc2_uid187_i_cmp5_example19(LOGICAL,186)@10
    assign rc2_uid187_i_cmp5_example19_q = sxLTsy_uid180_i_cmp5_example19_q & oneNonZero_uid186_i_cmp5_example19_q;

    // expFracX_uid167_i_cmp5_example19(BITJOIN,166)@10
    assign expFracX_uid167_i_cmp5_example19_q = {exp_x_uid131_i_cmp5_example19_b, frac_x_uid132_i_cmp5_example19_b};

    // expFracY_uid169_i_cmp5_example19(BITJOIN,168)@10
    assign expFracY_uid169_i_cmp5_example19_q = {exp_y_uid148_i_cmp5_example19_b, frac_y_uid149_i_cmp5_example19_b};

    // efxGTefy_uid171_i_cmp5_example19(COMPARE,170)@10
    assign efxGTefy_uid171_i_cmp5_example19_a = {2'b00, expFracY_uid169_i_cmp5_example19_q};
    assign efxGTefy_uid171_i_cmp5_example19_b = {2'b00, expFracX_uid167_i_cmp5_example19_q};
    assign efxGTefy_uid171_i_cmp5_example19_o = $unsigned(efxGTefy_uid171_i_cmp5_example19_a) - $unsigned(efxGTefy_uid171_i_cmp5_example19_b);
    assign efxGTefy_uid171_i_cmp5_example19_c[0] = efxGTefy_uid171_i_cmp5_example19_o[32];

    // efxLTefy_uid172_i_cmp5_example19(COMPARE,171)@10
    assign efxLTefy_uid172_i_cmp5_example19_a = {2'b00, expFracX_uid167_i_cmp5_example19_q};
    assign efxLTefy_uid172_i_cmp5_example19_b = {2'b00, expFracY_uid169_i_cmp5_example19_q};
    assign efxLTefy_uid172_i_cmp5_example19_o = $unsigned(efxLTefy_uid172_i_cmp5_example19_a) - $unsigned(efxLTefy_uid172_i_cmp5_example19_b);
    assign efxLTefy_uid172_i_cmp5_example19_c[0] = efxLTefy_uid172_i_cmp5_example19_o[32];

    // expFracCompMux_uid183_i_cmp5_example19(MUX,182)@10
    assign expFracCompMux_uid183_i_cmp5_example19_s = signX_uid176_i_cmp5_example19_b;
    always @(expFracCompMux_uid183_i_cmp5_example19_s or efxLTefy_uid172_i_cmp5_example19_c or efxGTefy_uid171_i_cmp5_example19_c)
    begin
        unique case (expFracCompMux_uid183_i_cmp5_example19_s)
            1'b0 : expFracCompMux_uid183_i_cmp5_example19_q = efxLTefy_uid172_i_cmp5_example19_c;
            1'b1 : expFracCompMux_uid183_i_cmp5_example19_q = efxGTefy_uid171_i_cmp5_example19_c;
            default : expFracCompMux_uid183_i_cmp5_example19_q = 1'b0;
        endcase
    end

    // xorSigns_uid181_i_cmp5_example19(LOGICAL,180)@10
    assign xorSigns_uid181_i_cmp5_example19_q = signX_uid176_i_cmp5_example19_b ^ signY_uid177_i_cmp5_example19_b;

    // sxEQsy_uid182_i_cmp5_example19(LOGICAL,181)@10
    assign sxEQsy_uid182_i_cmp5_example19_q = ~ (xorSigns_uid181_i_cmp5_example19_q);

    // sxEQsyExpFracCompMux_uid188_i_cmp5_example19(LOGICAL,187)@10
    assign sxEQsyExpFracCompMux_uid188_i_cmp5_example19_q = sxEQsy_uid182_i_cmp5_example19_q & expFracCompMux_uid183_i_cmp5_example19_q;

    // r_uid189_i_cmp5_example19(LOGICAL,188)@10 + 1
    assign r_uid189_i_cmp5_example19_qi = sxEQsyExpFracCompMux_uid188_i_cmp5_example19_q | rc2_uid187_i_cmp5_example19_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid189_i_cmp5_example19_delay ( .xin(r_uid189_i_cmp5_example19_qi), .xout(r_uid189_i_cmp5_example19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid190_i_cmp5_example19(LOGICAL,189)@11 + 1
    assign rPostExc_uid190_i_cmp5_example19_qi = r_uid189_i_cmp5_example19_q | oneIsNaN_uid162_i_cmp5_example19_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rPostExc_uid190_i_cmp5_example19_delay ( .xin(rPostExc_uid190_i_cmp5_example19_qi), .xout(rPostExc_uid190_i_cmp5_example19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_rPostExc_uid190_i_cmp5_example19_q_2(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rPostExc_uid190_i_cmp5_example19_q_2_q <= '0;
        end
        else
        begin
            redist0_rPostExc_uid190_i_cmp5_example19_q_2_q <= $unsigned(rPostExc_uid190_i_cmp5_example19_q);
        end
    end

    // i_unnamed_example22(MUX,77)@13
    assign i_unnamed_example22_s = redist0_rPostExc_uid190_i_cmp5_example19_q_2_q;
    always @(i_unnamed_example22_s or i_add_example21_out_primWireOut or redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_q)
    begin
        unique case (i_unnamed_example22_s)
            1'b0 : i_unnamed_example22_q = i_add_example21_out_primWireOut;
            1'b1 : i_unnamed_example22_q = redist8_i_llvm_fpga_pop_f32_s_010_pop7_example20_out_data_out_3_q;
            default : i_unnamed_example22_q = 32'b0;
        endcase
    end

    // redist10_i_first_cleanup_xor_example4_q_10(DELAY,239)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_first_cleanup_xor_example4_q_10 ( .xin(i_first_cleanup_xor_example4_q), .xout(redist10_i_first_cleanup_xor_example4_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_example5_example36(BLACKBOX,53)@13
    // out out_intel_reserved_ffwd_0_0@20000000
    example_i_llvm_fpga_ffwd_source_f32_unnamed_5_example0 thei_llvm_fpga_ffwd_source_f32_unnamed_example5_example36 (
        .in_predicate_in(redist10_i_first_cleanup_xor_example4_q_10_q),
        .in_src_data_in_0_0(i_unnamed_example22_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_example5_example36_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,82)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_example5_example36_out_intel_reserved_ffwd_0_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,88)
    assign out_unnamed_example3_example_avm_address = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_address;
    assign out_unnamed_example3_example_avm_enable = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_enable;
    assign out_unnamed_example3_example_avm_read = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_read;
    assign out_unnamed_example3_example_avm_write = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_write;
    assign out_unnamed_example3_example_avm_writedata = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_writedata;
    assign out_unnamed_example3_example_avm_byteenable = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_byteenable;
    assign out_unnamed_example3_example_avm_burstcount = i_llvm_fpga_mem_unnamed_example3_example15_out_unnamed_example3_example_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,89)
    assign out_unnamed_example4_example_avm_address = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_address;
    assign out_unnamed_example4_example_avm_enable = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_enable;
    assign out_unnamed_example4_example_avm_read = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_read;
    assign out_unnamed_example4_example_avm_write = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_write;
    assign out_unnamed_example4_example_avm_writedata = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_writedata;
    assign out_unnamed_example4_example_avm_byteenable = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_byteenable;
    assign out_unnamed_example4_example_avm_burstcount = i_llvm_fpga_mem_unnamed_example4_example17_out_unnamed_example4_example_avm_burstcount;

    // valid_fanout_reg0(REG,191)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together80_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_masked_example37(LOGICAL,69)@3 + 1
    assign i_masked_example37_qi = i_notcmp_example29_q & i_first_cleanup_example3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_example37_delay ( .xin(i_masked_example37_qi), .xout(i_masked_example37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_example37_q_10(DELAY,236)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_masked_example37_q_10 ( .xin(i_masked_example37_q), .xout(redist7_i_masked_example37_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,125)@13
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist9_i_llvm_fpga_pipeline_keep_going_example6_out_data_out_10_q;
    assign out_c0_exi2_2_tpl = redist7_i_masked_example37_q_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_example1 = GND_q;

endmodule
