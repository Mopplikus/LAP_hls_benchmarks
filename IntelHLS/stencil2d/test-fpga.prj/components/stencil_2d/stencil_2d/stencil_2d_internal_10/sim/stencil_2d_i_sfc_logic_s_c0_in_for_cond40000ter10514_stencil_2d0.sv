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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond40000ter10514_stencil_2d0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [31:0] out_c0_exi4_1_tpl,
    output wire [31:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stencil_2d_B2_current_iter_isspec,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_032_q;
    wire [31:0] c_i32_137_q;
    wire [5:0] c_i6_136_q;
    wire [5:0] c_i6_2634_q;
    wire [6:0] i_fpga_indvars_iv_next8_stencil_2d16_a;
    wire [6:0] i_fpga_indvars_iv_next8_stencil_2d16_b;
    logic [6:0] i_fpga_indvars_iv_next8_stencil_2d16_o;
    wire [6:0] i_fpga_indvars_iv_next8_stencil_2d16_q;
    wire [32:0] i_inc36_stencil_2d18_a;
    wire [32:0] i_inc36_stencil_2d18_b;
    logic [32:0] i_inc36_stencil_2d18_o;
    wire [32:0] i_inc36_stencil_2d18_q;
    wire [0:0] i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_valid_out_9;
    wire [31:0] i_mul28_stencil_2d10_vt_join_q;
    wire [30:0] i_mul28_stencil_2d10_vt_select_31_b;
    wire [0:0] i_notcmp23_stencil_2d14_q;
    wire [0:0] i_stencil_2d_b2_current_iter_isspec_stencil_2d5_q;
    wire [0:0] i_stencil_2d_b2_next_iter_isreal_stencil_2d7_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_stencil_2d16_sel_x_b;
    wire [31:0] bgTrunc_i_inc36_stencil_2d18_sel_x_b;
    wire [31:0] bgTrunc_i_mul28_stencil_2d10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_o_data;
    wire [1:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_c_i2_03_x_q;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
    wire [63:0] i_mul28_stencil_2d10_extender_x_q;
    wire [26:0] i_mul28_stencil_2d10_multconst_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    wire [0:0] i_exitcond9_stencil_2d12_cmp_nsign_q;
    wire [14:0] i_mul28_stencil_2d10_bjA2_q;
    wire [18:0] i_mul28_stencil_2d10_bjA7_q;
    wire [38:0] i_mul28_stencil_2d10_sums_align_1_q;
    wire [38:0] i_mul28_stencil_2d10_sums_align_1_qint;
    wire [39:0] i_mul28_stencil_2d10_sums_result_add_0_0_a;
    wire [39:0] i_mul28_stencil_2d10_sums_result_add_0_0_b;
    logic [39:0] i_mul28_stencil_2d10_sums_result_add_0_0_o;
    wire [39:0] i_mul28_stencil_2d10_sums_result_add_0_0_q;
    wire [3:0] padACst_uid123_i_mul28_stencil_2d10_im0_q;
    wire [18:0] aPostPad_uid124_i_mul28_stencil_2d10_im0_q;
    wire [19:0] sub_uid125_i_mul28_stencil_2d10_im0_a;
    wire [19:0] sub_uid125_i_mul28_stencil_2d10_im0_b;
    logic [19:0] sub_uid125_i_mul28_stencil_2d10_im0_o;
    wire [19:0] sub_uid125_i_mul28_stencil_2d10_im0_q;
    wire [18:0] sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_in;
    wire [18:0] sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b;
    wire [19:0] sR_mergedSignalTM_uid130_i_mul28_stencil_2d10_im0_q;
    wire [0:0] xMSB_uid150_i_mul28_stencil_2d10_im0_b;
    wire [20:0] sOuputFormat_mergedSignalTM_uid154_i_mul28_stencil_2d10_im0_q;
    wire [22:0] aPostPad_uid177_i_mul28_stencil_2d10_im5_q;
    wire [23:0] sub_uid178_i_mul28_stencil_2d10_im5_a;
    wire [23:0] sub_uid178_i_mul28_stencil_2d10_im5_b;
    logic [23:0] sub_uid178_i_mul28_stencil_2d10_im5_o;
    wire [23:0] sub_uid178_i_mul28_stencil_2d10_im5_q;
    wire [22:0] sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_in;
    wire [22:0] sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b;
    wire [23:0] sR_mergedSignalTM_uid183_i_mul28_stencil_2d10_im5_q;
    wire [0:0] xMSB_uid209_i_mul28_stencil_2d10_im5_b;
    wire [24:0] sOuputFormat_mergedSignalTM_uid213_i_mul28_stencil_2d10_im5_q;
    wire [13:0] i_mul28_stencil_2d10_bs1_merged_bit_select_b;
    wire [17:0] i_mul28_stencil_2d10_bs1_merged_bit_select_c;
    reg [22:0] redist0_sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b_1_q;
    reg [18:0] redist1_sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b_1_q;
    reg [0:0] redist2_i_exitcond9_stencil_2d12_cmp_nsign_q_1_q;
    reg [0:0] redist3_sync_together42_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist3_sync_together42_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist4_sync_together42_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_sync_together42_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist6_sync_together42_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_delay_0;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q_1_q;
    reg [0:0] redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q;
    reg [0:0] redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_0;
    reg [0:0] redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_1;
    reg [0:0] redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_2;
    reg [0:0] redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_q;
    reg [0:0] redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_0;
    reg [0:0] redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_1;
    reg [0:0] redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together42_aunroll_x_in_i_valid_2(DELAY,218)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together42_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_together42_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together42_aunroll_x_in_i_valid_2_q <= redist3_sync_together42_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist4_sync_together42_aunroll_x_in_i_valid_3(DELAY,219)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_together42_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist4_sync_together42_aunroll_x_in_i_valid_3_q <= $unsigned(redist3_sync_together42_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,71)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together42_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg7(REG,76)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together42_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_2634(CONSTANT,21)
    assign c_i6_2634_q = $unsigned(6'b011010);

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_c_i2_03_x(CONSTANT,60)
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_c_i2_03_x_q = $unsigned(2'b00);

    // c_i6_136(CONSTANT,20)
    assign c_i6_136_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_stencil_2d16(ADD,23)@4
    assign i_fpga_indvars_iv_next8_stencil_2d16_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q};
    assign i_fpga_indvars_iv_next8_stencil_2d16_b = {1'b0, c_i6_136_q};
    assign i_fpga_indvars_iv_next8_stencil_2d16_o = $unsigned(i_fpga_indvars_iv_next8_stencil_2d16_a) + $unsigned(i_fpga_indvars_iv_next8_stencil_2d16_b);
    assign i_fpga_indvars_iv_next8_stencil_2d16_q = i_fpga_indvars_iv_next8_stencil_2d16_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_stencil_2d16_sel_x(BITSELECT,39)@4
    assign bgTrunc_i_fpga_indvars_iv_next8_stencil_2d16_sel_x_b = i_fpga_indvars_iv_next8_stencil_2d16_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_element_extension2_x(BITJOIN,61)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_c_i2_03_x_q, bgTrunc_i_fpga_indvars_iv_next8_stencil_2d16_sel_x_b};

    // i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x(LOGICAL,54)@1
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg9(REG,78)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q);
            redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_q <= redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg8(REG,77)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together42_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x(FIFODELAY,62)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall = ~ (valid_fanout_reg9_q & i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid = valid_fanout_reg8_q & redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,64)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x(MUX,49)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_s = redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_adapt_scalar_trunc4_sel_x_b or c_i6_2634_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv7_push12_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q = c_i6_2634_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond9_stencil_2d12_cmp_nsign(LOGICAL,87)@4
    assign i_exitcond9_stencil_2d12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop12_stencil_2d11_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond26_stencil_2d15(BLACKBOX,28)@4
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond26_0 thei_llvm_fpga_push_i1_notexitcond26_stencil_2d15 (
        .in_data_in(i_exitcond9_stencil_2d12_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2(BLACKBOX,25)@0
    // in in_stall_in@20000000
    stencil_2d_i_llvm_fpga_dummy_thread_b2_dummy_stencil_2d0 thei_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4(DELAY,226)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out);
            redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_1 <= redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_0;
            redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_2 <= redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_1;
            redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_q <= redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3(BLACKBOX,26)@0
    // in in_stall_in@20000000
    stencil_2d_i_llvm_fpga_forked_b2_forked_stencil_2d0 thei_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out);
            redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_1 <= redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_0;
            redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_2 <= redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_1;
            redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q <= redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going25_stencil_2d6(BLACKBOX,27)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going25_0 thei_llvm_fpga_pipeline_keep_going25_stencil_2d6 (
        .in_data_in(redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q),
        .in_dummy_in(redist11_i_llvm_fpga_dummy_thread_stencil_2d_b2_dummy_stencil_2d2_out_dummy_out_4_q),
        .in_forked_in(redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond26_stencil_2d15_out_feedback_valid_out_9),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,37)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,44)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,45)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,46)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_pipeline_valid_out;

    // i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_c_i7_03_x(CONSTANT,51)
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_stencil_2d_b2_next_iter_isreal_stencil_2d7(LOGICAL,35)@4
    assign i_stencil_2d_b2_next_iter_isreal_stencil_2d7_q = i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q & i_llvm_fpga_pipeline_keep_going25_stencil_2d6_out_data_out;

    // i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_element_extension2_x(BITJOIN,52)@4
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_element_extension2_x_q = {i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_c_i7_03_x_q, i_stencil_2d_b2_next_iter_isreal_stencil_2d7_q};

    // valid_fanout_reg4(REG,73)@0 + 1
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

    // valid_fanout_reg3(REG,72)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together42_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x(FIFODELAY,53)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid = valid_fanout_reg3_q & redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_data = i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x(BITSELECT,55)@4
    assign i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x(MUX,47)@4
    assign i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_s = redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_s or i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q = i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q = 1'b0;
        endcase
    end

    // redist9_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q_1(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q);
        end
    end

    // i_stencil_2d_b2_current_iter_isspec_stencil_2d5(LOGICAL,34)@5
    assign i_stencil_2d_b2_current_iter_isspec_stencil_2d5_q = redist9_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d0_i_llvm_fpga_pop_coalesce_i1_stencil_2d_b2_current_iter_isreal_stencil_2d4_mux_x_q_1_q ^ VCC_q;

    // redist5_sync_together42_aunroll_x_in_i_valid_4(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together42_aunroll_x_in_i_valid_4_q <= $unsigned(redist4_sync_together42_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist6_sync_together42_aunroll_x_in_i_valid_5(DELAY,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together42_aunroll_x_in_i_valid_5_q <= $unsigned(redist5_sync_together42_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,69)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together42_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_notcmp23_stencil_2d14(LOGICAL,33)@5
    assign i_notcmp23_stencil_2d14_q = redist2_i_exitcond9_stencil_2d12_cmp_nsign_q_1_q ^ VCC_q;

    // redist2_i_exitcond9_stencil_2d12_cmp_nsign_q_1(DELAY,217)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_exitcond9_stencil_2d12_cmp_nsign_q_1_q <= $unsigned(i_exitcond9_stencil_2d12_cmp_nsign_q);
        end
    end

    // i_mul28_stencil_2d10_multconst_x(CONSTANT,66)
    assign i_mul28_stencil_2d10_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // xMSB_uid150_i_mul28_stencil_2d10_im0(BITSELECT,149)@5
    assign xMSB_uid150_i_mul28_stencil_2d10_im0_b = $unsigned(sR_mergedSignalTM_uid130_i_mul28_stencil_2d10_im0_q[19:19]);

    // c_i32_032(CONSTANT,17)
    assign c_i32_032_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_137(CONSTANT,18)
    assign c_i32_137_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc36_stencil_2d18(ADD,24)@4
    assign i_inc36_stencil_2d18_a = {1'b0, i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q};
    assign i_inc36_stencil_2d18_b = {1'b0, c_i32_137_q};
    assign i_inc36_stencil_2d18_o = $unsigned(i_inc36_stencil_2d18_a) + $unsigned(i_inc36_stencil_2d18_b);
    assign i_inc36_stencil_2d18_q = i_inc36_stencil_2d18_o[32:0];

    // bgTrunc_i_inc36_stencil_2d18_sel_x(BITSELECT,40)@4
    assign bgTrunc_i_inc36_stencil_2d18_sel_x_b = i_inc36_stencil_2d18_q[31:0];

    // valid_fanout_reg11(REG,80)@0 + 1
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

    // valid_fanout_reg10(REG,79)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together42_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x(FIFODELAY,56)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid = valid_fanout_reg10_q & redist7_i_llvm_fpga_push_i1_stencil_2d_b2_next_iter_isreal_push_stencil_2d0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_data = bgTrunc_i_inc36_stencil_2d18_sel_x_b;
    assign i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x (
        .i_valid(i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc36_stencil_2d18_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x(MUX,48)@4
    assign i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_s = redist10_i_llvm_fpga_forked_stencil_2d_b2_forked_stencil_2d3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_s or i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_o_data or c_i32_032_q)
    begin
        unique case (i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q = i_llvm_fpga_push_i32_r_026_push13_stencil_2d0_i_llvm_fpga_push_i32_r_026_push13_stencil_2d1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q = c_i32_032_q;
            default : i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q = 32'b0;
        endcase
    end

    // i_mul28_stencil_2d10_bs1_merged_bit_select(BITSELECT,214)@4
    assign i_mul28_stencil_2d10_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q[31:18];
    assign i_mul28_stencil_2d10_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q[17:0];

    // i_mul28_stencil_2d10_bjA2(BITJOIN,90)@4
    assign i_mul28_stencil_2d10_bjA2_q = {GND_q, i_mul28_stencil_2d10_bs1_merged_bit_select_b};

    // padACst_uid123_i_mul28_stencil_2d10_im0(CONSTANT,122)
    assign padACst_uid123_i_mul28_stencil_2d10_im0_q = $unsigned(4'b0000);

    // aPostPad_uid124_i_mul28_stencil_2d10_im0(BITJOIN,123)@4
    assign aPostPad_uid124_i_mul28_stencil_2d10_im0_q = {i_mul28_stencil_2d10_bjA2_q, padACst_uid123_i_mul28_stencil_2d10_im0_q};

    // sub_uid125_i_mul28_stencil_2d10_im0(SUB,124)@4
    assign sub_uid125_i_mul28_stencil_2d10_im0_a = $unsigned({{1{aPostPad_uid124_i_mul28_stencil_2d10_im0_q[18]}}, aPostPad_uid124_i_mul28_stencil_2d10_im0_q});
    assign sub_uid125_i_mul28_stencil_2d10_im0_b = $unsigned({{5{i_mul28_stencil_2d10_bjA2_q[14]}}, i_mul28_stencil_2d10_bjA2_q});
    assign sub_uid125_i_mul28_stencil_2d10_im0_o = $unsigned($signed(sub_uid125_i_mul28_stencil_2d10_im0_a) - $signed(sub_uid125_i_mul28_stencil_2d10_im0_b));
    assign sub_uid125_i_mul28_stencil_2d10_im0_q = sub_uid125_i_mul28_stencil_2d10_im0_o[19:0];

    // sR_bottomRange_uid129_i_mul28_stencil_2d10_im0(BITSELECT,128)@4
    assign sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_in = $unsigned(sub_uid125_i_mul28_stencil_2d10_im0_q[18:0]);
    assign sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b = $unsigned(sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_in[18:0]);

    // redist1_sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b_1(DELAY,216)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b_1_q <= $unsigned(sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b);
        end
    end

    // sR_mergedSignalTM_uid130_i_mul28_stencil_2d10_im0(BITJOIN,129)@5
    assign sR_mergedSignalTM_uid130_i_mul28_stencil_2d10_im0_q = {redist1_sR_bottomRange_uid129_i_mul28_stencil_2d10_im0_b_1_q, GND_q};

    // sOuputFormat_mergedSignalTM_uid154_i_mul28_stencil_2d10_im0(BITJOIN,153)@5
    assign sOuputFormat_mergedSignalTM_uid154_i_mul28_stencil_2d10_im0_q = {xMSB_uid150_i_mul28_stencil_2d10_im0_b, sR_mergedSignalTM_uid130_i_mul28_stencil_2d10_im0_q};

    // i_mul28_stencil_2d10_sums_align_1(BITSHIFT,99)@5
    assign i_mul28_stencil_2d10_sums_align_1_qint = { sOuputFormat_mergedSignalTM_uid154_i_mul28_stencil_2d10_im0_q, 18'b000000000000000000 };
    assign i_mul28_stencil_2d10_sums_align_1_q = i_mul28_stencil_2d10_sums_align_1_qint[38:0];

    // xMSB_uid209_i_mul28_stencil_2d10_im5(BITSELECT,208)@5
    assign xMSB_uid209_i_mul28_stencil_2d10_im5_b = $unsigned(sR_mergedSignalTM_uid183_i_mul28_stencil_2d10_im5_q[23:23]);

    // i_mul28_stencil_2d10_bjA7(BITJOIN,95)@4
    assign i_mul28_stencil_2d10_bjA7_q = {GND_q, i_mul28_stencil_2d10_bs1_merged_bit_select_c};

    // aPostPad_uid177_i_mul28_stencil_2d10_im5(BITJOIN,176)@4
    assign aPostPad_uid177_i_mul28_stencil_2d10_im5_q = {i_mul28_stencil_2d10_bjA7_q, padACst_uid123_i_mul28_stencil_2d10_im0_q};

    // sub_uid178_i_mul28_stencil_2d10_im5(SUB,177)@4
    assign sub_uid178_i_mul28_stencil_2d10_im5_a = $unsigned({{1{aPostPad_uid177_i_mul28_stencil_2d10_im5_q[22]}}, aPostPad_uid177_i_mul28_stencil_2d10_im5_q});
    assign sub_uid178_i_mul28_stencil_2d10_im5_b = $unsigned({{5{i_mul28_stencil_2d10_bjA7_q[18]}}, i_mul28_stencil_2d10_bjA7_q});
    assign sub_uid178_i_mul28_stencil_2d10_im5_o = $unsigned($signed(sub_uid178_i_mul28_stencil_2d10_im5_a) - $signed(sub_uid178_i_mul28_stencil_2d10_im5_b));
    assign sub_uid178_i_mul28_stencil_2d10_im5_q = sub_uid178_i_mul28_stencil_2d10_im5_o[23:0];

    // sR_bottomRange_uid182_i_mul28_stencil_2d10_im5(BITSELECT,181)@4
    assign sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_in = $unsigned(sub_uid178_i_mul28_stencil_2d10_im5_q[22:0]);
    assign sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b = $unsigned(sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_in[22:0]);

    // redist0_sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b_1(DELAY,215)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b_1_q <= $unsigned(sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b);
        end
    end

    // sR_mergedSignalTM_uid183_i_mul28_stencil_2d10_im5(BITJOIN,182)@5
    assign sR_mergedSignalTM_uid183_i_mul28_stencil_2d10_im5_q = {redist0_sR_bottomRange_uid182_i_mul28_stencil_2d10_im5_b_1_q, GND_q};

    // sOuputFormat_mergedSignalTM_uid213_i_mul28_stencil_2d10_im5(BITJOIN,212)@5
    assign sOuputFormat_mergedSignalTM_uid213_i_mul28_stencil_2d10_im5_q = {xMSB_uid209_i_mul28_stencil_2d10_im5_b, sR_mergedSignalTM_uid183_i_mul28_stencil_2d10_im5_q};

    // i_mul28_stencil_2d10_sums_result_add_0_0(ADD,101)@5
    assign i_mul28_stencil_2d10_sums_result_add_0_0_a = {15'b000000000000000, sOuputFormat_mergedSignalTM_uid213_i_mul28_stencil_2d10_im5_q};
    assign i_mul28_stencil_2d10_sums_result_add_0_0_b = {1'b0, i_mul28_stencil_2d10_sums_align_1_q};
    assign i_mul28_stencil_2d10_sums_result_add_0_0_o = $unsigned(i_mul28_stencil_2d10_sums_result_add_0_0_a) + $unsigned(i_mul28_stencil_2d10_sums_result_add_0_0_b);
    assign i_mul28_stencil_2d10_sums_result_add_0_0_q = i_mul28_stencil_2d10_sums_result_add_0_0_o[39:0];

    // i_mul28_stencil_2d10_extender_x(BITJOIN,65)@5
    assign i_mul28_stencil_2d10_extender_x_q = {i_mul28_stencil_2d10_multconst_x_q, i_mul28_stencil_2d10_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_mul28_stencil_2d10_sel_x(BITSELECT,41)@5
    assign bgTrunc_i_mul28_stencil_2d10_sel_x_b = i_mul28_stencil_2d10_extender_x_q[31:0];

    // i_mul28_stencil_2d10_vt_select_31(BITSELECT,32)@5
    assign i_mul28_stencil_2d10_vt_select_31_b = bgTrunc_i_mul28_stencil_2d10_sel_x_b[31:1];

    // i_mul28_stencil_2d10_vt_join(BITJOIN,31)@5
    assign i_mul28_stencil_2d10_vt_join_q = {i_mul28_stencil_2d10_vt_select_31_b, GND_q};

    // redist8_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q_1(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,67)@5
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist8_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d0_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d9_mux_x_q_1_q;
    assign out_c0_exi4_2_tpl = i_mul28_stencil_2d10_vt_join_q;
    assign out_c0_exi4_3_tpl = redist2_i_exitcond9_stencil_2d12_cmp_nsign_q_1_q;
    assign out_c0_exi4_4_tpl = i_notcmp23_stencil_2d14_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist6_sync_together42_aunroll_x_in_i_valid_5_q;
    assign out_stencil_2d_B2_current_iter_isspec = i_stencil_2d_b2_current_iter_isspec_stencil_2d5_q;

endmodule
