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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond30000ter28935_covariance0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi8300_0_tpl,
    output wire [32:0] out_c0_exi8300_1_tpl,
    output wire [0:0] out_c0_exi8300_2_tpl,
    output wire [0:0] out_c0_exi8300_3_tpl,
    output wire [31:0] out_c0_exi8300_4_tpl,
    output wire [31:0] out_c0_exi8300_5_tpl,
    output wire [31:0] out_c0_exi8300_6_tpl,
    output wire [31:0] out_c0_exi8300_7_tpl,
    output wire [31:0] out_c0_exi8300_8_tpl,
    output wire [0:0] out_covariance_B8_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3288_0_tpl,
    input wire [0:0] in_c0_eni3288_1_tpl,
    input wire [31:0] in_c0_eni3288_2_tpl,
    input wire [31:0] in_c0_eni3288_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_049_q;
    wire [31:0] c_i32_150_q;
    wire [32:0] c_i33_145_q;
    wire [32:0] c_i33_3044_q;
    wire [5:0] c_i6_148_q;
    wire [5:0] c_i6_3046_q;
    wire [0:0] i_covariance_b8_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b8_next_iter_isreal_covariance7_q;
    wire [33:0] i_fpga_indvars_iv_next15_covariance10_a;
    wire [33:0] i_fpga_indvars_iv_next15_covariance10_b;
    logic [33:0] i_fpga_indvars_iv_next15_covariance10_o;
    wire [33:0] i_fpga_indvars_iv_next15_covariance10_q;
    wire [6:0] i_fpga_indvars_iv_next20_covariance17_a;
    wire [6:0] i_fpga_indvars_iv_next20_covariance17_b;
    logic [6:0] i_fpga_indvars_iv_next20_covariance17_o;
    wire [6:0] i_fpga_indvars_iv_next20_covariance17_q;
    wire [32:0] i_inc59_covariance20_a;
    wire [32:0] i_inc59_covariance20_b;
    logic [32:0] i_inc59_covariance20_o;
    wire [32:0] i_inc59_covariance20_q;
    wire [0:0] i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_valid_out_6;
    wire [0:0] i_notcmp27_covariance15_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next15_covariance10_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next20_covariance17_sel_x_b;
    wire [31:0] bgTrunc_i_inc59_covariance20_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [1:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_c_i2_03_x_q;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    wire [0:0] i_exitcond21_covariance12_cmp_nsign_q;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_q;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_0;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_1;
    reg [31:0] redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_q;
    reg [31:0] redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_0;
    reg [31:0] redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_1;
    reg [0:0] redist2_sync_together56_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist2_sync_together56_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist3_sync_together56_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist4_sync_together56_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [31:0] redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_inputreg0_q;
    reg [31:0] redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together56_aunroll_x_in_i_valid_2(DELAY,116)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist2_sync_together56_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together56_aunroll_x_in_i_valid_2_q <= redist2_sync_together56_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist3_sync_together56_aunroll_x_in_i_valid_3(DELAY,117)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together56_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together56_aunroll_x_in_i_valid_3_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,87)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg9(REG,94)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_3046(CONSTANT,28)
    assign c_i6_3046_q = $unsigned(6'b011110);

    // i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_c_i2_03_x(CONSTANT,78)
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_c_i2_03_x_q = $unsigned(2'b00);

    // c_i6_148(CONSTANT,27)
    assign c_i6_148_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next20_covariance17(ADD,33)@4
    assign i_fpga_indvars_iv_next20_covariance17_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q};
    assign i_fpga_indvars_iv_next20_covariance17_b = {1'b0, c_i6_148_q};
    assign i_fpga_indvars_iv_next20_covariance17_o = $unsigned(i_fpga_indvars_iv_next20_covariance17_a) + $unsigned(i_fpga_indvars_iv_next20_covariance17_b);
    assign i_fpga_indvars_iv_next20_covariance17_q = i_fpga_indvars_iv_next20_covariance17_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next20_covariance17_sel_x(BITSELECT,44)@4
    assign bgTrunc_i_fpga_indvars_iv_next20_covariance17_sel_x_b = i_fpga_indvars_iv_next20_covariance17_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_element_extension2_x(BITJOIN,79)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_c_i2_03_x_q, bgTrunc_i_fpga_indvars_iv_next20_covariance17_sel_x_b};

    // i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,60)@1
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg11(REG,96)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
            redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg10(REG,95)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x(FIFODELAY,80)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid = valid_fanout_reg10_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,82)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x(MUX,55)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_adapt_scalar_trunc4_sel_x_b or c_i6_3046_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv19_push27_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q = c_i6_3046_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond21_covariance12_cmp_nsign(LOGICAL,113)@4
    assign i_exitcond21_covariance12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop27_covariance11_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond30_covariance16(BLACKBOX,38)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond30_0 thei_llvm_fpga_push_i1_notexitcond30_covariance16 (
        .in_data_in(i_exitcond21_covariance12_cmp_nsign_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going29_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2(BLACKBOX,35)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_b8_dummy_covariance0 thei_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out);
            redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_1 <= redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_0;
            redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_2 <= redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_1;
            redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_q <= redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_covariance_b8_forked_covariance3(BLACKBOX,36)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b8_forked_covariance0 thei_llvm_fpga_forked_covariance_b8_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out);
            redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_1 <= redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_0;
            redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_2 <= redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_1;
            redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q <= redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going29_covariance6(BLACKBOX,37)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going29_0 thei_llvm_fpga_pipeline_keep_going29_covariance6 (
        .in_data_in(redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist7_i_llvm_fpga_dummy_thread_covariance_b8_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond30_covariance16_out_feedback_valid_out_6),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,41)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going29_covariance6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,47)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,48)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,49)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going29_covariance6_out_pipeline_valid_out;

    // redist4_sync_together56_aunroll_x_in_i_valid_4(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together56_aunroll_x_in_i_valid_4_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,85)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together56_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_c_i7_03_x(CONSTANT,57)
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_covariance_b8_next_iter_isreal_covariance7(LOGICAL,30)@4
    assign i_covariance_b8_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going29_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,58)@4
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_c_i7_03_x_q, i_covariance_b8_next_iter_isreal_covariance7_q};

    // valid_fanout_reg4(REG,89)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,88)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x(FIFODELAY,59)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,61)@4
    assign i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x(MUX,50)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // i_covariance_b8_current_iter_isspec_covariance5(LOGICAL,29)@4
    assign i_covariance_b8_current_iter_isspec_covariance5_q = i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b8_current_iter_isreal_covariance4_mux_x_q ^ VCC_q;

    // redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_inputreg0(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni3288_2_tpl);
        end
    end

    // redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_0 <= $unsigned(redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_inputreg0_q);
            redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_1 <= redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_0;
            redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_q <= redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_delay_1;
        end
    end

    // redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_inputreg0(DELAY,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni3288_3_tpl);
        end
    end

    // redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_0 <= $unsigned(redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_inputreg0_q);
            redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_1 <= redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_0;
            redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_q <= redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg20(REG,105)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,104)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x(FIFODELAY,68)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid = valid_fanout_reg19_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x(MUX,53)@4
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_o_data or redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance0_i_llvm_fpga_push_i32_reorder_limiter_enter68_push31_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q = redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q = 32'b0;
        endcase
    end

    // valid_fanout_reg17(REG,102)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,101)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x(FIFODELAY,65)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid = valid_fanout_reg16_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x(MUX,52)@4
    assign i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_s or i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_o_data or redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q = i_llvm_fpga_push_i32_lim_ext55_push30_covariance0_i_llvm_fpga_push_i32_lim_ext55_push30_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q = redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q = 32'b0;
        endcase
    end

    // c_i32_049(CONSTANT,23)
    assign c_i32_049_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_150(CONSTANT,24)
    assign c_i32_150_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc59_covariance20(ADD,34)@4
    assign i_inc59_covariance20_a = {1'b0, i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q};
    assign i_inc59_covariance20_b = {1'b0, c_i32_150_q};
    assign i_inc59_covariance20_o = $unsigned(i_inc59_covariance20_a) + $unsigned(i_inc59_covariance20_b);
    assign i_inc59_covariance20_q = i_inc59_covariance20_o[32:0];

    // bgTrunc_i_inc59_covariance20_sel_x(BITSELECT,45)@4
    assign bgTrunc_i_inc59_covariance20_sel_x_b = i_inc59_covariance20_q[31:0];

    // valid_fanout_reg14(REG,99)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,98)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x(FIFODELAY,62)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid = valid_fanout_reg13_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_data = bgTrunc_i_inc59_covariance20_sel_x_b;
    assign i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc59_covariance20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x(MUX,51)@4
    assign i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_s or i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_o_data or c_i32_049_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q = i_llvm_fpga_push_i32_i24_034_push29_covariance0_i_llvm_fpga_push_i32_i24_034_push29_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q = c_i32_049_q;
            default : i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp27_covariance15(LOGICAL,39)@4
    assign i_notcmp27_covariance15_q = i_exitcond21_covariance12_cmp_nsign_q ^ VCC_q;

    // c_i33_3044(CONSTANT,26)
    assign c_i33_3044_q = $unsigned(33'b000000000000000000000000000011110);

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_c_i31_03_x(CONSTANT,72)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_145(CONSTANT,25)
    assign c_i33_145_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next15_covariance10(ADD,32)@4
    assign i_fpga_indvars_iv_next15_covariance10_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q};
    assign i_fpga_indvars_iv_next15_covariance10_b = {1'b0, c_i33_145_q};
    assign i_fpga_indvars_iv_next15_covariance10_o = $unsigned(i_fpga_indvars_iv_next15_covariance10_a) + $unsigned(i_fpga_indvars_iv_next15_covariance10_b);
    assign i_fpga_indvars_iv_next15_covariance10_q = i_fpga_indvars_iv_next15_covariance10_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next15_covariance10_sel_x(BITSELECT,43)@4
    assign bgTrunc_i_fpga_indvars_iv_next15_covariance10_sel_x_b = i_fpga_indvars_iv_next15_covariance10_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_element_extension2_x(BITJOIN,73)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_c_i31_03_x_q, bgTrunc_i_fpga_indvars_iv_next15_covariance10_sel_x_b};

    // valid_fanout_reg8(REG,93)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,92)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together56_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x(FIFODELAY,74)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid = valid_fanout_reg7_q & redist5_i_llvm_fpga_push_i1_covariance_b8_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,76)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x(MUX,54)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_s = redist6_i_llvm_fpga_forked_covariance_b8_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_adapt_scalar_trunc4_sel_x_b or c_i33_3044_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv14_push28_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q = c_i33_3044_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q = 33'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,83)@4
    assign out_c0_exi8300_0_tpl = GND_q;
    assign out_c0_exi8300_1_tpl = i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance0_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop28_covariance9_mux_x_q;
    assign out_c0_exi8300_2_tpl = i_exitcond21_covariance12_cmp_nsign_q;
    assign out_c0_exi8300_3_tpl = i_notcmp27_covariance15_q;
    assign out_c0_exi8300_4_tpl = i_llvm_fpga_pop_i32_i24_034_pop29_covariance0_i_llvm_fpga_pop_i32_i24_034_pop29_covariance19_mux_x_q;
    assign out_c0_exi8300_5_tpl = i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance0_i_llvm_fpga_pop_i32_lim_ext55_pop30_covariance22_mux_x_q;
    assign out_c0_exi8300_6_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance0_i_llvm_fpga_pop_i32_reorder_limiter_enter68_pop31_covariance24_mux_x_q;
    assign out_c0_exi8300_7_tpl = redist1_sync_together56_aunroll_x_in_c0_eni3288_3_tpl_4_q;
    assign out_c0_exi8300_8_tpl = redist0_sync_together56_aunroll_x_in_c0_eni3288_2_tpl_4_q;
    assign out_covariance_B8_current_iter_isspec = i_covariance_b8_current_iter_isspec_covariance5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist4_sync_together56_aunroll_x_in_i_valid_4_q;

endmodule
