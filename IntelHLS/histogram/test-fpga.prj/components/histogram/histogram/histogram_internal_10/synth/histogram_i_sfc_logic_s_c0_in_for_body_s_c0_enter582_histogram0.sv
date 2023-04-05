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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_histograms_c0_enter582_histogram0
// Created for function/kernel histogram
// SystemVerilog created on Tue Apr  4 14:08:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_i_sfc_logic_s_c0_in_for_body_s_c0_enter582_histogram0 (
    input wire [31:0] in_memdep_histogram_avm_readdata,
    input wire [0:0] in_memdep_histogram_avm_writeack,
    input wire [0:0] in_memdep_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_histogram_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going42_histogram6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going42_histogram6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_4_histogram_avm_readdata,
    input wire [0:0] in_memdep_4_histogram_avm_writeack,
    input wire [0:0] in_memdep_4_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_4_histogram_avm_readdatavalid,
    output wire [31:0] out_memdep_histogram_avm_address,
    output wire [0:0] out_memdep_histogram_avm_enable,
    output wire [0:0] out_memdep_histogram_avm_read,
    output wire [0:0] out_memdep_histogram_avm_write,
    output wire [31:0] out_memdep_histogram_avm_writedata,
    output wire [3:0] out_memdep_histogram_avm_byteenable,
    output wire [0:0] out_memdep_histogram_avm_burstcount,
    input wire [31:0] in_memdep_5_histogram_avm_readdata,
    input wire [0:0] in_memdep_5_histogram_avm_writeack,
    input wire [0:0] in_memdep_5_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_5_histogram_avm_readdatavalid,
    output wire [31:0] out_memdep_4_histogram_avm_address,
    output wire [0:0] out_memdep_4_histogram_avm_enable,
    output wire [0:0] out_memdep_4_histogram_avm_read,
    output wire [0:0] out_memdep_4_histogram_avm_write,
    output wire [31:0] out_memdep_4_histogram_avm_writedata,
    output wire [3:0] out_memdep_4_histogram_avm_byteenable,
    output wire [0:0] out_memdep_4_histogram_avm_burstcount,
    output wire [31:0] out_memdep_5_histogram_avm_address,
    output wire [0:0] out_memdep_5_histogram_avm_enable,
    output wire [0:0] out_memdep_5_histogram_avm_read,
    output wire [0:0] out_memdep_5_histogram_avm_write,
    output wire [31:0] out_memdep_5_histogram_avm_writedata,
    output wire [3:0] out_memdep_5_histogram_avm_byteenable,
    output wire [0:0] out_memdep_5_histogram_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_histogram1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0055_q;
    wire [63:0] c_histogram_feature_pmem_q;
    wire [63:0] c_histogram_hist_pmem_q;
    wire [63:0] c_histogram_weight_pmem_q;
    wire [31:0] c_i32_053_q;
    wire [31:0] c_i32_154_q;
    wire [3:0] c_i4_750_q;
    wire [7:0] c_i8_158_q;
    wire [7:0] c_i8_9856_q;
    wire [32:0] i_add_histogram13_a;
    wire [32:0] i_add_histogram13_b;
    logic [32:0] i_add_histogram13_o;
    wire [32:0] i_add_histogram13_q;
    wire [1:0] i_arrayidx1_histogram16_vt_const_1_q;
    wire [63:0] i_arrayidx1_histogram16_vt_join_q;
    wire [61:0] i_arrayidx1_histogram16_vt_select_63_b;
    wire [63:0] i_arrayidx52_histogram20_vt_join_q;
    wire [61:0] i_arrayidx52_histogram20_vt_select_63_b;
    wire [63:0] i_arrayidx73_histogram22_vt_join_q;
    wire [61:0] i_arrayidx73_histogram22_vt_select_63_b;
    wire [3:0] i_cleanups_shl46_histogram5_vt_join_q;
    wire [2:0] i_cleanups_shl46_histogram5_vt_select_3_b;
    wire [31:0] i_conv_histogram19_out_primWireOut;
    wire [0:0] i_first_cleanup_xor48_histogram4_q;
    wire [8:0] i_fpga_indvars_iv_next_histogram32_a;
    wire [8:0] i_fpga_indvars_iv_next_histogram32_b;
    logic [8:0] i_fpga_indvars_iv_next_histogram32_o;
    wire [8:0] i_fpga_indvars_iv_next_histogram32_q;
    wire [63:0] i_idxprom_histogram15_vt_join_q;
    wire [31:0] i_idxprom_histogram15_vt_select_31_b;
    wire [31:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going42_histogram6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_feedback_stall_out_12;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_valid_out_10;
    wire [0:0] i_masked51_histogram34_qi;
    reg [0:0] i_masked51_histogram34_q;
    wire [31:0] i_mul_histogram18_vt_join_q;
    wire [30:0] i_mul_histogram18_vt_select_31_b;
    wire [0:0] i_next_cleanups50_histogram30_s;
    reg [3:0] i_next_cleanups50_histogram30_q;
    wire [3:0] i_next_initerations41_histogram8_vt_join_q;
    wire [2:0] i_next_initerations41_histogram8_vt_select_2_b;
    wire [0:0] i_notcmp38_histogram27_q;
    wire [0:0] i_or49_histogram29_q;
    wire [31:0] bgTrunc_i_add_histogram13_sel_x_b;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_histogram32_sel_x_b;
    wire [9:0] i_arrayidx1_histogram0_add_x_a;
    wire [9:0] i_arrayidx1_histogram0_add_x_b;
    logic [9:0] i_arrayidx1_histogram0_add_x_o;
    wire [9:0] i_arrayidx1_histogram0_add_x_q;
    wire [63:0] i_arrayidx1_histogram0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_histogram0_narrow_x_b;
    wire [8:0] i_arrayidx1_histogram0_shift_join_x_q;
    wire [8:0] i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx52_histogram0_add_x_a;
    wire [9:0] i_arrayidx52_histogram0_add_x_b;
    logic [9:0] i_arrayidx52_histogram0_add_x_o;
    wire [9:0] i_arrayidx52_histogram0_add_x_q;
    wire [63:0] i_arrayidx52_histogram0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx73_histogram0_add_x_a;
    wire [9:0] i_arrayidx73_histogram0_add_x_b;
    logic [9:0] i_arrayidx73_histogram0_add_x_o;
    wire [9:0] i_arrayidx73_histogram0_add_x_q;
    wire [63:0] i_arrayidx73_histogram0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup47_histogram3_sel_x_b;
    wire [63:0] i_idxprom_histogram15_sel_x_b;
    wire [0:0] i_last_initeration43_histogram10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_histogram25_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid169_i_cleanups_shl46_histogram0_shift_x_q;
    wire [0:0] leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_s;
    reg [3:0] leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid177_i_mul_histogram0_shift_x_q;
    wire [0:0] leftShiftStage0_uid179_i_mul_histogram0_shift_x_s;
    reg [31:0] leftShiftStage0_uid179_i_mul_histogram0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid183_i_next_initerations41_histogram0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid185_i_next_initerations41_histogram0_shift_x_q;
    wire [0:0] rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_s;
    reg [3:0] rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_q;
    wire [54:0] i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together73_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together73_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist4_sync_together73_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist4_sync_together73_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist4_sync_together73_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist4_sync_together73_aunroll_x_in_i_valid_6_delay_2;
    reg [0:0] redist5_sync_together73_aunroll_x_in_i_valid_7_q;
    reg [8:0] redist6_i_arrayidx1_histogram0_shift_join_x_q_5_q;
    reg [8:0] redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_0;
    reg [8:0] redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_1;
    reg [8:0] redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_2;
    reg [0:0] redist7_i_masked51_histogram34_q_6_q;
    reg [0:0] redist7_i_masked51_histogram34_q_6_delay_0;
    reg [0:0] redist7_i_masked51_histogram34_q_6_delay_1;
    reg [0:0] redist7_i_masked51_histogram34_q_6_delay_2;
    reg [0:0] redist7_i_masked51_histogram34_q_6_delay_3;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_8_q;
    reg [0:0] redist12_i_first_cleanup_xor48_histogram4_q_5_q;
    reg [0:0] redist12_i_first_cleanup_xor48_histogram4_q_5_delay_0;
    reg [0:0] redist12_i_first_cleanup_xor48_histogram4_q_5_delay_1;
    reg [0:0] redist12_i_first_cleanup_xor48_histogram4_q_5_delay_2;
    reg [0:0] redist12_i_first_cleanup_xor48_histogram4_q_5_delay_3;
    reg [8:0] redist6_i_arrayidx1_histogram0_shift_join_x_q_5_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together73_aunroll_x_in_i_valid_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together73_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together73_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together73_aunroll_x_in_i_valid_2(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together73_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out);
        end
    end

    // redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x(BITSELECT,167)@3
    assign leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_in = i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_b = leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid169_i_cleanups_shl46_histogram0_shift_x(BITJOIN,168)@3
    assign leftShiftStage0Idx1_uid169_i_cleanups_shl46_histogram0_shift_x_q = {leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl46_histogram0_shift_x_b, GND_q};

    // leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x(MUX,170)@3
    assign leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_s or i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out or leftShiftStage0Idx1_uid169_i_cleanups_shl46_histogram0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_s)
            1'b0 : leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_q = i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out;
            1'b1 : leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_q = leftShiftStage0Idx1_uid169_i_cleanups_shl46_histogram0_shift_x_q;
            default : leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl46_histogram5_vt_select_3(BITSELECT,43)@3
    assign i_cleanups_shl46_histogram5_vt_select_3_b = leftShiftStage0_uid171_i_cleanups_shl46_histogram0_shift_x_q[3:1];

    // i_cleanups_shl46_histogram5_vt_join(BITJOIN,42)@3
    assign i_cleanups_shl46_histogram5_vt_join_q = {i_cleanups_shl46_histogram5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor48_histogram4(LOGICAL,47)@3
    assign i_first_cleanup_xor48_histogram4_q = i_first_cleanup47_histogram3_sel_x_b ^ VCC_q;

    // i_notcmp38_histogram27(LOGICAL,76)@3
    assign i_notcmp38_histogram27_q = i_exitcond_histogram25_cmp_nsign_q ^ VCC_q;

    // i_or49_histogram29(LOGICAL,77)@3
    assign i_or49_histogram29_q = i_notcmp38_histogram27_q | i_first_cleanup_xor48_histogram4_q;

    // i_next_cleanups50_histogram30(MUX,72)@3
    assign i_next_cleanups50_histogram30_s = i_or49_histogram29_q;
    always @(i_next_cleanups50_histogram30_s or i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out or i_cleanups_shl46_histogram5_vt_join_q)
    begin
        unique case (i_next_cleanups50_histogram30_s)
            1'b0 : i_next_cleanups50_histogram30_q = i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out;
            1'b1 : i_next_cleanups50_histogram30_q = i_cleanups_shl46_histogram5_vt_join_q;
            default : i_next_cleanups50_histogram30_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups45_push13_histogram31(BLACKBOX,65)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    histogram_i_llvm_fpga_push_i4_cleanups45_push13_0 thei_llvm_fpga_push_i4_cleanups45_push13_histogram31 (
        .in_data_in(i_next_cleanups50_histogram30_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_feedback_stall_out_13),
        .in_keep_going42(redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together73_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_750(CONSTANT,26)
    assign c_i4_750_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2(BLACKBOX,59)@3
    // out out_feedback_stall_out_13@20000000
    histogram_i_llvm_fpga_pop_i4_cleanups45_pop13_0 thei_llvm_fpga_pop_i4_cleanups45_pop13_histogram2 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups45_push13_histogram31_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together73_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup47_histogram3_sel_x(BITSELECT,132)@3
    assign i_first_cleanup47_histogram3_sel_x_b = i_llvm_fpga_pop_i4_cleanups45_pop13_histogram2_out_data_out[0:0];

    // c_i8_158(CONSTANT,27)
    assign c_i8_158_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_histogram32(ADD,48)@3
    assign i_fpga_indvars_iv_next_histogram32_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_data_out};
    assign i_fpga_indvars_iv_next_histogram32_b = {1'b0, c_i8_158_q};
    assign i_fpga_indvars_iv_next_histogram32_o = $unsigned(i_fpga_indvars_iv_next_histogram32_a) + $unsigned(i_fpga_indvars_iv_next_histogram32_b);
    assign i_fpga_indvars_iv_next_histogram32_q = i_fpga_indvars_iv_next_histogram32_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_histogram32_sel_x(BITSELECT,85)@3
    assign bgTrunc_i_fpga_indvars_iv_next_histogram32_sel_x_b = i_fpga_indvars_iv_next_histogram32_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33(BLACKBOX,67)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    histogram_i_llvm_fpga_push_i8_fpga_indvars_iv_push10_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_histogram32_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_feedback_stall_out_10),
        .in_keep_going42(redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together73_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9856(CONSTANT,28)
    assign c_i8_9856_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24(BLACKBOX,61)@3
    // out out_feedback_stall_out_10@20000000
    histogram_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24 (
        .in_data_in(c_i8_9856_q),
        .in_dir(redist1_sync_together73_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i8_fpga_indvars_iv_push10_histogram33_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together73_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_histogram25_cmp_nsign(LOGICAL,163)@3
    assign i_exitcond_histogram25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop10_histogram24_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond52_histogram28(BLACKBOX,63)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    histogram_i_llvm_fpga_push_i1_notexitcond52_0 thei_llvm_fpga_push_i1_notexitcond52_histogram28 (
        .in_data_in(i_exitcond_histogram25_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going42_histogram6_out_not_exitcond_stall_out),
        .in_first_cleanup47(i_first_cleanup47_histogram3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together73_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,148)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid183_i_next_initerations41_histogram0_shift_x(BITSELECT,182)@2
    assign rightShiftStage0Idx1Rng1_uid183_i_next_initerations41_histogram0_shift_x_b = i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid185_i_next_initerations41_histogram0_shift_x(BITJOIN,184)@2
    assign rightShiftStage0Idx1_uid185_i_next_initerations41_histogram0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid183_i_next_initerations41_histogram0_shift_x_b};

    // valid_fanout_reg1(REG,146)@1 + 1
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

    // valid_fanout_reg2(REG,147)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations40_push12_histogram9(BLACKBOX,66)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    histogram_i_llvm_fpga_push_i4_initerations40_push12_0 thei_llvm_fpga_push_i4_initerations40_push12_histogram9 (
        .in_data_in(i_next_initerations41_histogram8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_feedback_stall_out_12),
        .in_keep_going42(redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations40_pop12_histogram7(BLACKBOX,60)@2
    // out out_feedback_stall_out_12@20000000
    histogram_i_llvm_fpga_pop_i4_initerations40_pop12_0 thei_llvm_fpga_pop_i4_initerations40_pop12_histogram7 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations40_push12_histogram9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x(MUX,186)@2
    assign rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_s or i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_data_out or rightShiftStage0Idx1_uid185_i_next_initerations41_histogram0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_s)
            1'b0 : rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_q = i_llvm_fpga_pop_i4_initerations40_pop12_histogram7_out_data_out;
            1'b1 : rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_q = rightShiftStage0Idx1_uid185_i_next_initerations41_histogram0_shift_x_q;
            default : rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations41_histogram8_vt_select_2(BITSELECT,75)@2
    assign i_next_initerations41_histogram8_vt_select_2_b = rightShiftStage0_uid187_i_next_initerations41_histogram0_shift_x_q[2:0];

    // i_next_initerations41_histogram8_vt_join(BITJOIN,74)@2
    assign i_next_initerations41_histogram8_vt_join_q = {GND_q, i_next_initerations41_histogram8_vt_select_2_b};

    // i_last_initeration43_histogram10_sel_x(BITSELECT,134)@2
    assign i_last_initeration43_histogram10_sel_x_b = i_next_initerations41_histogram8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration44_histogram11(BLACKBOX,62)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    histogram_i_llvm_fpga_push_i1_lastiniteration44_0 thei_llvm_fpga_push_i1_lastiniteration44_histogram11 (
        .in_data_in(i_last_initeration43_histogram10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going42_histogram6_out_initeration_stall_out),
        .in_keep_going42(redist9_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going42_histogram6(BLACKBOX,57)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    histogram_i_llvm_fpga_pipeline_keep_going42_0 thei_llvm_fpga_pipeline_keep_going42_histogram6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration44_histogram11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond52_histogram28_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going42_histogram6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going42_histogram6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going42_histogram6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going42_histogram6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going42_histogram6_out_pipeline_valid_out;

    // c_i32_154(CONSTANT,24)
    assign c_i32_154_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg4(REG,149)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,150)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_023_push11_histogram14(BLACKBOX,64)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    histogram_i_llvm_fpga_push_i32_i_023_push11_0 thei_llvm_fpga_push_i32_i_023_push11_histogram14 (
        .in_data_in(bgTrunc_i_add_histogram13_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_feedback_stall_out_11),
        .in_keep_going42(redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_053(CONSTANT,23)
    assign c_i32_053_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_023_pop11_histogram12(BLACKBOX,58)@2
    // out out_feedback_stall_out_11@20000000
    histogram_i_llvm_fpga_pop_i32_i_023_pop11_0 thei_llvm_fpga_pop_i32_i_023_pop11_histogram12 (
        .in_data_in(c_i32_053_q),
        .in_dir(redist0_sync_together73_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_023_push11_histogram14_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out);
        end
    end

    // i_add_histogram13(ADD,31)@3
    assign i_add_histogram13_a = {1'b0, redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q};
    assign i_add_histogram13_b = {1'b0, c_i32_154_q};
    assign i_add_histogram13_o = $unsigned(i_add_histogram13_a) + $unsigned(i_add_histogram13_b);
    assign i_add_histogram13_q = i_add_histogram13_o[32:0];

    // bgTrunc_i_add_histogram13_sel_x(BITSELECT,84)@3
    assign bgTrunc_i_add_histogram13_sel_x_b = i_add_histogram13_q[31:0];

    // valid_fanout_reg6(REG,151)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_histogram_feature_pmem(CONSTANT,5)
    assign c_histogram_feature_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_histogram0_upper_bits_x_merged_bit_select(BITSELECT,188)@3
    assign i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_feature_pmem_q[63:9];
    assign i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_feature_pmem_q[8:0];

    // i_idxprom_histogram15_sel_x(BITSELECT,133)@3
    assign i_idxprom_histogram15_sel_x_b = {32'b00000000000000000000000000000000, redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q[31:0]};

    // i_idxprom_histogram15_vt_select_31(BITSELECT,52)@3
    assign i_idxprom_histogram15_vt_select_31_b = i_idxprom_histogram15_sel_x_b[31:0];

    // i_idxprom_histogram15_vt_join(BITJOIN,51)@3
    assign i_idxprom_histogram15_vt_join_q = {c_i32_053_q, i_idxprom_histogram15_vt_select_31_b};

    // i_arrayidx1_histogram0_dupName_0_trunc_sel_x(BITSELECT,102)@3
    assign i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b = i_idxprom_histogram15_vt_join_q[8:0];

    // i_arrayidx1_histogram0_narrow_x(BITSELECT,95)@3
    assign i_arrayidx1_histogram0_narrow_x_b = i_arrayidx1_histogram0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_histogram0_shift_join_x(BITJOIN,96)@3
    assign i_arrayidx1_histogram0_shift_join_x_q = {i_arrayidx1_histogram0_narrow_x_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_arrayidx1_histogram0_add_x(ADD,92)@3
    assign i_arrayidx1_histogram0_add_x_a = {1'b0, i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_histogram0_add_x_b = {1'b0, i_arrayidx1_histogram0_shift_join_x_q};
    assign i_arrayidx1_histogram0_add_x_o = $unsigned(i_arrayidx1_histogram0_add_x_a) + $unsigned(i_arrayidx1_histogram0_add_x_b);
    assign i_arrayidx1_histogram0_add_x_q = i_arrayidx1_histogram0_add_x_o[9:0];

    // i_arrayidx1_histogram0_dupName_2_trunc_sel_x(BITSELECT,103)@3
    assign i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx1_histogram0_add_x_q[8:0];

    // i_arrayidx1_histogram0_append_upper_bits_x(BITJOIN,93)@3
    assign i_arrayidx1_histogram0_append_upper_bits_x_q = {i_arrayidx1_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx1_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_histogram16_vt_select_63(BITSELECT,34)@3
    assign i_arrayidx1_histogram16_vt_select_63_b = i_arrayidx1_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_histogram16_vt_const_1(CONSTANT,32)
    assign i_arrayidx1_histogram16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_histogram16_vt_join(BITJOIN,33)@3
    assign i_arrayidx1_histogram16_vt_join_q = {i_arrayidx1_histogram16_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_histogram17(BLACKBOX,56)@3
    // out out_memdep_histogram_avm_address@20000000
    // out out_memdep_histogram_avm_burstcount@20000000
    // out out_memdep_histogram_avm_byteenable@20000000
    // out out_memdep_histogram_avm_enable@20000000
    // out out_memdep_histogram_avm_read@20000000
    // out out_memdep_histogram_avm_write@20000000
    // out out_memdep_histogram_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    histogram_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_histogram17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_histogram16_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor48_histogram4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(bgTrunc_i_add_histogram13_sel_x_b),
        .in_memdep_histogram_avm_readdata(in_memdep_histogram_avm_readdata),
        .in_memdep_histogram_avm_readdatavalid(in_memdep_histogram_avm_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(in_memdep_histogram_avm_waitrequest),
        .in_memdep_histogram_avm_writeack(in_memdep_histogram_avm_writeack),
        .out_memdep_histogram_avm_address(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,88)
    assign out_memdep_histogram_avm_address = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_address;
    assign out_memdep_histogram_avm_enable = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_enable;
    assign out_memdep_histogram_avm_read = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_read;
    assign out_memdep_histogram_avm_write = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_write;
    assign out_memdep_histogram_avm_writedata = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_writedata;
    assign out_memdep_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_byteenable;
    assign out_memdep_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_histogram17_out_memdep_histogram_avm_burstcount;

    // leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x(BITSELECT,175)@3
    assign leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_in = redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_b = leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid177_i_mul_histogram0_shift_x(BITJOIN,176)@3
    assign leftShiftStage0Idx1_uid177_i_mul_histogram0_shift_x_q = {leftShiftStage0Idx1Rng1_uid176_i_mul_histogram0_shift_x_b, GND_q};

    // leftShiftStage0_uid179_i_mul_histogram0_shift_x(MUX,178)@3
    assign leftShiftStage0_uid179_i_mul_histogram0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid179_i_mul_histogram0_shift_x_s or redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q or leftShiftStage0Idx1_uid177_i_mul_histogram0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid179_i_mul_histogram0_shift_x_s)
            1'b0 : leftShiftStage0_uid179_i_mul_histogram0_shift_x_q = redist8_i_llvm_fpga_pop_i32_i_023_pop11_histogram12_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid179_i_mul_histogram0_shift_x_q = leftShiftStage0Idx1_uid177_i_mul_histogram0_shift_x_q;
            default : leftShiftStage0_uid179_i_mul_histogram0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_histogram18_vt_select_31(BITSELECT,71)@3
    assign i_mul_histogram18_vt_select_31_b = leftShiftStage0_uid179_i_mul_histogram0_shift_x_q[31:1];

    // i_mul_histogram18_vt_join(BITJOIN,70)@3
    assign i_mul_histogram18_vt_join_q = {i_mul_histogram18_vt_select_31_b, GND_q};

    // i_conv_histogram19(BLACKBOX,44)@3
    // out out_primWireOut@8
    histogram_flt_i_sfc_logic_s_c0_in_for_bo00006uq0cp0ju20cp0jo0ouz thei_conv_histogram19 (
        .in_0(i_mul_histogram18_vt_join_q),
        .out_primWireOut(i_conv_histogram19_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together73_aunroll_x_in_i_valid_6(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_1 <= '0;
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_2 <= '0;
            redist4_sync_together73_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist3_sync_together73_aunroll_x_in_i_valid_2_q);
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_1 <= redist4_sync_together73_aunroll_x_in_i_valid_6_delay_0;
            redist4_sync_together73_aunroll_x_in_i_valid_6_delay_2 <= redist4_sync_together73_aunroll_x_in_i_valid_6_delay_1;
            redist4_sync_together73_aunroll_x_in_i_valid_6_q <= redist4_sync_together73_aunroll_x_in_i_valid_6_delay_2;
        end
    end

    // valid_fanout_reg7(REG,152)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together73_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist12_i_first_cleanup_xor48_histogram4_q_5(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_0 <= '0;
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_1 <= '0;
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_2 <= '0;
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_3 <= '0;
            redist12_i_first_cleanup_xor48_histogram4_q_5_q <= '0;
        end
        else
        begin
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_0 <= $unsigned(i_first_cleanup_xor48_histogram4_q);
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_1 <= redist12_i_first_cleanup_xor48_histogram4_q_5_delay_0;
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_2 <= redist12_i_first_cleanup_xor48_histogram4_q_5_delay_1;
            redist12_i_first_cleanup_xor48_histogram4_q_5_delay_3 <= redist12_i_first_cleanup_xor48_histogram4_q_5_delay_2;
            redist12_i_first_cleanup_xor48_histogram4_q_5_q <= redist12_i_first_cleanup_xor48_histogram4_q_5_delay_3;
        end
    end

    // c_histogram_weight_pmem(CONSTANT,7)
    assign c_histogram_weight_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx52_histogram0_upper_bits_x_merged_bit_select(BITSELECT,190)@8
    assign i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_weight_pmem_q[63:9];
    assign i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_weight_pmem_q[8:0];

    // redist6_i_arrayidx1_histogram0_shift_join_x_q_5(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_0 <= '0;
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_1 <= '0;
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_2 <= '0;
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_0 <= $unsigned(i_arrayidx1_histogram0_shift_join_x_q);
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_1 <= redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_0;
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_2 <= redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_1;
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_q <= redist6_i_arrayidx1_histogram0_shift_join_x_q_5_delay_2;
        end
    end

    // redist6_i_arrayidx1_histogram0_shift_join_x_q_5_outputreg0(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx1_histogram0_shift_join_x_q_5_outputreg0_q <= $unsigned(redist6_i_arrayidx1_histogram0_shift_join_x_q_5_q);
        end
    end

    // i_arrayidx52_histogram0_add_x(ADD,104)@8
    assign i_arrayidx52_histogram0_add_x_a = {1'b0, i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx52_histogram0_add_x_b = {1'b0, redist6_i_arrayidx1_histogram0_shift_join_x_q_5_outputreg0_q};
    assign i_arrayidx52_histogram0_add_x_o = $unsigned(i_arrayidx52_histogram0_add_x_a) + $unsigned(i_arrayidx52_histogram0_add_x_b);
    assign i_arrayidx52_histogram0_add_x_q = i_arrayidx52_histogram0_add_x_o[9:0];

    // i_arrayidx52_histogram0_dupName_2_trunc_sel_x(BITSELECT,115)@8
    assign i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx52_histogram0_add_x_q[8:0];

    // i_arrayidx52_histogram0_append_upper_bits_x(BITJOIN,105)@8
    assign i_arrayidx52_histogram0_append_upper_bits_x_q = {i_arrayidx52_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx52_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx52_histogram20_vt_select_63(BITSELECT,37)@8
    assign i_arrayidx52_histogram20_vt_select_63_b = i_arrayidx52_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx52_histogram20_vt_join(BITJOIN,36)@8
    assign i_arrayidx52_histogram20_vt_join_q = {i_arrayidx52_histogram20_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_4_histogram21(BLACKBOX,54)@8
    // out out_memdep_4_histogram_avm_address@20000000
    // out out_memdep_4_histogram_avm_burstcount@20000000
    // out out_memdep_4_histogram_avm_byteenable@20000000
    // out out_memdep_4_histogram_avm_enable@20000000
    // out out_memdep_4_histogram_avm_read@20000000
    // out out_memdep_4_histogram_avm_write@20000000
    // out out_memdep_4_histogram_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_o_writeack@9
    histogram_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_histogram21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx52_histogram20_vt_join_q),
        .in_i_predicate(redist12_i_first_cleanup_xor48_histogram4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(i_conv_histogram19_out_primWireOut),
        .in_memdep_4_histogram_avm_readdata(in_memdep_4_histogram_avm_readdata),
        .in_memdep_4_histogram_avm_readdatavalid(in_memdep_4_histogram_avm_readdatavalid),
        .in_memdep_4_histogram_avm_waitrequest(in_memdep_4_histogram_avm_waitrequest),
        .in_memdep_4_histogram_avm_writeack(in_memdep_4_histogram_avm_writeack),
        .out_memdep_4_histogram_avm_address(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_address),
        .out_memdep_4_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_burstcount),
        .out_memdep_4_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_byteenable),
        .out_memdep_4_histogram_avm_enable(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_enable),
        .out_memdep_4_histogram_avm_read(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_read),
        .out_memdep_4_histogram_avm_write(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_write),
        .out_memdep_4_histogram_avm_writedata(i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,90)
    assign out_memdep_4_histogram_avm_address = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_address;
    assign out_memdep_4_histogram_avm_enable = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_enable;
    assign out_memdep_4_histogram_avm_read = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_read;
    assign out_memdep_4_histogram_avm_write = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_write;
    assign out_memdep_4_histogram_avm_writedata = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_writedata;
    assign out_memdep_4_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_byteenable;
    assign out_memdep_4_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_4_histogram21_out_memdep_4_histogram_avm_burstcount;

    // c_float_0_000000e_0055(FLOATCONSTANT,4)
    assign c_float_0_000000e_0055_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg8(REG,153)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_histogram_hist_pmem(CONSTANT,6)
    assign c_histogram_hist_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx73_histogram0_upper_bits_x_merged_bit_select(BITSELECT,189)@3
    assign i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_hist_pmem_q[63:9];
    assign i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_hist_pmem_q[8:0];

    // i_arrayidx73_histogram0_add_x(ADD,116)@3
    assign i_arrayidx73_histogram0_add_x_a = {1'b0, i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx73_histogram0_add_x_b = {1'b0, i_arrayidx1_histogram0_shift_join_x_q};
    assign i_arrayidx73_histogram0_add_x_o = $unsigned(i_arrayidx73_histogram0_add_x_a) + $unsigned(i_arrayidx73_histogram0_add_x_b);
    assign i_arrayidx73_histogram0_add_x_q = i_arrayidx73_histogram0_add_x_o[9:0];

    // i_arrayidx73_histogram0_dupName_2_trunc_sel_x(BITSELECT,127)@3
    assign i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx73_histogram0_add_x_q[8:0];

    // i_arrayidx73_histogram0_append_upper_bits_x(BITJOIN,117)@3
    assign i_arrayidx73_histogram0_append_upper_bits_x_q = {i_arrayidx73_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx73_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx73_histogram22_vt_select_63(BITSELECT,40)@3
    assign i_arrayidx73_histogram22_vt_select_63_b = i_arrayidx73_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx73_histogram22_vt_join(BITJOIN,39)@3
    assign i_arrayidx73_histogram22_vt_join_q = {i_arrayidx73_histogram22_vt_select_63_b, i_arrayidx1_histogram16_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_5_histogram23(BLACKBOX,55)@3
    // out out_memdep_5_histogram_avm_address@20000000
    // out out_memdep_5_histogram_avm_burstcount@20000000
    // out out_memdep_5_histogram_avm_byteenable@20000000
    // out out_memdep_5_histogram_avm_enable@20000000
    // out out_memdep_5_histogram_avm_read@20000000
    // out out_memdep_5_histogram_avm_write@20000000
    // out out_memdep_5_histogram_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    histogram_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_histogram23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx73_histogram22_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor48_histogram4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_i_writedata(c_float_0_000000e_0055_q),
        .in_memdep_5_histogram_avm_readdata(in_memdep_5_histogram_avm_readdata),
        .in_memdep_5_histogram_avm_readdatavalid(in_memdep_5_histogram_avm_readdatavalid),
        .in_memdep_5_histogram_avm_waitrequest(in_memdep_5_histogram_avm_waitrequest),
        .in_memdep_5_histogram_avm_writeack(in_memdep_5_histogram_avm_writeack),
        .out_memdep_5_histogram_avm_address(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_address),
        .out_memdep_5_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_burstcount),
        .out_memdep_5_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_byteenable),
        .out_memdep_5_histogram_avm_enable(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_enable),
        .out_memdep_5_histogram_avm_read(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_read),
        .out_memdep_5_histogram_avm_write(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_write),
        .out_memdep_5_histogram_avm_writedata(i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,91)
    assign out_memdep_5_histogram_avm_address = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_address;
    assign out_memdep_5_histogram_avm_enable = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_enable;
    assign out_memdep_5_histogram_avm_read = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_read;
    assign out_memdep_5_histogram_avm_write = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_write;
    assign out_memdep_5_histogram_avm_writedata = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_writedata;
    assign out_memdep_5_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_byteenable;
    assign out_memdep_5_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_5_histogram23_out_memdep_5_histogram_avm_burstcount;

    // redist5_sync_together73_aunroll_x_in_i_valid_7(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together73_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist5_sync_together73_aunroll_x_in_i_valid_7_q <= $unsigned(redist4_sync_together73_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg0(REG,145)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together73_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_masked51_histogram34(LOGICAL,68)@3 + 1
    assign i_masked51_histogram34_qi = i_notcmp38_histogram27_q & i_first_cleanup47_histogram3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked51_histogram34_delay ( .xin(i_masked51_histogram34_qi), .xout(i_masked51_histogram34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked51_histogram34_q_6(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_masked51_histogram34_q_6_delay_0 <= '0;
            redist7_i_masked51_histogram34_q_6_delay_1 <= '0;
            redist7_i_masked51_histogram34_q_6_delay_2 <= '0;
            redist7_i_masked51_histogram34_q_6_delay_3 <= '0;
            redist7_i_masked51_histogram34_q_6_q <= '0;
        end
        else
        begin
            redist7_i_masked51_histogram34_q_6_delay_0 <= $unsigned(i_masked51_histogram34_q);
            redist7_i_masked51_histogram34_q_6_delay_1 <= redist7_i_masked51_histogram34_q_6_delay_0;
            redist7_i_masked51_histogram34_q_6_delay_2 <= redist7_i_masked51_histogram34_q_6_delay_1;
            redist7_i_masked51_histogram34_q_6_delay_3 <= redist7_i_masked51_histogram34_q_6_delay_2;
            redist7_i_masked51_histogram34_q_6_q <= redist7_i_masked51_histogram34_q_6_delay_3;
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_8(DELAY,202)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_8 ( .xin(redist10_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_2_q), .xout(redist11_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,143)@9
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist11_i_llvm_fpga_pipeline_keep_going42_histogram6_out_data_out_8_q;
    assign out_c0_exi2_2_tpl = redist7_i_masked51_histogram34_q_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_histogram1 = GND_q;

endmodule
