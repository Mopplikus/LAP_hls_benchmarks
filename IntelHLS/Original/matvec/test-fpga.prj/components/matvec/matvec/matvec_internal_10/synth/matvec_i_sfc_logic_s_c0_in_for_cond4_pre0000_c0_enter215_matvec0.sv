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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond4_preheader_matvecs_c0_enter215_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_cond4_pre0000_c0_enter215_matvec0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [31:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_matvec_B2_current_iter_isspec,
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
    wire [31:0] c_i32_041_q;
    wire [31:0] c_i32_142_q;
    wire [5:0] c_i6_140_q;
    wire [5:0] c_i6_2838_q;
    wire [6:0] i_fpga_indvars_iv_next2_matvec14_a;
    wire [6:0] i_fpga_indvars_iv_next2_matvec14_b;
    logic [6:0] i_fpga_indvars_iv_next2_matvec14_o;
    wire [6:0] i_fpga_indvars_iv_next2_matvec14_q;
    wire [32:0] i_inc14_matvec17_a;
    wire [32:0] i_inc14_matvec17_b;
    logic [32:0] i_inc14_matvec17_o;
    wire [32:0] i_inc14_matvec17_q;
    wire [0:0] i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_valid_out_4;
    wire [0:0] i_matvec_b2_current_iter_isspec_matvec5_q;
    wire [0:0] i_matvec_b2_next_iter_isreal_matvec7_q;
    wire [0:0] i_notcmp4_matvec12_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next2_matvec14_sel_x_b;
    wire [31:0] bgTrunc_i_inc14_matvec17_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_o_data;
    wire [1:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_c_i2_03_x_q;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    wire [0:0] i_exitcond3_matvec10_cmp_nsign_q;
    reg [0:0] redist0_sync_together47_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together47_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together47_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    reg [0:0] redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q;
    reg [0:0] redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_0;
    reg [0:0] redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_1;
    reg [0:0] redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_2;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_q;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_0;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_1;
    reg [0:0] redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together47_aunroll_x_in_i_valid_2(DELAY,84)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together47_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together47_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together47_aunroll_x_in_i_valid_2_q <= redist0_sync_together47_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together47_aunroll_x_in_i_valid_3(DELAY,85)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together47_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together47_aunroll_x_in_i_valid_3_q <= $unsigned(redist0_sync_together47_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,68)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together47_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg6(REG,72)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together47_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_2838(CONSTANT,26)
    assign c_i6_2838_q = $unsigned(6'b011100);

    // i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_c_i2_03_x(CONSTANT,59)
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_c_i2_03_x_q = $unsigned(2'b00);

    // c_i6_140(CONSTANT,25)
    assign c_i6_140_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next2_matvec14(ADD,28)@4
    assign i_fpga_indvars_iv_next2_matvec14_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q};
    assign i_fpga_indvars_iv_next2_matvec14_b = {1'b0, c_i6_140_q};
    assign i_fpga_indvars_iv_next2_matvec14_o = $unsigned(i_fpga_indvars_iv_next2_matvec14_a) + $unsigned(i_fpga_indvars_iv_next2_matvec14_b);
    assign i_fpga_indvars_iv_next2_matvec14_q = i_fpga_indvars_iv_next2_matvec14_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next2_matvec14_sel_x(BITSELECT,40)@4
    assign bgTrunc_i_fpga_indvars_iv_next2_matvec14_sel_x_b = i_fpga_indvars_iv_next2_matvec14_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_element_extension2_x(BITJOIN,60)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_element_extension2_x_q = {i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_c_i2_03_x_q, bgTrunc_i_fpga_indvars_iv_next2_matvec14_sel_x_b};

    // i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x(LOGICAL,53)@1
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg8(REG,74)@0 + 1
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

    // redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2(DELAY,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q);
            redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q <= redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg7(REG,73)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist0_sync_together47_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x(FIFODELAY,61)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid = valid_fanout_reg7_q & redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_adapt_scalar_trunc4_sel_x(BITSELECT,63)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x(MUX,48)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_s = redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_adapt_scalar_trunc4_sel_x_b or c_i6_2838_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv1_push7_matvec0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q = c_i6_2838_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond3_matvec10_cmp_nsign(LOGICAL,83)@4
    assign i_exitcond3_matvec10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec0_i_llvm_fpga_pop_i6_fpga_indvars_iv1_pop7_matvec9_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond7_matvec13(BLACKBOX,33)@4
    // in in_empty_in@20000000
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond7_0 thei_llvm_fpga_push_i1_notexitcond7_matvec13 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond3_matvec10_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going6_matvec6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2(BLACKBOX,30)@0
    // in in_stall_in@20000000
    matvec_i_llvm_fpga_dummy_thread_b2_dummy_matvec0 thei_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4(DELAY,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out);
            redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_1 <= redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_0;
            redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_2 <= redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_1;
            redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_q <= redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_matvec_b2_forked_matvec3(BLACKBOX,31)@0
    // in in_stall_in@20000000
    matvec_i_llvm_fpga_forked_b2_forked_matvec0 thei_llvm_fpga_forked_matvec_b2_forked_matvec3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4(DELAY,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out);
            redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_1 <= redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_0;
            redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_2 <= redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_1;
            redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q <= redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going6_matvec6(BLACKBOX,32)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going6_0 thei_llvm_fpga_pipeline_keep_going6_matvec6 (
        .in_data_in(redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q),
        .in_dummy_in(redist4_i_llvm_fpga_dummy_thread_matvec_b2_dummy_matvec2_out_dummy_out_4_q),
        .in_forked_in(redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond7_matvec13_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,38)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going6_matvec6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,43)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,44)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,45)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going6_matvec6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,66)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together47_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_c_i7_03_x(CONSTANT,50)
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_matvec_b2_next_iter_isreal_matvec7(LOGICAL,35)@4
    assign i_matvec_b2_next_iter_isreal_matvec7_q = i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q & i_llvm_fpga_pipeline_keep_going6_matvec6_out_data_out;

    // i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_element_extension2_x(BITJOIN,51)@4
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_element_extension2_x_q = {i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_c_i7_03_x_q, i_matvec_b2_next_iter_isreal_matvec7_q};

    // valid_fanout_reg4(REG,70)@0 + 1
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

    // valid_fanout_reg3(REG,69)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together47_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x(FIFODELAY,52)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid = valid_fanout_reg3_q & redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_data = i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x (
        .i_valid(i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x(BITSELECT,54)@4
    assign i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x(MUX,46)@4
    assign i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_s = redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_s or i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q = i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q = 1'b0;
        endcase
    end

    // i_matvec_b2_current_iter_isspec_matvec5(LOGICAL,34)@4
    assign i_matvec_b2_current_iter_isspec_matvec5_q = i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec0_i_llvm_fpga_pop_coalesce_i1_matvec_b2_current_iter_isreal_matvec4_mux_x_q ^ VCC_q;

    // c_i32_041(CONSTANT,23)
    assign c_i32_041_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_142(CONSTANT,24)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc14_matvec17(ADD,29)@4
    assign i_inc14_matvec17_a = {1'b0, i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q};
    assign i_inc14_matvec17_b = {1'b0, c_i32_142_q};
    assign i_inc14_matvec17_o = $unsigned(i_inc14_matvec17_a) + $unsigned(i_inc14_matvec17_b);
    assign i_inc14_matvec17_q = i_inc14_matvec17_o[32:0];

    // bgTrunc_i_inc14_matvec17_sel_x(BITSELECT,41)@4
    assign bgTrunc_i_inc14_matvec17_sel_x_b = i_inc14_matvec17_q[31:0];

    // valid_fanout_reg11(REG,77)@0 + 1
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

    // valid_fanout_reg10(REG,76)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist0_sync_together47_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x(FIFODELAY,55)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid = valid_fanout_reg10_q & redist2_i_llvm_fpga_push_i1_matvec_b2_next_iter_isreal_push_matvec0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_data = bgTrunc_i_inc14_matvec17_sel_x_b;
    assign i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x (
        .i_valid(i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc14_matvec17_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x(MUX,47)@4
    assign i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_s = redist3_i_llvm_fpga_forked_matvec_b2_forked_matvec3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_s or i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_o_data or c_i32_041_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q = i_llvm_fpga_push_i32_i_013_push8_matvec0_i_llvm_fpga_push_i32_i_013_push8_matvec1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q = c_i32_041_q;
            default : i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q = 32'b0;
        endcase
    end

    // i_notcmp4_matvec12(LOGICAL,36)@4
    assign i_notcmp4_matvec12_q = i_exitcond3_matvec10_cmp_nsign_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,64)@4
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_exitcond3_matvec10_cmp_nsign_q;
    assign out_c0_exi3_2_tpl = i_notcmp4_matvec12_q;
    assign out_c0_exi3_3_tpl = i_llvm_fpga_pop_i32_i_013_pop8_matvec0_i_llvm_fpga_pop_i32_i_013_pop8_matvec16_mux_x_q;
    assign out_matvec_B2_current_iter_isspec = i_matvec_b2_current_iter_isspec_matvec5_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
