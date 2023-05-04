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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_3s_c0_enter282_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter282_if_loop_30 (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [63:0] out_c0_exi5_1_tpl,
    output wire [63:0] out_c0_exi5_2_tpl,
    output wire [63:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_if_loop_3_B3_current_iter_isspec,
    output wire [0:0] out_o_valid,
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
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_146_q;
    wire [7:0] c_i8_149_q;
    wire [7:0] c_i8_9847_q;
    wire [8:0] i_fpga_indvars_iv_next_if_loop_322_a;
    wire [8:0] i_fpga_indvars_iv_next_if_loop_322_b;
    logic [8:0] i_fpga_indvars_iv_next_if_loop_322_o;
    wire [8:0] i_fpga_indvars_iv_next_if_loop_322_q;
    wire [63:0] i_idxprom_if_loop_310_vt_join_q;
    wire [31:0] i_idxprom_if_loop_310_vt_select_31_b;
    wire [0:0] i_if_loop_3_b3_current_iter_isspec_if_loop_35_q;
    wire [0:0] i_if_loop_3_b3_next_iter_isreal_if_loop_37_q;
    wire [32:0] i_inc_if_loop_315_a;
    wire [32:0] i_inc_if_loop_315_b;
    logic [32:0] i_inc_if_loop_315_o;
    wire [32:0] i_inc_if_loop_315_q;
    wire [0:0] i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_a197_if_loop_311_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b208_if_loop_313_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_valid_out_5;
    wire [0:0] i_notcmp16_if_loop_320_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_322_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_315_sel_x_b;
    wire [64:0] i_arrayidx6_if_loop_30_add_x_a;
    wire [64:0] i_arrayidx6_if_loop_30_add_x_b;
    logic [64:0] i_arrayidx6_if_loop_30_add_x_o;
    wire [64:0] i_arrayidx6_if_loop_30_add_x_q;
    wire [1:0] i_arrayidx6_if_loop_30_c_i2_01_x_q;
    wire [61:0] i_arrayidx6_if_loop_30_narrow_x_b;
    wire [63:0] i_arrayidx6_if_loop_30_shift_join_x_q;
    wire [63:0] i_arrayidx6_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_if_loop_30_add_x_a;
    wire [64:0] i_arrayidx_if_loop_30_add_x_b;
    logic [64:0] i_arrayidx_if_loop_30_add_x_o;
    wire [64:0] i_arrayidx_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_if_loop_310_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_s;
    reg [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_data;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    wire [0:0] i_exitcond_if_loop_317_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond_if_loop_317_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together57_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together57_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_q;
    reg [0:0] redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_delay_0;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q_1_q;
    reg [0:0] redist6_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q_1_q;
    reg [0:0] redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q;
    reg [0:0] redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_0;
    reg [0:0] redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_2;
    reg [0:0] redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_q;
    reg [0:0] redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_0;
    reg [0:0] redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_1;
    reg [0:0] redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together57_aunroll_x_in_i_valid_2(DELAY,107)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_2_q <= redist1_sync_together57_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together57_aunroll_x_in_i_valid_3(DELAY,108)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_3_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,88)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg11(REG,97)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i8_9847(CONSTANT,28)
    assign c_i8_9847_q = $unsigned(8'b01100010);

    // c_i8_149(CONSTANT,27)
    assign c_i8_149_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_if_loop_322(ADD,30)@4
    assign i_fpga_indvars_iv_next_if_loop_322_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q};
    assign i_fpga_indvars_iv_next_if_loop_322_b = {1'b0, c_i8_149_q};
    assign i_fpga_indvars_iv_next_if_loop_322_o = $unsigned(i_fpga_indvars_iv_next_if_loop_322_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_322_b);
    assign i_fpga_indvars_iv_next_if_loop_322_q = i_fpga_indvars_iv_next_if_loop_322_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_322_sel_x(BITSELECT,50)@4
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_322_sel_x_b = i_fpga_indvars_iv_next_if_loop_322_q[7:0];

    // i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x(LOGICAL,76)@1
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg13(REG,99)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
            redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_q <= redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,98)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x(FIFODELAY,81)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid = valid_fanout_reg12_q & redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_data = bgTrunc_i_fpga_indvars_iv_next_if_loop_322_sel_x_b;
    assign i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_fpga_indvars_iv_next_if_loop_322_sel_x_b),
        .o_data(i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x(MUX,71)@4
    assign i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_s = redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_s or i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_o_data or c_i8_9847_q)
    begin
        unique case (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q = i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_30_i_llvm_fpga_push_i8_fpga_indvars_iv_push8_if_loop_31_x_o_data;
            1'b1 : i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q = c_i8_9847_q;
            default : i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q = 8'b0;
        endcase
    end

    // i_exitcond_if_loop_317_cmp_nsign(LOGICAL,105)@4
    assign i_exitcond_if_loop_317_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_30_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop8_if_loop_316_mux_x_q[7:7]));

    // i_llvm_fpga_push_i1_notexitcond19_if_loop_321(BLACKBOX,43)@4
    // in in_empty_in@20000000
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond19_0 thei_llvm_fpga_push_i1_notexitcond19_if_loop_321 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_if_loop_317_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32(BLACKBOX,38)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_dummy_thread_b3_dummy_if_loop_30 thei_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out);
            redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_1 <= redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_0;
            redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_2 <= redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_1;
            redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_q <= redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33(BLACKBOX,41)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_forked_b3_forked_if_loop_30 thei_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out);
            redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_1 <= redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_0;
            redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_2 <= redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_1;
            redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q <= redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going18_if_loop_36(BLACKBOX,42)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going18_0 thei_llvm_fpga_pipeline_keep_going18_if_loop_36 (
        .in_data_in(redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q),
        .in_dummy_in(redist8_i_llvm_fpga_dummy_thread_if_loop_3_b3_dummy_if_loop_32_out_dummy_out_4_q),
        .in_forked_in(redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond19_if_loop_321_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,48)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,53)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,54)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,55)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_pipeline_valid_out;

    // redist3_sync_together57_aunroll_x_in_i_valid_4(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together57_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together57_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,86)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_c_i7_03_x(CONSTANT,73)
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_if_loop_3_b3_next_iter_isreal_if_loop_37(LOGICAL,36)@4
    assign i_if_loop_3_b3_next_iter_isreal_if_loop_37_q = i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q & i_llvm_fpga_pipeline_keep_going18_if_loop_36_out_data_out;

    // i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_element_extension2_x(BITJOIN,74)@4
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_element_extension2_x_q = {i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_c_i7_03_x_q, i_if_loop_3_b3_next_iter_isreal_if_loop_37_q};

    // valid_fanout_reg4(REG,90)@0 + 1
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

    // valid_fanout_reg3(REG,89)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x(FIFODELAY,75)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid = valid_fanout_reg3_q & redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_data = i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x(BITSELECT,77)@4
    assign i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_31_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x(MUX,69)@4
    assign i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_s = redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_s or i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q = i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q = 1'b0;
        endcase
    end

    // redist6_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q_1(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q);
        end
    end

    // i_if_loop_3_b3_current_iter_isspec_if_loop_35(LOGICAL,35)@5
    assign i_if_loop_3_b3_current_iter_isspec_if_loop_35_q = redist6_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b3_current_iter_isreal_if_loop_34_mux_x_q_1_q ^ VCC_q;

    // i_notcmp16_if_loop_320(LOGICAL,44)@5
    assign i_notcmp16_if_loop_320_q = redist0_i_exitcond_if_loop_317_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond_if_loop_317_cmp_nsign_q_1(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond_if_loop_317_cmp_nsign_q_1_q <= $unsigned(i_exitcond_if_loop_317_cmp_nsign_q);
        end
    end

    // i_arrayidx6_if_loop_30_narrow_x(BITSELECT,58)@5
    assign i_arrayidx6_if_loop_30_narrow_x_b = i_idxprom_if_loop_310_vt_join_q[61:0];

    // i_arrayidx6_if_loop_30_c_i2_01_x(CONSTANT,57)
    assign i_arrayidx6_if_loop_30_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx6_if_loop_30_shift_join_x(BITJOIN,59)@5
    assign i_arrayidx6_if_loop_30_shift_join_x_q = {i_arrayidx6_if_loop_30_narrow_x_b, i_arrayidx6_if_loop_30_c_i2_01_x_q};

    // valid_fanout_reg7(REG,93)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_b208_if_loop_313(BLACKBOX,40)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_p1024i32_b208_0 thei_llvm_fpga_ffwd_dest_p1024i32_b208_if_loop_313 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_b208_if_loop_313_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx6_if_loop_30_add_x(ADD,56)@5
    assign i_arrayidx6_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_b208_if_loop_313_out_dest_data_out_1_0};
    assign i_arrayidx6_if_loop_30_add_x_b = {1'b0, i_arrayidx6_if_loop_30_shift_join_x_q};
    assign i_arrayidx6_if_loop_30_add_x_o = $unsigned(i_arrayidx6_if_loop_30_add_x_a) + $unsigned(i_arrayidx6_if_loop_30_add_x_b);
    assign i_arrayidx6_if_loop_30_add_x_q = i_arrayidx6_if_loop_30_add_x_o[64:0];

    // i_arrayidx6_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,61)@5
    assign i_arrayidx6_if_loop_30_dupName_0_trunc_sel_x_b = i_arrayidx6_if_loop_30_add_x_q[63:0];

    // valid_fanout_reg6(REG,92)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_a197_if_loop_311(BLACKBOX,39)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_p1024i32_a197_0 thei_llvm_fpga_ffwd_dest_p1024i32_a197_if_loop_311 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_a197_if_loop_311_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_if_loop_30_add_x(ADD,62)@5
    assign i_arrayidx_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_a197_if_loop_311_out_dest_data_out_0_0};
    assign i_arrayidx_if_loop_30_add_x_b = {1'b0, i_arrayidx6_if_loop_30_shift_join_x_q};
    assign i_arrayidx_if_loop_30_add_x_o = $unsigned(i_arrayidx_if_loop_30_add_x_a) + $unsigned(i_arrayidx_if_loop_30_add_x_b);
    assign i_arrayidx_if_loop_30_add_x_q = i_arrayidx_if_loop_30_add_x_o[64:0];

    // i_arrayidx_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,67)@5
    assign i_arrayidx_if_loop_30_dupName_0_trunc_sel_x_b = i_arrayidx_if_loop_30_add_x_q[63:0];

    // c_i32_045(CONSTANT,25)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_146(CONSTANT,26)
    assign c_i32_146_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_315(ADD,37)@4
    assign i_inc_if_loop_315_a = {1'b0, i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q};
    assign i_inc_if_loop_315_b = {1'b0, c_i32_146_q};
    assign i_inc_if_loop_315_o = $unsigned(i_inc_if_loop_315_a) + $unsigned(i_inc_if_loop_315_b);
    assign i_inc_if_loop_315_q = i_inc_if_loop_315_o[32:0];

    // bgTrunc_i_inc_if_loop_315_sel_x(BITSELECT,51)@4
    assign bgTrunc_i_inc_if_loop_315_sel_x_b = i_inc_if_loop_315_q[31:0];

    // valid_fanout_reg10(REG,96)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,95)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x(FIFODELAY,78)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid = valid_fanout_reg9_q & redist4_i_llvm_fpga_push_i1_if_loop_3_b3_next_iter_isreal_push_if_loop_30_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_data = bgTrunc_i_inc_if_loop_315_sel_x_b;
    assign i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_if_loop_315_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x(MUX,70)@4
    assign i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_s = redist7_i_llvm_fpga_forked_if_loop_3_b3_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_s or i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_o_data or c_i32_045_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q = i_llvm_fpga_push_i32_i_018_push9_if_loop_30_i_llvm_fpga_push_i32_i_018_push9_if_loop_31_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q = c_i32_045_q;
            default : i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q = 32'b0;
        endcase
    end

    // redist5_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q_1(DELAY,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q);
        end
    end

    // i_idxprom_if_loop_310_sel_x(BITSELECT,68)@5
    assign i_idxprom_if_loop_310_sel_x_b = {32'b00000000000000000000000000000000, redist5_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_30_i_llvm_fpga_pop_i32_i_018_pop9_if_loop_39_mux_x_q_1_q[31:0]};

    // i_idxprom_if_loop_310_vt_select_31(BITSELECT,34)@5
    assign i_idxprom_if_loop_310_vt_select_31_b = i_idxprom_if_loop_310_sel_x_b[31:0];

    // i_idxprom_if_loop_310_vt_join(BITJOIN,33)@5
    assign i_idxprom_if_loop_310_vt_join_q = {c_i32_045_q, i_idxprom_if_loop_310_vt_select_31_b};

    // sync_out_aunroll_x(GPOUT,84)@5
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_idxprom_if_loop_310_vt_join_q;
    assign out_c0_exi5_2_tpl = i_arrayidx_if_loop_30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi5_3_tpl = i_arrayidx6_if_loop_30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi5_4_tpl = redist0_i_exitcond_if_loop_317_cmp_nsign_q_1_q;
    assign out_c0_exi5_5_tpl = i_notcmp16_if_loop_320_q;
    assign out_if_loop_3_B3_current_iter_isspec = i_if_loop_3_b3_current_iter_isspec_if_loop_35_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
