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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body12_stencil_2ds_c1_enter_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c1_in_for_body12_s_c1_enter_stencil_2d0 (
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [31:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [0:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_010_q;
    wire [32:0] i_add21_stencil_2d4_a;
    wire [32:0] i_add21_stencil_2d4_b;
    logic [32:0] i_add21_stencil_2d4_o;
    wire [32:0] i_add21_stencil_2d4_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d6_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_valid_out_36;
    wire [31:0] bgTrunc_i_add21_stencil_2d4_sel_x_b;
    wire [63:0] bgTrunc_i_mul20_stencil_2d2_sel_x_in;
    wire [31:0] bgTrunc_i_mul20_stencil_2d2_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [63:0] i_mul20_stencil_2d2_sums_join_0_q;
    wire [50:0] i_mul20_stencil_2d2_sums_align_1_q;
    wire [50:0] i_mul20_stencil_2d2_sums_align_1_qint;
    wire [64:0] i_mul20_stencil_2d2_sums_result_add_0_0_a;
    wire [64:0] i_mul20_stencil_2d2_sums_result_add_0_0_b;
    logic [64:0] i_mul20_stencil_2d2_sums_result_add_0_0_o;
    wire [64:0] i_mul20_stencil_2d2_sums_result_add_0_0_q;
    wire i_mul20_stencil_2d2_im0_cma_reset;
    wire [13:0] i_mul20_stencil_2d2_im0_cma_a0;
    wire [13:0] i_mul20_stencil_2d2_im0_cma_c0;
    wire [27:0] i_mul20_stencil_2d2_im0_cma_s0;
    wire [27:0] i_mul20_stencil_2d2_im0_cma_qq;
    wire [27:0] i_mul20_stencil_2d2_im0_cma_q;
    wire i_mul20_stencil_2d2_im0_cma_ena0;
    wire i_mul20_stencil_2d2_im0_cma_ena1;
    wire i_mul20_stencil_2d2_im0_cma_ena2;
    wire i_mul20_stencil_2d2_im8_cma_reset;
    wire [17:0] i_mul20_stencil_2d2_im8_cma_a0;
    wire [17:0] i_mul20_stencil_2d2_im8_cma_c0;
    wire [35:0] i_mul20_stencil_2d2_im8_cma_s0;
    wire [35:0] i_mul20_stencil_2d2_im8_cma_qq;
    wire [35:0] i_mul20_stencil_2d2_im8_cma_q;
    wire i_mul20_stencil_2d2_im8_cma_ena0;
    wire i_mul20_stencil_2d2_im8_cma_ena1;
    wire i_mul20_stencil_2d2_im8_cma_ena2;
    wire i_mul20_stencil_2d2_ma3_cma_reset;
    wire [13:0] i_mul20_stencil_2d2_ma3_cma_a0;
    wire [17:0] i_mul20_stencil_2d2_ma3_cma_c0;
    wire [13:0] i_mul20_stencil_2d2_ma3_cma_a1;
    wire [17:0] i_mul20_stencil_2d2_ma3_cma_c1;
    wire [32:0] i_mul20_stencil_2d2_ma3_cma_s0;
    wire [32:0] i_mul20_stencil_2d2_ma3_cma_qq;
    wire [32:0] i_mul20_stencil_2d2_ma3_cma_q;
    wire i_mul20_stencil_2d2_ma3_cma_ena0;
    wire i_mul20_stencil_2d2_ma3_cma_ena1;
    wire i_mul20_stencil_2d2_ma3_cma_ena2;
    wire [13:0] i_mul20_stencil_2d2_bs1_merged_bit_select_b;
    wire [17:0] i_mul20_stencil_2d2_bs1_merged_bit_select_c;
    wire [13:0] i_mul20_stencil_2d2_bs2_merged_bit_select_b;
    wire [17:0] i_mul20_stencil_2d2_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_q;
    reg [0:0] redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_0;
    reg [0:0] redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_1;
    reg [0:0] redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_2;
    reg [0:0] redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q;
    reg [0:0] redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_0;
    reg [0:0] redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_1;
    reg [0:0] redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_2;
    reg [0:0] redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_q;
    reg [0:0] redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_0;
    reg [0:0] redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_1;
    reg [0:0] redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_2;
    reg [0:0] redist3_sync_together14_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together14_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together14_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist4_bgTrunc_i_mul20_stencil_2d2_sel_x_b_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist3_sync_together14_aunroll_x_in_i_valid_3(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together14_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together14_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together14_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together14_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together14_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together14_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together14_aunroll_x_in_i_valid_3_q <= redist3_sync_together14_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg3(REG,24)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together14_aunroll_x_in_i_valid_3_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,52)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg1(REG,22)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together14_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,23)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together14_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_0 <= '0;
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_1 <= '0;
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_2 <= '0;
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_0 <= $unsigned(in_c1_eni5_5_tpl);
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_1 <= redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_0;
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_2 <= redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_1;
            redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_q <= redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5(BLACKBOX,11)@42
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    stencil_2d_i_llvm_fpga_push_i32_temp_321_push36_0 thei_llvm_fpga_push_i32_temp_321_push36_stencil_2d5 (
        .in_c1_ene4(redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q),
        .in_c1_ene5(redist2_sync_together14_aunroll_x_in_c1_eni5_5_tpl_4_q),
        .in_data_in(bgTrunc_i_add21_stencil_2d4_sel_x_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_feedback_stall_out_36),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4(DELAY,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_0 <= '0;
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_1 <= '0;
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_2 <= '0;
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_0 <= $unsigned(in_c1_eni5_3_tpl);
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_1 <= redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_0;
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_2 <= redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_1;
            redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_q <= redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_delay_2;
        end
    end

    // c_i32_010(CONSTANT,5)
    assign c_i32_010_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3(BLACKBOX,10)@42
    // out out_feedback_stall_out_36@20000000
    stencil_2d_i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_0 thei_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3 (
        .in_data_in(c_i32_010_q),
        .in_dir(redist0_sync_together14_aunroll_x_in_c1_eni5_3_tpl_4_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_temp_321_push36_stencil_2d5_out_feedback_valid_out_36),
        .in_predicate(redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul20_stencil_2d2_bs2_merged_bit_select(BITSELECT,46)@38
    assign i_mul20_stencil_2d2_bs2_merged_bit_select_b = in_c1_eni5_2_tpl[31:18];
    assign i_mul20_stencil_2d2_bs2_merged_bit_select_c = in_c1_eni5_2_tpl[17:0];

    // i_mul20_stencil_2d2_bs1_merged_bit_select(BITSELECT,45)@38
    assign i_mul20_stencil_2d2_bs1_merged_bit_select_b = in_c1_eni5_1_tpl[31:18];
    assign i_mul20_stencil_2d2_bs1_merged_bit_select_c = in_c1_eni5_1_tpl[17:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_mul20_stencil_2d2_ma3_cma(CHAINMULTADD,44)@38 + 3
    assign i_mul20_stencil_2d2_ma3_cma_reset = ~ (resetn);
    assign i_mul20_stencil_2d2_ma3_cma_ena0 = in_enable[0];
    assign i_mul20_stencil_2d2_ma3_cma_ena1 = i_mul20_stencil_2d2_ma3_cma_ena0;
    assign i_mul20_stencil_2d2_ma3_cma_ena2 = i_mul20_stencil_2d2_ma3_cma_ena0;

    assign i_mul20_stencil_2d2_ma3_cma_a0 = i_mul20_stencil_2d2_bs1_merged_bit_select_b;
    assign i_mul20_stencil_2d2_ma3_cma_c0 = i_mul20_stencil_2d2_bs2_merged_bit_select_c;
    assign i_mul20_stencil_2d2_ma3_cma_a1 = i_mul20_stencil_2d2_bs2_merged_bit_select_b;
    assign i_mul20_stencil_2d2_ma3_cma_c1 = i_mul20_stencil_2d2_bs1_merged_bit_select_c;
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
    ) i_mul20_stencil_2d2_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_stencil_2d2_ma3_cma_ena2, i_mul20_stencil_2d2_ma3_cma_ena1, i_mul20_stencil_2d2_ma3_cma_ena0 }),
        .aclr({ i_mul20_stencil_2d2_ma3_cma_reset, i_mul20_stencil_2d2_ma3_cma_reset }),
        .ay(i_mul20_stencil_2d2_ma3_cma_a1),
        .by(i_mul20_stencil_2d2_ma3_cma_a0),
        .ax(i_mul20_stencil_2d2_ma3_cma_c1),
        .bx(i_mul20_stencil_2d2_ma3_cma_c0),
        .resulta(i_mul20_stencil_2d2_ma3_cma_s0),
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
    i_mul20_stencil_2d2_ma3_cma_delay ( .xin(i_mul20_stencil_2d2_ma3_cma_s0), .xout(i_mul20_stencil_2d2_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_stencil_2d2_ma3_cma_q = $unsigned(i_mul20_stencil_2d2_ma3_cma_qq[32:0]);

    // i_mul20_stencil_2d2_sums_align_1(BITSHIFT,39)@41
    assign i_mul20_stencil_2d2_sums_align_1_qint = { i_mul20_stencil_2d2_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul20_stencil_2d2_sums_align_1_q = i_mul20_stencil_2d2_sums_align_1_qint[50:0];

    // i_mul20_stencil_2d2_im0_cma(CHAINMULTADD,42)@38 + 3
    assign i_mul20_stencil_2d2_im0_cma_reset = ~ (resetn);
    assign i_mul20_stencil_2d2_im0_cma_ena0 = in_enable[0];
    assign i_mul20_stencil_2d2_im0_cma_ena1 = i_mul20_stencil_2d2_im0_cma_ena0;
    assign i_mul20_stencil_2d2_im0_cma_ena2 = i_mul20_stencil_2d2_im0_cma_ena0;

    assign i_mul20_stencil_2d2_im0_cma_a0 = i_mul20_stencil_2d2_bs1_merged_bit_select_b;
    assign i_mul20_stencil_2d2_im0_cma_c0 = i_mul20_stencil_2d2_bs2_merged_bit_select_b;
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
    ) i_mul20_stencil_2d2_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_stencil_2d2_im0_cma_ena2, i_mul20_stencil_2d2_im0_cma_ena1, i_mul20_stencil_2d2_im0_cma_ena0 }),
        .aclr({ i_mul20_stencil_2d2_im0_cma_reset, i_mul20_stencil_2d2_im0_cma_reset }),
        .ay(i_mul20_stencil_2d2_im0_cma_a0),
        .ax(i_mul20_stencil_2d2_im0_cma_c0),
        .resulta(i_mul20_stencil_2d2_im0_cma_s0),
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
    i_mul20_stencil_2d2_im0_cma_delay ( .xin(i_mul20_stencil_2d2_im0_cma_s0), .xout(i_mul20_stencil_2d2_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_stencil_2d2_im0_cma_q = $unsigned(i_mul20_stencil_2d2_im0_cma_qq[27:0]);

    // i_mul20_stencil_2d2_im8_cma(CHAINMULTADD,43)@38 + 3
    assign i_mul20_stencil_2d2_im8_cma_reset = ~ (resetn);
    assign i_mul20_stencil_2d2_im8_cma_ena0 = in_enable[0];
    assign i_mul20_stencil_2d2_im8_cma_ena1 = i_mul20_stencil_2d2_im8_cma_ena0;
    assign i_mul20_stencil_2d2_im8_cma_ena2 = i_mul20_stencil_2d2_im8_cma_ena0;

    assign i_mul20_stencil_2d2_im8_cma_a0 = i_mul20_stencil_2d2_bs1_merged_bit_select_c;
    assign i_mul20_stencil_2d2_im8_cma_c0 = i_mul20_stencil_2d2_bs2_merged_bit_select_c;
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
    ) i_mul20_stencil_2d2_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_stencil_2d2_im8_cma_ena2, i_mul20_stencil_2d2_im8_cma_ena1, i_mul20_stencil_2d2_im8_cma_ena0 }),
        .aclr({ i_mul20_stencil_2d2_im8_cma_reset, i_mul20_stencil_2d2_im8_cma_reset }),
        .ay(i_mul20_stencil_2d2_im8_cma_a0),
        .ax(i_mul20_stencil_2d2_im8_cma_c0),
        .resulta(i_mul20_stencil_2d2_im8_cma_s0),
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
    i_mul20_stencil_2d2_im8_cma_delay ( .xin(i_mul20_stencil_2d2_im8_cma_s0), .xout(i_mul20_stencil_2d2_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_stencil_2d2_im8_cma_q = $unsigned(i_mul20_stencil_2d2_im8_cma_qq[35:0]);

    // i_mul20_stencil_2d2_sums_join_0(BITJOIN,38)@41
    assign i_mul20_stencil_2d2_sums_join_0_q = {i_mul20_stencil_2d2_im0_cma_q, i_mul20_stencil_2d2_im8_cma_q};

    // i_mul20_stencil_2d2_sums_result_add_0_0(ADD,41)@41
    assign i_mul20_stencil_2d2_sums_result_add_0_0_a = {1'b0, i_mul20_stencil_2d2_sums_join_0_q};
    assign i_mul20_stencil_2d2_sums_result_add_0_0_b = {14'b00000000000000, i_mul20_stencil_2d2_sums_align_1_q};
    assign i_mul20_stencil_2d2_sums_result_add_0_0_o = $unsigned(i_mul20_stencil_2d2_sums_result_add_0_0_a) + $unsigned(i_mul20_stencil_2d2_sums_result_add_0_0_b);
    assign i_mul20_stencil_2d2_sums_result_add_0_0_q = i_mul20_stencil_2d2_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul20_stencil_2d2_sel_x(BITSELECT,16)@41
    assign bgTrunc_i_mul20_stencil_2d2_sel_x_in = i_mul20_stencil_2d2_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul20_stencil_2d2_sel_x_b = bgTrunc_i_mul20_stencil_2d2_sel_x_in[31:0];

    // redist4_bgTrunc_i_mul20_stencil_2d2_sel_x_b_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul20_stencil_2d2_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_bgTrunc_i_mul20_stencil_2d2_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul20_stencil_2d2_sel_x_b);
        end
    end

    // i_add21_stencil_2d4(ADD,8)@42
    assign i_add21_stencil_2d4_a = {1'b0, redist4_bgTrunc_i_mul20_stencil_2d2_sel_x_b_1_q};
    assign i_add21_stencil_2d4_b = {1'b0, i_llvm_fpga_pop_coalesce_i32_temp_321_pop36_stencil_2d3_out_data_out};
    assign i_add21_stencil_2d4_o = $unsigned(i_add21_stencil_2d4_a) + $unsigned(i_add21_stencil_2d4_b);
    assign i_add21_stencil_2d4_q = i_add21_stencil_2d4_o[32:0];

    // bgTrunc_i_add21_stencil_2d4_sel_x(BITSELECT,15)@42
    assign bgTrunc_i_add21_stencil_2d4_sel_x_b = i_add21_stencil_2d4_q[31:0];

    // redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_0 <= '0;
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_1 <= '0;
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_2 <= '0;
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_0 <= $unsigned(in_c1_eni5_4_tpl);
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_1 <= redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_0;
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_2 <= redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_1;
            redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q <= redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d6(BLACKBOX,9)@42
    // out out_intel_reserved_ffwd_3_0@20000000
    stencil_2d_i_llvm_fpga_ffwd_source_i32_unnamed_9_stencil_2d0 thei_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d6 (
        .in_predicate_in(redist1_sync_together14_aunroll_x_in_c1_eni5_4_tpl_4_q),
        .in_src_data_in_3_0(bgTrunc_i_add21_stencil_2d4_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d6_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,13)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d6_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,21)@41 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together14_aunroll_x_in_i_valid_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,19)@42
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = bgTrunc_i_add21_stencil_2d4_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
