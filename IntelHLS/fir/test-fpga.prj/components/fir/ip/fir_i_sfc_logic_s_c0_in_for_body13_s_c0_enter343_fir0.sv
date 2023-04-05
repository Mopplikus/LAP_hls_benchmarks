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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body13_firs_c0_enter343_fir0
// Created for function/kernel fir
// SystemVerilog created on Wed Apr  5 16:46:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body13_s_c0_enter343_fir0 (
    input wire [31:0] in_unnamed_fir8_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir8_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir8_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir8_fir_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [31:0] in_unnamed_fir9_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir9_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir9_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir9_fir_avm_readdatavalid,
    output wire [31:0] out_unnamed_fir8_fir_avm_address,
    output wire [0:0] out_unnamed_fir8_fir_avm_enable,
    output wire [0:0] out_unnamed_fir8_fir_avm_read,
    output wire [0:0] out_unnamed_fir8_fir_avm_write,
    output wire [31:0] out_unnamed_fir8_fir_avm_writedata,
    output wire [3:0] out_unnamed_fir8_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir8_fir_avm_burstcount,
    output wire [31:0] out_unnamed_fir9_fir_avm_address,
    output wire [0:0] out_unnamed_fir9_fir_avm_enable,
    output wire [0:0] out_unnamed_fir9_fir_avm_read,
    output wire [0:0] out_unnamed_fir9_fir_avm_write,
    output wire [31:0] out_unnamed_fir9_fir_avm_writedata,
    output wire [3:0] out_unnamed_fir9_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir9_fir_avm_burstcount,
    output wire [0:0] out_c0_exi237_0_tpl,
    output wire [0:0] out_c0_exi237_1_tpl,
    output wire [0:0] out_c0_exi237_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni133_0_tpl,
    input wire [0:0] in_c0_eni133_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_fir_d_i_local_pmem_q;
    wire [63:0] c_fir_idx_local_pmem_q;
    wire [10:0] c_i11_163_q;
    wire [10:0] c_i11_99861_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_160_q;
    wire [31:0] c_i32_99959_q;
    wire [3:0] c_i4_755_q;
    wire [32:0] i_add_fir22_a;
    wire [32:0] i_add_fir22_b;
    logic [32:0] i_add_fir22_o;
    wire [32:0] i_add_fir22_q;
    wire [1:0] i_arrayidx153_fir14_vt_const_1_q;
    wire [63:0] i_arrayidx153_fir14_vt_join_q;
    wire [61:0] i_arrayidx153_fir14_vt_select_63_b;
    wire [63:0] i_arrayidx174_fir18_vt_join_q;
    wire [61:0] i_arrayidx174_fir18_vt_select_63_b;
    wire [3:0] i_cleanups_shl_fir5_vt_join_q;
    wire [2:0] i_cleanups_shl_fir5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_fir4_q;
    wire [11:0] i_fpga_indvars_iv_next3_fir34_a;
    wire [11:0] i_fpga_indvars_iv_next3_fir34_b;
    logic [11:0] i_fpga_indvars_iv_next3_fir34_o;
    wire [11:0] i_fpga_indvars_iv_next3_fir34_q;
    wire [63:0] i_idxprom14_fir13_vt_join_q;
    wire [31:0] i_idxprom14_fir13_vt_select_31_b;
    wire [32:0] i_inc19_fir24_a;
    wire [32:0] i_inc19_fir24_b;
    logic [32:0] i_inc19_fir24_o;
    wire [32:0] i_inc19_fir24_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_fir10_fir36_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_feedback_stall_out_14;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_feedback_stall_out_16;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_feedback_stall_out_15;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_valid_out_15;
    wire [0:0] i_masked_fir37_qi;
    reg [0:0] i_masked_fir37_q;
    wire [0:0] i_next_cleanups_fir32_s;
    reg [3:0] i_next_cleanups_fir32_q;
    wire [3:0] i_next_initerations_fir8_vt_join_q;
    wire [2:0] i_next_initerations_fir8_vt_select_2_b;
    wire [0:0] i_notcmp_fir29_q;
    wire [0:0] i_or_fir31_q;
    wire [32:0] i_sub_fir16_a;
    wire [32:0] i_sub_fir16_b;
    logic [32:0] i_sub_fir16_o;
    wire [32:0] i_sub_fir16_q;
    wire [31:0] bgTrunc_i_add_fir22_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next3_fir34_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_fir24_sel_x_b;
    wire [63:0] bgTrunc_i_mul_fir20_sel_x_in;
    wire [31:0] bgTrunc_i_mul_fir20_sel_x_b;
    wire [31:0] bgTrunc_i_sub_fir16_sel_x_b;
    wire [12:0] i_arrayidx153_fir0_add_x_a;
    wire [12:0] i_arrayidx153_fir0_add_x_b;
    logic [12:0] i_arrayidx153_fir0_add_x_o;
    wire [12:0] i_arrayidx153_fir0_add_x_q;
    wire [63:0] i_arrayidx153_fir0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx153_fir0_narrow_x_b;
    wire [11:0] i_arrayidx153_fir0_shift_join_x_q;
    wire [11:0] i_arrayidx153_fir0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx153_fir0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx174_fir0_add_x_a;
    wire [12:0] i_arrayidx174_fir0_add_x_b;
    logic [12:0] i_arrayidx174_fir0_add_x_o;
    wire [12:0] i_arrayidx174_fir0_add_x_q;
    wire [63:0] i_arrayidx174_fir0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx174_fir0_narrow_x_b;
    wire [11:0] i_arrayidx174_fir0_shift_join_x_q;
    wire [11:0] i_arrayidx174_fir0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx174_fir0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_fir3_sel_x_b;
    wire [63:0] i_idxprom14_fir13_sel_x_b;
    wire [63:0] i_idxprom16_fir17_sel_x_b;
    wire [0:0] i_last_initeration_fir10_sel_x_b;
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
    wire [0:0] i_exitcond4_fir27_cmp_nsign_q;
    wire [63:0] i_mul_fir20_sums_join_0_q;
    wire [50:0] i_mul_fir20_sums_align_1_q;
    wire [50:0] i_mul_fir20_sums_align_1_qint;
    wire [64:0] i_mul_fir20_sums_result_add_0_0_a;
    wire [64:0] i_mul_fir20_sums_result_add_0_0_b;
    logic [64:0] i_mul_fir20_sums_result_add_0_0_o;
    wire [64:0] i_mul_fir20_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid180_i_cleanups_shl_fir0_shift_x_q;
    wire [0:0] leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_s;
    reg [3:0] leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid186_i_next_initerations_fir0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid188_i_next_initerations_fir0_shift_x_q;
    wire [0:0] rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_s;
    reg [3:0] rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_q;
    wire i_mul_fir20_im0_cma_reset;
    wire [13:0] i_mul_fir20_im0_cma_a0;
    wire [13:0] i_mul_fir20_im0_cma_c0;
    wire [27:0] i_mul_fir20_im0_cma_s0;
    wire [27:0] i_mul_fir20_im0_cma_qq;
    wire [27:0] i_mul_fir20_im0_cma_q;
    wire i_mul_fir20_im0_cma_ena0;
    wire i_mul_fir20_im0_cma_ena1;
    wire i_mul_fir20_im0_cma_ena2;
    wire i_mul_fir20_im8_cma_reset;
    wire [17:0] i_mul_fir20_im8_cma_a0;
    wire [17:0] i_mul_fir20_im8_cma_c0;
    wire [35:0] i_mul_fir20_im8_cma_s0;
    wire [35:0] i_mul_fir20_im8_cma_qq;
    wire [35:0] i_mul_fir20_im8_cma_q;
    wire i_mul_fir20_im8_cma_ena0;
    wire i_mul_fir20_im8_cma_ena1;
    wire i_mul_fir20_im8_cma_ena2;
    wire i_mul_fir20_ma3_cma_reset;
    wire [13:0] i_mul_fir20_ma3_cma_a0;
    wire [17:0] i_mul_fir20_ma3_cma_c0;
    wire [13:0] i_mul_fir20_ma3_cma_a1;
    wire [17:0] i_mul_fir20_ma3_cma_c1;
    wire [32:0] i_mul_fir20_ma3_cma_s0;
    wire [32:0] i_mul_fir20_ma3_cma_qq;
    wire [32:0] i_mul_fir20_ma3_cma_q;
    wire i_mul_fir20_ma3_cma_ena0;
    wire i_mul_fir20_ma3_cma_ena1;
    wire i_mul_fir20_ma3_cma_ena2;
    wire [51:0] i_arrayidx174_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx174_fir0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx153_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx153_fir0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_fir20_bs2_merged_bit_select_b;
    wire [17:0] i_mul_fir20_bs2_merged_bit_select_c;
    wire [13:0] i_mul_fir20_bs1_merged_bit_select_b;
    wire [17:0] i_mul_fir20_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q;
    reg [0:0] redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q;
    reg [0:0] redist2_sync_together80_aunroll_x_in_c0_eni133_1_tpl_10_q;
    reg [0:0] redist3_sync_together80_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together80_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together80_aunroll_x_in_i_valid_9_q;
    reg [9:0] redist6_i_arrayidx174_fir0_narrow_x_b_1_q;
    reg [9:0] redist7_i_arrayidx153_fir0_narrow_x_b_1_q;
    reg [31:0] redist8_bgTrunc_i_mul_fir20_sel_x_b_1_q;
    reg [0:0] redist9_i_masked_fir37_q_8_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10_q;
    reg [0:0] redist13_i_first_cleanup_xor_fir4_q_8_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together80_aunroll_x_in_i_valid_1(DELAY,201)
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

    // redist4_sync_together80_aunroll_x_in_i_valid_2(DELAY,202)
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

    // redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x(BITSELECT,178)@3
    assign leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_b = leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid180_i_cleanups_shl_fir0_shift_x(BITJOIN,179)@3
    assign leftShiftStage0Idx1_uid180_i_cleanups_shl_fir0_shift_x_q = {leftShiftStage0Idx1Rng1_uid179_i_cleanups_shl_fir0_shift_x_b, GND_q};

    // leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x(MUX,181)@3
    assign leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out or leftShiftStage0Idx1_uid180_i_cleanups_shl_fir0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_s)
            1'b0 : leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out;
            1'b1 : leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_q = leftShiftStage0Idx1_uid180_i_cleanups_shl_fir0_shift_x_q;
            default : leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_fir5_vt_select_3(BITSELECT,44)@3
    assign i_cleanups_shl_fir5_vt_select_3_b = leftShiftStage0_uid182_i_cleanups_shl_fir0_shift_x_q[3:1];

    // i_cleanups_shl_fir5_vt_join(BITJOIN,43)@3
    assign i_cleanups_shl_fir5_vt_join_q = {i_cleanups_shl_fir5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_fir4(LOGICAL,47)@3
    assign i_first_cleanup_xor_fir4_q = i_first_cleanup_fir3_sel_x_b ^ VCC_q;

    // i_notcmp_fir29(LOGICAL,79)@3
    assign i_notcmp_fir29_q = i_exitcond4_fir27_cmp_nsign_q ^ VCC_q;

    // i_or_fir31(LOGICAL,80)@3
    assign i_or_fir31_q = i_notcmp_fir29_q | i_first_cleanup_xor_fir4_q;

    // i_next_cleanups_fir32(MUX,75)@3
    assign i_next_cleanups_fir32_s = i_or_fir31_q;
    always @(i_next_cleanups_fir32_s or i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out or i_cleanups_shl_fir5_vt_join_q)
    begin
        unique case (i_next_cleanups_fir32_s)
            1'b0 : i_next_cleanups_fir32_q = i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out;
            1'b1 : i_next_cleanups_fir32_q = i_cleanups_shl_fir5_vt_join_q;
            default : i_next_cleanups_fir32_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push16_fir33(BLACKBOX,71)@3
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    fir_i_llvm_fpga_push_i4_cleanups_push16_0 thei_llvm_fpga_push_i4_cleanups_push16_fir33 (
        .in_data_in(i_next_cleanups_fir32_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_feedback_stall_out_16),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q <= $unsigned(in_c0_eni133_1_tpl);
        end
    end

    // redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q <= $unsigned(redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q);
        end
    end

    // c_i4_755(CONSTANT,32)
    assign c_i4_755_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop16_fir2(BLACKBOX,64)@3
    // out out_feedback_stall_out_16@20000000
    fir_i_llvm_fpga_pop_i4_cleanups_pop16_0 thei_llvm_fpga_pop_i4_cleanups_pop16_fir2 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q),
        .in_feedback_in_16(i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i4_cleanups_push16_fir33_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_fir3_sel_x(BITSELECT,126)@3
    assign i_first_cleanup_fir3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop16_fir2_out_data_out[0:0];

    // c_i11_163(CONSTANT,9)
    assign c_i11_163_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next3_fir34(ADD,48)@3
    assign i_fpga_indvars_iv_next3_fir34_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_data_out};
    assign i_fpga_indvars_iv_next3_fir34_b = {1'b0, c_i11_163_q};
    assign i_fpga_indvars_iv_next3_fir34_o = $unsigned(i_fpga_indvars_iv_next3_fir34_a) + $unsigned(i_fpga_indvars_iv_next3_fir34_b);
    assign i_fpga_indvars_iv_next3_fir34_q = i_fpga_indvars_iv_next3_fir34_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next3_fir34_sel_x(BITSELECT,90)@3
    assign bgTrunc_i_fpga_indvars_iv_next3_fir34_sel_x_b = i_fpga_indvars_iv_next3_fir34_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35(BLACKBOX,66)@3
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    fir_i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_0 thei_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next3_fir34_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_feedback_stall_out_12),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_99861(CONSTANT,10)
    assign c_i11_99861_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26(BLACKBOX,61)@3
    // out out_feedback_stall_out_12@20000000
    fir_i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26 (
        .in_data_in(c_i11_99861_q),
        .in_dir(redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q),
        .in_feedback_in_12(i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i11_fpga_indvars_iv2_push12_fir35_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond4_fir27_cmp_nsign(LOGICAL,159)@3
    assign i_exitcond4_fir27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv2_pop12_fir26_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_fir30(BLACKBOX,68)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    fir_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fir30 (
        .in_data_in(i_exitcond4_fir27_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_fir3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together80_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,139)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid186_i_next_initerations_fir0_shift_x(BITSELECT,185)@2
    assign rightShiftStage0Idx1Rng1_uid186_i_next_initerations_fir0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid188_i_next_initerations_fir0_shift_x(BITJOIN,187)@2
    assign rightShiftStage0Idx1_uid188_i_next_initerations_fir0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid186_i_next_initerations_fir0_shift_x_b};

    // valid_fanout_reg1(REG,137)@1 + 1
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

    // valid_fanout_reg2(REG,138)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push15_fir9(BLACKBOX,72)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    fir_i_llvm_fpga_push_i4_initerations_push15_0 thei_llvm_fpga_push_i4_initerations_push15_fir9 (
        .in_data_in(i_next_initerations_fir8_vt_join_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_feedback_stall_out_15),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop15_fir7(BLACKBOX,65)@2
    // out out_feedback_stall_out_15@20000000
    fir_i_llvm_fpga_pop_i4_initerations_pop15_0 thei_llvm_fpga_pop_i4_initerations_pop15_fir7 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i4_initerations_push15_fir9_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid190_i_next_initerations_fir0_shift_x(MUX,189)@2
    assign rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_data_out or rightShiftStage0Idx1_uid188_i_next_initerations_fir0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_s)
            1'b0 : rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop15_fir7_out_data_out;
            1'b1 : rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_q = rightShiftStage0Idx1_uid188_i_next_initerations_fir0_shift_x_q;
            default : rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_fir8_vt_select_2(BITSELECT,78)@2
    assign i_next_initerations_fir8_vt_select_2_b = rightShiftStage0_uid190_i_next_initerations_fir0_shift_x_q[2:0];

    // i_next_initerations_fir8_vt_join(BITJOIN,77)@2
    assign i_next_initerations_fir8_vt_join_q = {GND_q, i_next_initerations_fir8_vt_select_2_b};

    // i_last_initeration_fir10_sel_x(BITSELECT,129)@2
    assign i_last_initeration_fir10_sel_x_b = i_next_initerations_fir8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_fir11(BLACKBOX,67)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    fir_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_fir11 (
        .in_data_in(i_last_initeration_fir10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fir6 (
        .in_data_in(in_c0_eni133_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fir30_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;

    // redist5_sync_together80_aunroll_x_in_i_valid_9(DELAY,203)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together80_aunroll_x_in_i_valid_9 ( .xin(redist4_sync_together80_aunroll_x_in_i_valid_2_q), .xout(redist5_sync_together80_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg10(REG,146)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg7(REG,143)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg8(REG,144)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10(DELAY,210)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10 ( .xin(redist11_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q), .xout(redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_tmp_013_push14_fir23(BLACKBOX,70)@11
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    fir_i_llvm_fpga_push_i32_tmp_013_push14_0 thei_llvm_fpga_push_i32_tmp_013_push14_fir23 (
        .in_data_in(bgTrunc_i_add_fir22_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_feedback_stall_out_14),
        .in_keep_going(redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together80_aunroll_x_in_c0_eni133_1_tpl_10(DELAY,200)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together80_aunroll_x_in_c0_eni133_1_tpl_10 ( .xin(redist1_sync_together80_aunroll_x_in_c0_eni133_1_tpl_2_q), .xout(redist2_sync_together80_aunroll_x_in_c0_eni133_1_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_058(CONSTANT,28)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_tmp_013_pop14_fir21(BLACKBOX,63)@11
    // out out_feedback_stall_out_14@20000000
    fir_i_llvm_fpga_pop_i32_tmp_013_pop14_0 thei_llvm_fpga_pop_i32_tmp_013_pop14_fir21 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist2_sync_together80_aunroll_x_in_c0_eni133_1_tpl_10_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_tmp_013_push14_fir23_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,141)@2 + 1
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

    // c_fir_idx_local_pmem(CONSTANT,8)
    assign c_fir_idx_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx153_fir0_upper_bits_x_merged_bit_select(BITSELECT,195)@3
    assign i_arrayidx153_fir0_upper_bits_x_merged_bit_select_b = c_fir_idx_local_pmem_q[63:12];
    assign i_arrayidx153_fir0_upper_bits_x_merged_bit_select_c = c_fir_idx_local_pmem_q[11:0];

    // valid_fanout_reg4(REG,140)@1 + 1
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

    // valid_fanout_reg9(REG,145)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_160(CONSTANT,29)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_fir24(ADD,55)@2
    assign i_inc19_fir24_a = {1'b0, i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_data_out};
    assign i_inc19_fir24_b = {1'b0, c_i32_160_q};
    assign i_inc19_fir24_o = $unsigned(i_inc19_fir24_a) + $unsigned(i_inc19_fir24_b);
    assign i_inc19_fir24_q = i_inc19_fir24_o[32:0];

    // bgTrunc_i_inc19_fir24_sel_x(BITSELECT,91)@2
    assign bgTrunc_i_inc19_fir24_sel_x_b = i_inc19_fir24_q[31:0];

    // i_llvm_fpga_push_i32_i9_014_push13_fir25(BLACKBOX,69)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    fir_i_llvm_fpga_push_i32_i9_014_push13_0 thei_llvm_fpga_push_i32_i9_014_push13_fir25 (
        .in_data_in(bgTrunc_i_inc19_fir24_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_feedback_stall_out_13),
        .in_keep_going(redist10_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i9_014_pop13_fir12(BLACKBOX,62)@2
    // out out_feedback_stall_out_13@20000000
    fir_i_llvm_fpga_pop_i32_i9_014_pop13_0 thei_llvm_fpga_pop_i32_i9_014_pop13_fir12 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist0_sync_together80_aunroll_x_in_c0_eni133_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_i9_014_push13_fir25_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom14_fir13_sel_x(BITSELECT,127)@2
    assign i_idxprom14_fir13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_data_out[31:0]};

    // i_idxprom14_fir13_vt_select_31(BITSELECT,52)@2
    assign i_idxprom14_fir13_vt_select_31_b = i_idxprom14_fir13_sel_x_b[31:0];

    // i_idxprom14_fir13_vt_join(BITJOIN,51)@2
    assign i_idxprom14_fir13_vt_join_q = {c_i32_058_q, i_idxprom14_fir13_vt_select_31_b};

    // i_arrayidx153_fir0_dupName_0_trunc_sel_x(BITSELECT,108)@2
    assign i_arrayidx153_fir0_dupName_0_trunc_sel_x_b = i_idxprom14_fir13_vt_join_q[11:0];

    // i_arrayidx153_fir0_narrow_x(BITSELECT,101)@2
    assign i_arrayidx153_fir0_narrow_x_b = i_arrayidx153_fir0_dupName_0_trunc_sel_x_b[9:0];

    // redist7_i_arrayidx153_fir0_narrow_x_b_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx153_fir0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx153_fir0_narrow_x_b_1_q <= $unsigned(i_arrayidx153_fir0_narrow_x_b);
        end
    end

    // i_arrayidx153_fir0_shift_join_x(BITJOIN,102)@3
    assign i_arrayidx153_fir0_shift_join_x_q = {redist7_i_arrayidx153_fir0_narrow_x_b_1_q, i_arrayidx153_fir14_vt_const_1_q};

    // i_arrayidx153_fir0_add_x(ADD,98)@3
    assign i_arrayidx153_fir0_add_x_a = {1'b0, i_arrayidx153_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx153_fir0_add_x_b = {1'b0, i_arrayidx153_fir0_shift_join_x_q};
    assign i_arrayidx153_fir0_add_x_o = $unsigned(i_arrayidx153_fir0_add_x_a) + $unsigned(i_arrayidx153_fir0_add_x_b);
    assign i_arrayidx153_fir0_add_x_q = i_arrayidx153_fir0_add_x_o[12:0];

    // i_arrayidx153_fir0_dupName_2_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx153_fir0_dupName_2_trunc_sel_x_b = i_arrayidx153_fir0_add_x_q[11:0];

    // i_arrayidx153_fir0_append_upper_bits_x(BITJOIN,99)@3
    assign i_arrayidx153_fir0_append_upper_bits_x_q = {i_arrayidx153_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx153_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx153_fir14_vt_select_63(BITSELECT,38)@3
    assign i_arrayidx153_fir14_vt_select_63_b = i_arrayidx153_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx153_fir14_vt_const_1(CONSTANT,36)
    assign i_arrayidx153_fir14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx153_fir14_vt_join(BITJOIN,37)@3
    assign i_arrayidx153_fir14_vt_join_q = {i_arrayidx153_fir14_vt_select_63_b, i_arrayidx153_fir14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_fir8_fir15(BLACKBOX,58)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_fir8_fir_avm_address@20000000
    // out out_unnamed_fir8_fir_avm_burstcount@20000000
    // out out_unnamed_fir8_fir_avm_byteenable@20000000
    // out out_unnamed_fir8_fir_avm_enable@20000000
    // out out_unnamed_fir8_fir_avm_read@20000000
    // out out_unnamed_fir8_fir_avm_write@20000000
    // out out_unnamed_fir8_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_8_fir0 thei_llvm_fpga_mem_unnamed_fir8_fir15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx153_fir14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_fir4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_fir8_fir_avm_readdata(in_unnamed_fir8_fir_avm_readdata),
        .in_unnamed_fir8_fir_avm_readdatavalid(in_unnamed_fir8_fir_avm_readdatavalid),
        .in_unnamed_fir8_fir_avm_waitrequest(in_unnamed_fir8_fir_avm_waitrequest),
        .in_unnamed_fir8_fir_avm_writeack(in_unnamed_fir8_fir_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir8_fir15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_fir8_fir_avm_address(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_address),
        .out_unnamed_fir8_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_burstcount),
        .out_unnamed_fir8_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_byteenable),
        .out_unnamed_fir8_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_enable),
        .out_unnamed_fir8_fir_avm_read(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_read),
        .out_unnamed_fir8_fir_avm_write(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_write),
        .out_unnamed_fir8_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_fir20_bs2_merged_bit_select(BITSELECT,196)@7
    assign i_mul_fir20_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_fir8_fir15_out_o_readdata[31:18];
    assign i_mul_fir20_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_fir8_fir15_out_o_readdata[17:0];

    // valid_fanout_reg6(REG,142)@2 + 1
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

    // c_fir_d_i_local_pmem(CONSTANT,7)
    assign c_fir_d_i_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx174_fir0_upper_bits_x_merged_bit_select(BITSELECT,194)@3
    assign i_arrayidx174_fir0_upper_bits_x_merged_bit_select_b = c_fir_d_i_local_pmem_q[63:12];
    assign i_arrayidx174_fir0_upper_bits_x_merged_bit_select_c = c_fir_d_i_local_pmem_q[11:0];

    // c_i32_99959(CONSTANT,30)
    assign c_i32_99959_q = $unsigned(32'b00000000000000000000001111100111);

    // i_sub_fir16(SUB,81)@2
    assign i_sub_fir16_a = {1'b0, c_i32_99959_q};
    assign i_sub_fir16_b = {1'b0, i_llvm_fpga_pop_i32_i9_014_pop13_fir12_out_data_out};
    assign i_sub_fir16_o = $unsigned(i_sub_fir16_a) - $unsigned(i_sub_fir16_b);
    assign i_sub_fir16_q = i_sub_fir16_o[32:0];

    // bgTrunc_i_sub_fir16_sel_x(BITSELECT,93)@2
    assign bgTrunc_i_sub_fir16_sel_x_b = $unsigned(i_sub_fir16_q[31:0]);

    // i_idxprom16_fir17_sel_x(BITSELECT,128)@2
    assign i_idxprom16_fir17_sel_x_b = $unsigned({{32{bgTrunc_i_sub_fir16_sel_x_b[31]}}, bgTrunc_i_sub_fir16_sel_x_b[31:0]});

    // i_arrayidx174_fir0_dupName_0_trunc_sel_x(BITSELECT,120)@2
    assign i_arrayidx174_fir0_dupName_0_trunc_sel_x_b = i_idxprom16_fir17_sel_x_b[11:0];

    // i_arrayidx174_fir0_narrow_x(BITSELECT,113)@2
    assign i_arrayidx174_fir0_narrow_x_b = i_arrayidx174_fir0_dupName_0_trunc_sel_x_b[9:0];

    // redist6_i_arrayidx174_fir0_narrow_x_b_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx174_fir0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx174_fir0_narrow_x_b_1_q <= $unsigned(i_arrayidx174_fir0_narrow_x_b);
        end
    end

    // i_arrayidx174_fir0_shift_join_x(BITJOIN,114)@3
    assign i_arrayidx174_fir0_shift_join_x_q = {redist6_i_arrayidx174_fir0_narrow_x_b_1_q, i_arrayidx153_fir14_vt_const_1_q};

    // i_arrayidx174_fir0_add_x(ADD,110)@3
    assign i_arrayidx174_fir0_add_x_a = {1'b0, i_arrayidx174_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx174_fir0_add_x_b = {1'b0, i_arrayidx174_fir0_shift_join_x_q};
    assign i_arrayidx174_fir0_add_x_o = $unsigned(i_arrayidx174_fir0_add_x_a) + $unsigned(i_arrayidx174_fir0_add_x_b);
    assign i_arrayidx174_fir0_add_x_q = i_arrayidx174_fir0_add_x_o[12:0];

    // i_arrayidx174_fir0_dupName_2_trunc_sel_x(BITSELECT,121)@3
    assign i_arrayidx174_fir0_dupName_2_trunc_sel_x_b = i_arrayidx174_fir0_add_x_q[11:0];

    // i_arrayidx174_fir0_append_upper_bits_x(BITJOIN,111)@3
    assign i_arrayidx174_fir0_append_upper_bits_x_q = {i_arrayidx174_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx174_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx174_fir18_vt_select_63(BITSELECT,41)@3
    assign i_arrayidx174_fir18_vt_select_63_b = i_arrayidx174_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx174_fir18_vt_join(BITJOIN,40)@3
    assign i_arrayidx174_fir18_vt_join_q = {i_arrayidx174_fir18_vt_select_63_b, i_arrayidx153_fir14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_fir9_fir19(BLACKBOX,59)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_fir9_fir_avm_address@20000000
    // out out_unnamed_fir9_fir_avm_burstcount@20000000
    // out out_unnamed_fir9_fir_avm_byteenable@20000000
    // out out_unnamed_fir9_fir_avm_enable@20000000
    // out out_unnamed_fir9_fir_avm_read@20000000
    // out out_unnamed_fir9_fir_avm_write@20000000
    // out out_unnamed_fir9_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_9_fir0 thei_llvm_fpga_mem_unnamed_fir9_fir19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx174_fir18_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_fir4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_fir9_fir_avm_readdata(in_unnamed_fir9_fir_avm_readdata),
        .in_unnamed_fir9_fir_avm_readdatavalid(in_unnamed_fir9_fir_avm_readdatavalid),
        .in_unnamed_fir9_fir_avm_waitrequest(in_unnamed_fir9_fir_avm_waitrequest),
        .in_unnamed_fir9_fir_avm_writeack(in_unnamed_fir9_fir_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir9_fir19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_fir9_fir_avm_address(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_address),
        .out_unnamed_fir9_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_burstcount),
        .out_unnamed_fir9_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_byteenable),
        .out_unnamed_fir9_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_enable),
        .out_unnamed_fir9_fir_avm_read(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_read),
        .out_unnamed_fir9_fir_avm_write(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_write),
        .out_unnamed_fir9_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_fir20_bs1_merged_bit_select(BITSELECT,197)@7
    assign i_mul_fir20_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_fir9_fir19_out_o_readdata[31:18];
    assign i_mul_fir20_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_fir9_fir19_out_o_readdata[17:0];

    // i_mul_fir20_ma3_cma(CHAINMULTADD,193)@7 + 3
    assign i_mul_fir20_ma3_cma_reset = ~ (resetn);
    assign i_mul_fir20_ma3_cma_ena0 = 1'b1;
    assign i_mul_fir20_ma3_cma_ena1 = i_mul_fir20_ma3_cma_ena0;
    assign i_mul_fir20_ma3_cma_ena2 = i_mul_fir20_ma3_cma_ena0;

    assign i_mul_fir20_ma3_cma_a0 = i_mul_fir20_bs1_merged_bit_select_b;
    assign i_mul_fir20_ma3_cma_c0 = i_mul_fir20_bs2_merged_bit_select_c;
    assign i_mul_fir20_ma3_cma_a1 = i_mul_fir20_bs2_merged_bit_select_b;
    assign i_mul_fir20_ma3_cma_c1 = i_mul_fir20_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_fir20_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir20_ma3_cma_ena2, i_mul_fir20_ma3_cma_ena1, i_mul_fir20_ma3_cma_ena0 }),
        .aclr({ i_mul_fir20_ma3_cma_reset, i_mul_fir20_ma3_cma_reset }),
        .ay(i_mul_fir20_ma3_cma_a1),
        .by(i_mul_fir20_ma3_cma_a0),
        .ax(i_mul_fir20_ma3_cma_c1),
        .bx(i_mul_fir20_ma3_cma_c0),
        .resulta(i_mul_fir20_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_fir20_ma3_cma_delay ( .xin(i_mul_fir20_ma3_cma_s0), .xout(i_mul_fir20_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir20_ma3_cma_q = $unsigned(i_mul_fir20_ma3_cma_qq[32:0]);

    // i_mul_fir20_sums_align_1(BITSHIFT,172)@10
    assign i_mul_fir20_sums_align_1_qint = { i_mul_fir20_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_fir20_sums_align_1_q = i_mul_fir20_sums_align_1_qint[50:0];

    // i_mul_fir20_im0_cma(CHAINMULTADD,191)@7 + 3
    assign i_mul_fir20_im0_cma_reset = ~ (resetn);
    assign i_mul_fir20_im0_cma_ena0 = 1'b1;
    assign i_mul_fir20_im0_cma_ena1 = i_mul_fir20_im0_cma_ena0;
    assign i_mul_fir20_im0_cma_ena2 = i_mul_fir20_im0_cma_ena0;

    assign i_mul_fir20_im0_cma_a0 = i_mul_fir20_bs1_merged_bit_select_b;
    assign i_mul_fir20_im0_cma_c0 = i_mul_fir20_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul_fir20_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir20_im0_cma_ena2, i_mul_fir20_im0_cma_ena1, i_mul_fir20_im0_cma_ena0 }),
        .aclr({ i_mul_fir20_im0_cma_reset, i_mul_fir20_im0_cma_reset }),
        .ay(i_mul_fir20_im0_cma_a0),
        .ax(i_mul_fir20_im0_cma_c0),
        .resulta(i_mul_fir20_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_fir20_im0_cma_delay ( .xin(i_mul_fir20_im0_cma_s0), .xout(i_mul_fir20_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir20_im0_cma_q = $unsigned(i_mul_fir20_im0_cma_qq[27:0]);

    // i_mul_fir20_im8_cma(CHAINMULTADD,192)@7 + 3
    assign i_mul_fir20_im8_cma_reset = ~ (resetn);
    assign i_mul_fir20_im8_cma_ena0 = 1'b1;
    assign i_mul_fir20_im8_cma_ena1 = i_mul_fir20_im8_cma_ena0;
    assign i_mul_fir20_im8_cma_ena2 = i_mul_fir20_im8_cma_ena0;

    assign i_mul_fir20_im8_cma_a0 = i_mul_fir20_bs1_merged_bit_select_c;
    assign i_mul_fir20_im8_cma_c0 = i_mul_fir20_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_fir20_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_fir20_im8_cma_ena2, i_mul_fir20_im8_cma_ena1, i_mul_fir20_im8_cma_ena0 }),
        .aclr({ i_mul_fir20_im8_cma_reset, i_mul_fir20_im8_cma_reset }),
        .ay(i_mul_fir20_im8_cma_a0),
        .ax(i_mul_fir20_im8_cma_c0),
        .resulta(i_mul_fir20_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_fir20_im8_cma_delay ( .xin(i_mul_fir20_im8_cma_s0), .xout(i_mul_fir20_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_fir20_im8_cma_q = $unsigned(i_mul_fir20_im8_cma_qq[35:0]);

    // i_mul_fir20_sums_join_0(BITJOIN,171)@10
    assign i_mul_fir20_sums_join_0_q = {i_mul_fir20_im0_cma_q, i_mul_fir20_im8_cma_q};

    // i_mul_fir20_sums_result_add_0_0(ADD,174)@10
    assign i_mul_fir20_sums_result_add_0_0_a = {1'b0, i_mul_fir20_sums_join_0_q};
    assign i_mul_fir20_sums_result_add_0_0_b = {14'b00000000000000, i_mul_fir20_sums_align_1_q};
    assign i_mul_fir20_sums_result_add_0_0_o = $unsigned(i_mul_fir20_sums_result_add_0_0_a) + $unsigned(i_mul_fir20_sums_result_add_0_0_b);
    assign i_mul_fir20_sums_result_add_0_0_q = i_mul_fir20_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_fir20_sel_x(BITSELECT,92)@10
    assign bgTrunc_i_mul_fir20_sel_x_in = i_mul_fir20_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_fir20_sel_x_b = bgTrunc_i_mul_fir20_sel_x_in[31:0];

    // redist8_bgTrunc_i_mul_fir20_sel_x_b_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_mul_fir20_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_mul_fir20_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_fir20_sel_x_b);
        end
    end

    // i_add_fir22(ADD,35)@11
    assign i_add_fir22_a = {1'b0, redist8_bgTrunc_i_mul_fir20_sel_x_b_1_q};
    assign i_add_fir22_b = {1'b0, i_llvm_fpga_pop_i32_tmp_013_pop14_fir21_out_data_out};
    assign i_add_fir22_o = $unsigned(i_add_fir22_a) + $unsigned(i_add_fir22_b);
    assign i_add_fir22_q = i_add_fir22_o[32:0];

    // bgTrunc_i_add_fir22_sel_x(BITSELECT,89)@11
    assign bgTrunc_i_add_fir22_sel_x_b = i_add_fir22_q[31:0];

    // redist13_i_first_cleanup_xor_fir4_q_8(DELAY,211)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_first_cleanup_xor_fir4_q_8 ( .xin(i_first_cleanup_xor_fir4_q), .xout(redist13_i_first_cleanup_xor_fir4_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_fir10_fir36(BLACKBOX,57)@11
    // out out_intel_reserved_ffwd_2_0@20000000
    fir_i_llvm_fpga_ffwd_source_i32_unnamed_10_fir0 thei_llvm_fpga_ffwd_source_i32_unnamed_fir10_fir36 (
        .in_predicate_in(redist13_i_first_cleanup_xor_fir4_q_8_q),
        .in_src_data_in_2_0(bgTrunc_i_add_fir22_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_fir10_fir36_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,87)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_fir10_fir36_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,96)
    assign out_unnamed_fir8_fir_avm_address = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_address;
    assign out_unnamed_fir8_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_enable;
    assign out_unnamed_fir8_fir_avm_read = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_read;
    assign out_unnamed_fir8_fir_avm_write = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_write;
    assign out_unnamed_fir8_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_writedata;
    assign out_unnamed_fir8_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_byteenable;
    assign out_unnamed_fir8_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir8_fir15_out_unnamed_fir8_fir_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,97)
    assign out_unnamed_fir9_fir_avm_address = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_address;
    assign out_unnamed_fir9_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_enable;
    assign out_unnamed_fir9_fir_avm_read = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_read;
    assign out_unnamed_fir9_fir_avm_write = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_write;
    assign out_unnamed_fir9_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_writedata;
    assign out_unnamed_fir9_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_byteenable;
    assign out_unnamed_fir9_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir9_fir19_out_unnamed_fir9_fir_avm_burstcount;

    // valid_fanout_reg0(REG,136)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_masked_fir37(LOGICAL,73)@3 + 1
    assign i_masked_fir37_qi = i_notcmp_fir29_q & i_first_cleanup_fir3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_fir37_delay ( .xin(i_masked_fir37_qi), .xout(i_masked_fir37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_masked_fir37_q_8(DELAY,207)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_masked_fir37_q_8 ( .xin(i_masked_fir37_q), .xout(redist9_i_masked_fir37_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,134)@11
    assign out_c0_exi237_0_tpl = GND_q;
    assign out_c0_exi237_1_tpl = redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_10_q;
    assign out_c0_exi237_2_tpl = redist9_i_masked_fir37_q_8_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_fir1 = GND_q;

endmodule
