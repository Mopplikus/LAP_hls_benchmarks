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
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c1_in_for_body12_s_c1_enter_stencil_2d0 (
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
    wire [31:0] bgTrunc_i_add20_stencil_2d4_sel_x_b;
    wire [63:0] bgTrunc_i_mul19_stencil_2d2_sel_x_in;
    wire [31:0] bgTrunc_i_mul19_stencil_2d2_sel_x_b;
    wire [31:0] c_i32_09_q;
    wire [32:0] i_add20_stencil_2d4_a;
    wire [32:0] i_add20_stencil_2d4_b;
    logic [32:0] i_add20_stencil_2d4_o;
    wire [32:0] i_add20_stencil_2d4_q;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_valid_out_36;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [50:0] i_mul19_stencil_2d2_sums_align_1_q;
    wire [50:0] i_mul19_stencil_2d2_sums_align_1_qint;
    wire i_mul19_stencil_2d2_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul19_stencil_2d2_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul19_stencil_2d2_im0_cma_c0 [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_p [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_u [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_w [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_x [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_y [0:0];
    reg [35:0] i_mul19_stencil_2d2_im0_cma_s [0:0];
    wire [35:0] i_mul19_stencil_2d2_im0_cma_qq;
    wire [35:0] i_mul19_stencil_2d2_im0_cma_q;
    wire i_mul19_stencil_2d2_im0_cma_ena0;
    wire i_mul19_stencil_2d2_im0_cma_ena1;
    wire i_mul19_stencil_2d2_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul19_stencil_2d2_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul19_stencil_2d2_im8_cma_c0 [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_p [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_u [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_w [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_x [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_y [0:0];
    reg [27:0] i_mul19_stencil_2d2_im8_cma_s [0:0];
    wire [27:0] i_mul19_stencil_2d2_im8_cma_qq;
    wire [27:0] i_mul19_stencil_2d2_im8_cma_q;
    wire i_mul19_stencil_2d2_im8_cma_ena0;
    wire i_mul19_stencil_2d2_im8_cma_ena1;
    wire i_mul19_stencil_2d2_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul19_stencil_2d2_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul19_stencil_2d2_ma3_cma_c0 [0:1];
    wire [31:0] i_mul19_stencil_2d2_ma3_cma_p [0:1];
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_u [0:1];
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_w [0:0];
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_x [0:0];
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_y [0:0];
    reg [32:0] i_mul19_stencil_2d2_ma3_cma_s [0:0];
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_qq;
    wire [32:0] i_mul19_stencil_2d2_ma3_cma_q;
    wire i_mul19_stencil_2d2_ma3_cma_ena0;
    wire i_mul19_stencil_2d2_ma3_cma_ena1;
    wire [13:0] i_mul19_stencil_2d2_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul19_stencil_2d2_bs1_merged_bit_select_b;
    wire [13:0] i_mul19_stencil_2d2_bs1_merged_bit_select_c;
    wire [17:0] i_mul19_stencil_2d2_bs2_merged_bit_select_b;
    wire [13:0] i_mul19_stencil_2d2_bs2_merged_bit_select_c;
    wire [23:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [3:0] redist0_i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [59:0] redist1_i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [32:0] redist2_i_mul19_stencil_2d2_ma3_cma_q_1_q;
    reg [27:0] redist3_i_mul19_stencil_2d2_im8_cma_q_1_q;
    reg [35:0] redist4_i_mul19_stencil_2d2_im0_cma_q_1_q;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_q;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_0;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_1;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_2;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_3;
    reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_q;
    reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_0;
    reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_1;
    reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_2;
    reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_3;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_q;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_0;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_1;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_2;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_3;
    reg [0:0] redist8_sync_together13_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_together13_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist8_sync_together13_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist8_sync_together13_aunroll_x_in_i_valid_4_delay_2;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // redist8_sync_together13_aunroll_x_in_i_valid_4(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist8_sync_together13_aunroll_x_in_i_valid_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_1 <= redist8_sync_together13_aunroll_x_in_i_valid_4_delay_0;
            redist8_sync_together13_aunroll_x_in_i_valid_4_delay_2 <= redist8_sync_together13_aunroll_x_in_i_valid_4_delay_1;
            redist8_sync_together13_aunroll_x_in_i_valid_4_q <= redist8_sync_together13_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,18)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg1(REG,19)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist8_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,74)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5(DELAY,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_0 <= '0;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_1 <= '0;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_2 <= '0;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_3 <= '0;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_0 <= $unsigned(in_c1_eni5_4_tpl);
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_1 <= redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_0;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_2 <= redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_1;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_3 <= redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_2;
            redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_q <= redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_delay_3;
        end
    end

    // valid_fanout_reg2(REG,20)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist8_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5(DELAY,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_0 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_1 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_2 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_3 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_0 <= $unsigned(in_c1_eni5_5_tpl);
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_1 <= redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_0;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_2 <= redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_1;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_3 <= redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_2;
            redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_q <= redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5(BLACKBOX,15)@46
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    stencil_2d_i_llvm_fpga_push_i32_temp_139_push36_0 thei_llvm_fpga_push_i32_temp_139_push36_stencil_2d5 (
        .in_c1_ene4(redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_q),
        .in_c1_ene5(redist7_sync_together13_aunroll_x_in_c1_eni5_5_tpl_5_q),
        .in_data_in(bgTrunc_i_add20_stencil_2d4_sel_x_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_feedback_stall_out_36),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5(DELAY,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_0 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_1 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_2 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_3 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_0 <= $unsigned(in_c1_eni5_3_tpl);
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_1 <= redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_0;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_2 <= redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_1;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_3 <= redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_2;
            redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_q <= redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_delay_3;
        end
    end

    // c_i32_09(CONSTANT,10)
    assign c_i32_09_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3(BLACKBOX,14)@46
    // out out_feedback_stall_out_36@20000000
    stencil_2d_i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_0 thei_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3 (
        .in_data_in(c_i32_09_q),
        .in_dir(redist5_sync_together13_aunroll_x_in_c1_eni5_3_tpl_5_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_temp_139_push36_stencil_2d5_out_feedback_valid_out_36),
        .in_predicate(redist6_sync_together13_aunroll_x_in_c1_eni5_4_tpl_5_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul19_stencil_2d2_bs2_merged_bit_select(BITSELECT,62)@41
    assign i_mul19_stencil_2d2_bs2_merged_bit_select_b = in_c1_eni5_2_tpl[17:0];
    assign i_mul19_stencil_2d2_bs2_merged_bit_select_c = in_c1_eni5_2_tpl[31:18];

    // i_mul19_stencil_2d2_bs1_merged_bit_select(BITSELECT,61)@41
    assign i_mul19_stencil_2d2_bs1_merged_bit_select_b = in_c1_eni5_1_tpl[17:0];
    assign i_mul19_stencil_2d2_bs1_merged_bit_select_c = in_c1_eni5_1_tpl[31:18];

    // i_mul19_stencil_2d2_ma3_cma(CHAINMULTADD,40)@41 + 2
    assign i_mul19_stencil_2d2_ma3_cma_reset = ~ (resetn);
    assign i_mul19_stencil_2d2_ma3_cma_ena0 = in_enable[0];
    assign i_mul19_stencil_2d2_ma3_cma_ena1 = i_mul19_stencil_2d2_ma3_cma_ena0;
    assign i_mul19_stencil_2d2_ma3_cma_p[0] = i_mul19_stencil_2d2_ma3_cma_a0[0] * i_mul19_stencil_2d2_ma3_cma_c0[0];
    assign i_mul19_stencil_2d2_ma3_cma_p[1] = i_mul19_stencil_2d2_ma3_cma_a0[1] * i_mul19_stencil_2d2_ma3_cma_c0[1];
    assign i_mul19_stencil_2d2_ma3_cma_u[0] = {1'b0, i_mul19_stencil_2d2_ma3_cma_p[0][31:0]};
    assign i_mul19_stencil_2d2_ma3_cma_u[1] = {1'b0, i_mul19_stencil_2d2_ma3_cma_p[1][31:0]};
    assign i_mul19_stencil_2d2_ma3_cma_w[0] = i_mul19_stencil_2d2_ma3_cma_u[0] + i_mul19_stencil_2d2_ma3_cma_u[1];
    assign i_mul19_stencil_2d2_ma3_cma_x[0] = i_mul19_stencil_2d2_ma3_cma_w[0];
    assign i_mul19_stencil_2d2_ma3_cma_y[0] = i_mul19_stencil_2d2_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_ma3_cma_a0 <= '{default: '0};
            i_mul19_stencil_2d2_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_ma3_cma_ena0 == 1'b1)
            begin
                i_mul19_stencil_2d2_ma3_cma_a0[0] <= i_mul19_stencil_2d2_bs1_merged_bit_select_c;
                i_mul19_stencil_2d2_ma3_cma_a0[1] <= i_mul19_stencil_2d2_bs2_merged_bit_select_c;
                i_mul19_stencil_2d2_ma3_cma_c0[0] <= i_mul19_stencil_2d2_bs2_merged_bit_select_b;
                i_mul19_stencil_2d2_ma3_cma_c0[1] <= i_mul19_stencil_2d2_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_ma3_cma_ena1 == 1'b1)
            begin
                i_mul19_stencil_2d2_ma3_cma_s[0] <= i_mul19_stencil_2d2_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul19_stencil_2d2_ma3_cma_delay ( .xin(i_mul19_stencil_2d2_ma3_cma_s[0]), .xout(i_mul19_stencil_2d2_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul19_stencil_2d2_ma3_cma_q = $unsigned(i_mul19_stencil_2d2_ma3_cma_qq[32:0]);

    // redist2_i_mul19_stencil_2d2_ma3_cma_q_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mul19_stencil_2d2_ma3_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mul19_stencil_2d2_ma3_cma_q_1_q <= $unsigned(i_mul19_stencil_2d2_ma3_cma_q);
        end
    end

    // i_mul19_stencil_2d2_sums_align_1(BITSHIFT,35)@44
    assign i_mul19_stencil_2d2_sums_align_1_qint = { redist2_i_mul19_stencil_2d2_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul19_stencil_2d2_sums_align_1_q = i_mul19_stencil_2d2_sums_align_1_qint[50:0];

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,58)@44
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul19_stencil_2d2_sums_align_1_q};

    // i_mul19_stencil_2d2_im8_cma(CHAINMULTADD,39)@41 + 2
    assign i_mul19_stencil_2d2_im8_cma_reset = ~ (resetn);
    assign i_mul19_stencil_2d2_im8_cma_ena0 = in_enable[0];
    assign i_mul19_stencil_2d2_im8_cma_ena1 = i_mul19_stencil_2d2_im8_cma_ena0;
    assign i_mul19_stencil_2d2_im8_cma_p[0] = i_mul19_stencil_2d2_im8_cma_a0[0] * i_mul19_stencil_2d2_im8_cma_c0[0];
    assign i_mul19_stencil_2d2_im8_cma_u[0] = i_mul19_stencil_2d2_im8_cma_p[0][27:0];
    assign i_mul19_stencil_2d2_im8_cma_w[0] = i_mul19_stencil_2d2_im8_cma_u[0];
    assign i_mul19_stencil_2d2_im8_cma_x[0] = i_mul19_stencil_2d2_im8_cma_w[0];
    assign i_mul19_stencil_2d2_im8_cma_y[0] = i_mul19_stencil_2d2_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_im8_cma_a0 <= '{default: '0};
            i_mul19_stencil_2d2_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_im8_cma_ena0 == 1'b1)
            begin
                i_mul19_stencil_2d2_im8_cma_a0[0] <= i_mul19_stencil_2d2_bs1_merged_bit_select_c;
                i_mul19_stencil_2d2_im8_cma_c0[0] <= i_mul19_stencil_2d2_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_im8_cma_ena1 == 1'b1)
            begin
                i_mul19_stencil_2d2_im8_cma_s[0] <= i_mul19_stencil_2d2_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul19_stencil_2d2_im8_cma_delay ( .xin(i_mul19_stencil_2d2_im8_cma_s[0]), .xout(i_mul19_stencil_2d2_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul19_stencil_2d2_im8_cma_q = $unsigned(i_mul19_stencil_2d2_im8_cma_qq[27:0]);

    // redist3_i_mul19_stencil_2d2_im8_cma_q_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul19_stencil_2d2_im8_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mul19_stencil_2d2_im8_cma_q_1_q <= $unsigned(i_mul19_stencil_2d2_im8_cma_q);
        end
    end

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,63)@44
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist3_i_mul19_stencil_2d2_im8_cma_q_1_q[23:0]);
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist3_i_mul19_stencil_2d2_im8_cma_q_1_q[27:24]);

    // i_mul19_stencil_2d2_im0_cma(CHAINMULTADD,38)@41 + 2
    assign i_mul19_stencil_2d2_im0_cma_reset = ~ (resetn);
    assign i_mul19_stencil_2d2_im0_cma_ena0 = in_enable[0];
    assign i_mul19_stencil_2d2_im0_cma_ena1 = i_mul19_stencil_2d2_im0_cma_ena0;
    assign i_mul19_stencil_2d2_im0_cma_p[0] = i_mul19_stencil_2d2_im0_cma_a0[0] * i_mul19_stencil_2d2_im0_cma_c0[0];
    assign i_mul19_stencil_2d2_im0_cma_u[0] = i_mul19_stencil_2d2_im0_cma_p[0][35:0];
    assign i_mul19_stencil_2d2_im0_cma_w[0] = i_mul19_stencil_2d2_im0_cma_u[0];
    assign i_mul19_stencil_2d2_im0_cma_x[0] = i_mul19_stencil_2d2_im0_cma_w[0];
    assign i_mul19_stencil_2d2_im0_cma_y[0] = i_mul19_stencil_2d2_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_im0_cma_a0 <= '{default: '0};
            i_mul19_stencil_2d2_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_im0_cma_ena0 == 1'b1)
            begin
                i_mul19_stencil_2d2_im0_cma_a0[0] <= i_mul19_stencil_2d2_bs1_merged_bit_select_b;
                i_mul19_stencil_2d2_im0_cma_c0[0] <= i_mul19_stencil_2d2_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul19_stencil_2d2_im0_cma_ena1 == 1'b1)
            begin
                i_mul19_stencil_2d2_im0_cma_s[0] <= i_mul19_stencil_2d2_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul19_stencil_2d2_im0_cma_delay ( .xin(i_mul19_stencil_2d2_im0_cma_s[0]), .xout(i_mul19_stencil_2d2_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul19_stencil_2d2_im0_cma_q = $unsigned(i_mul19_stencil_2d2_im0_cma_qq[35:0]);

    // redist4_i_mul19_stencil_2d2_im0_cma_q_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul19_stencil_2d2_im0_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mul19_stencil_2d2_im0_cma_q_1_q <= $unsigned(i_mul19_stencil_2d2_im0_cma_q);
        end
    end

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,52)@44
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist4_i_mul19_stencil_2d2_im0_cma_q_1_q};

    // i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2(ADD,47)@44 + 1
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_c[0] = i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q = i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul19_stencil_2d2_sums_result_add_0_0_UpperBits_for_b(CONSTANT,44)
    assign i_mul19_stencil_2d2_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,64)
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,55)@45
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2(ADD,48)@45 + 1
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_cin = i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_c;
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul19_stencil_2d2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_q = i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist1_i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul19_stencil_2d2_sums_result_add_0_0_BitJoin_for_q(BITJOIN,49)@46
    assign i_mul19_stencil_2d2_sums_result_add_0_0_BitJoin_for_q_q = {i_mul19_stencil_2d2_sums_result_add_0_0_p2_of_2_q, redist1_i_mul19_stencil_2d2_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul19_stencil_2d2_sel_x(BITSELECT,3)@46
    assign bgTrunc_i_mul19_stencil_2d2_sel_x_in = i_mul19_stencil_2d2_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul19_stencil_2d2_sel_x_b = bgTrunc_i_mul19_stencil_2d2_sel_x_in[31:0];

    // i_add20_stencil_2d4(ADD,13)@46
    assign i_add20_stencil_2d4_a = {1'b0, bgTrunc_i_mul19_stencil_2d2_sel_x_b};
    assign i_add20_stencil_2d4_b = {1'b0, i_llvm_fpga_pop_coalesce_i32_temp_139_pop36_stencil_2d3_out_data_out};
    assign i_add20_stencil_2d4_o = $unsigned(i_add20_stencil_2d4_a) + $unsigned(i_add20_stencil_2d4_b);
    assign i_add20_stencil_2d4_q = i_add20_stencil_2d4_o[32:0];

    // bgTrunc_i_add20_stencil_2d4_sel_x(BITSELECT,2)@46
    assign bgTrunc_i_add20_stencil_2d4_sel_x_b = i_add20_stencil_2d4_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@46
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = bgTrunc_i_add20_stencil_2d4_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
