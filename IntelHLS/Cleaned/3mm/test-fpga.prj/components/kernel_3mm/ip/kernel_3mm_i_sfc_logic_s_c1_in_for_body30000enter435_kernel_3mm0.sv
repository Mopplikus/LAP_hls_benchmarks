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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body36_kernel_3mms_c1_enter435_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c1_in_for_body30000enter435_kernel_3mm0 (
    output wire [0:0] out_c1_exi1441_0_tpl,
    output wire [31:0] out_c1_exi1441_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c1_eni5434_0_tpl,
    input wire [31:0] in_c1_eni5434_1_tpl,
    input wire [31:0] in_c1_eni5434_2_tpl,
    input wire [31:0] in_c1_eni5434_3_tpl,
    input wire [0:0] in_c1_eni5434_4_tpl,
    input wire [0:0] in_c1_eni5434_5_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add44_kernel_3mm4_sel_x_b;
    wire [63:0] bgTrunc_i_mul43_kernel_3mm2_sel_x_in;
    wire [31:0] bgTrunc_i_mul43_kernel_3mm2_sel_x_b;
    wire [32:0] i_add44_kernel_3mm4_a;
    wire [32:0] i_add44_kernel_3mm4_b;
    logic [32:0] i_add44_kernel_3mm4_o;
    wire [32:0] i_add44_kernel_3mm4_q;
    wire [31:0] i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_valid_out_67;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [50:0] i_mul43_kernel_3mm2_sums_align_1_q;
    wire [50:0] i_mul43_kernel_3mm2_sums_align_1_qint;
    wire i_mul43_kernel_3mm2_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul43_kernel_3mm2_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul43_kernel_3mm2_im0_cma_c0 [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_p [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_u [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_w [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_x [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_y [0:0];
    reg [35:0] i_mul43_kernel_3mm2_im0_cma_s [0:0];
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_qq;
    wire [35:0] i_mul43_kernel_3mm2_im0_cma_q;
    wire i_mul43_kernel_3mm2_im0_cma_ena0;
    wire i_mul43_kernel_3mm2_im0_cma_ena1;
    wire i_mul43_kernel_3mm2_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul43_kernel_3mm2_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul43_kernel_3mm2_im8_cma_c0 [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_p [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_u [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_w [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_x [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_y [0:0];
    reg [27:0] i_mul43_kernel_3mm2_im8_cma_s [0:0];
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_qq;
    wire [27:0] i_mul43_kernel_3mm2_im8_cma_q;
    wire i_mul43_kernel_3mm2_im8_cma_ena0;
    wire i_mul43_kernel_3mm2_im8_cma_ena1;
    wire i_mul43_kernel_3mm2_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul43_kernel_3mm2_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul43_kernel_3mm2_ma3_cma_c0 [0:1];
    wire [31:0] i_mul43_kernel_3mm2_ma3_cma_p [0:1];
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_u [0:1];
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_w [0:0];
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_x [0:0];
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_y [0:0];
    reg [32:0] i_mul43_kernel_3mm2_ma3_cma_s [0:0];
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_qq;
    wire [32:0] i_mul43_kernel_3mm2_ma3_cma_q;
    wire i_mul43_kernel_3mm2_ma3_cma_ena0;
    wire i_mul43_kernel_3mm2_ma3_cma_ena1;
    wire [13:0] i_mul43_kernel_3mm2_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul43_kernel_3mm2_bs1_merged_bit_select_b;
    wire [13:0] i_mul43_kernel_3mm2_bs1_merged_bit_select_c;
    wire [17:0] i_mul43_kernel_3mm2_bs2_merged_bit_select_b;
    wire [13:0] i_mul43_kernel_3mm2_bs2_merged_bit_select_c;
    wire [23:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [3:0] redist0_i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [59:0] redist1_i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [32:0] redist2_i_mul43_kernel_3mm2_ma3_cma_q_1_q;
    reg [27:0] redist3_i_mul43_kernel_3mm2_im8_cma_q_1_q;
    reg [35:0] redist4_i_mul43_kernel_3mm2_im0_cma_q_1_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out_1_q;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_q;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_0;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_1;
    reg [0:0] redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_2;
    reg [0:0] redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_q;
    reg [0:0] redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_0;
    reg [0:0] redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_1;
    reg [0:0] redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_2;
    reg [0:0] redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_3;
    reg [0:0] redist9_sync_together13_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together13_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist9_sync_together13_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist10_sync_together13_aunroll_x_in_i_valid_4_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;
    wire redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_reset0;
    wire [31:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ia;
    wire [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_aa;
    wire [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ab;
    wire [31:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_iq;
    wire [31:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_q;
    wire [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i;
    (* preserve *) reg redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_eq;
    wire [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_s;
    reg [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q;
    reg [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q;
    wire [1:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_last_q;
    wire [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmpReg_q;
    wire [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_notEnable_q;
    wire [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena_q;
    wire [0:0] redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_enaAnd_q;


    // redist9_sync_together13_aunroll_x_in_i_valid_3(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together13_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist9_sync_together13_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist9_sync_together13_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together13_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist9_sync_together13_aunroll_x_in_i_valid_3_delay_1 <= redist9_sync_together13_aunroll_x_in_i_valid_3_delay_0;
            redist9_sync_together13_aunroll_x_in_i_valid_3_q <= redist9_sync_together13_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist10_sync_together13_aunroll_x_in_i_valid_4(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together13_aunroll_x_in_i_valid_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together13_aunroll_x_in_i_valid_4_q <= $unsigned(redist9_sync_together13_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,17)@46 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg1(REG,18)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist9_sync_together13_aunroll_x_in_i_valid_3_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,75)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,19)@46 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist10_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5(DELAY,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_0 <= '0;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_1 <= '0;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_2 <= '0;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_3 <= '0;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_0 <= $unsigned(in_c1_eni5434_5_tpl);
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_1 <= redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_0;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_2 <= redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_1;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_3 <= redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_2;
            redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_q <= redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5(BLACKBOX,14)@47
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    kernel_3mm_i_llvm_fpga_push_i32_tmp30_0150_push67_0 thei_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5 (
        .in_c1_ene5440(redist8_sync_together13_aunroll_x_in_c1_eni5434_5_tpl_5_q),
        .in_data_in(bgTrunc_i_add44_kernel_3mm4_sel_x_b),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_feedback_stall_out_67),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4(DELAY,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_0 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_1 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_2 <= '0;
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_0 <= $unsigned(in_c1_eni5434_4_tpl);
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_1 <= redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_0;
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_2 <= redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_1;
            redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_q <= redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_delay_2;
        end
    end

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_notEnable(LOGICAL,84)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_notEnable_q = $unsigned(~ (in_enable));

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_nor(LOGICAL,85)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_nor_q = ~ (redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_notEnable_q | redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena_q);

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_last(CONSTANT,81)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmp(LOGICAL,82)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmp_q = $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_last_q == redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q ? 1'b1 : 1'b0);

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmpReg(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmpReg_q <= $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmp_q);
        end
    end

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_nor_q == 1'b1)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena_q <= $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_cmpReg_q);
        end
    end

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_enaAnd(LOGICAL,87)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_enaAnd_q = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_sticky_ena_q & in_enable;

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt(COUNTER,78)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i <= 2'd0;
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i == 2'd1)
            begin
                redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_q = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_i[1:0];

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux(MUX,79)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_s = in_enable;
    always @(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_s or redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q or redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_q)
    begin
        unique case (redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_s)
            1'b0 : redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q;
            1'b1 : redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdcnt_q;
            default : redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q = 2'b0;
        endcase
    end

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q <= $unsigned(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q);
        end
    end

    // redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem(DUALMEM,77)
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ia = $unsigned(in_c1_eni5434_3_tpl);
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_aa = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_wraddr_q;
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ab = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_rdmux_q;
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_dmem (
        .clocken1(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_aa),
        .data_a(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_ab),
        .q_b(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_q = redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3(BLACKBOX,13)@46
    // out out_feedback_stall_out_67@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_tmp30_0150_pop67_0 thei_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3 (
        .in_data_in(redist6_sync_together13_aunroll_x_in_c1_eni5434_3_tpl_4_mem_q),
        .in_dir(redist7_sync_together13_aunroll_x_in_c1_eni5434_4_tpl_4_q),
        .in_feedback_in_67(i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i32_tmp30_0150_push67_kernel_3mm5_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out);
        end
    end

    // i_mul43_kernel_3mm2_bs2_merged_bit_select(BITSELECT,61)@42
    assign i_mul43_kernel_3mm2_bs2_merged_bit_select_b = in_c1_eni5434_2_tpl[17:0];
    assign i_mul43_kernel_3mm2_bs2_merged_bit_select_c = in_c1_eni5434_2_tpl[31:18];

    // i_mul43_kernel_3mm2_bs1_merged_bit_select(BITSELECT,60)@42
    assign i_mul43_kernel_3mm2_bs1_merged_bit_select_b = in_c1_eni5434_1_tpl[17:0];
    assign i_mul43_kernel_3mm2_bs1_merged_bit_select_c = in_c1_eni5434_1_tpl[31:18];

    // i_mul43_kernel_3mm2_ma3_cma(CHAINMULTADD,39)@42 + 2
    assign i_mul43_kernel_3mm2_ma3_cma_reset = ~ (resetn);
    assign i_mul43_kernel_3mm2_ma3_cma_ena0 = in_enable[0];
    assign i_mul43_kernel_3mm2_ma3_cma_ena1 = i_mul43_kernel_3mm2_ma3_cma_ena0;
    assign i_mul43_kernel_3mm2_ma3_cma_p[0] = i_mul43_kernel_3mm2_ma3_cma_a0[0] * i_mul43_kernel_3mm2_ma3_cma_c0[0];
    assign i_mul43_kernel_3mm2_ma3_cma_p[1] = i_mul43_kernel_3mm2_ma3_cma_a0[1] * i_mul43_kernel_3mm2_ma3_cma_c0[1];
    assign i_mul43_kernel_3mm2_ma3_cma_u[0] = {1'b0, i_mul43_kernel_3mm2_ma3_cma_p[0][31:0]};
    assign i_mul43_kernel_3mm2_ma3_cma_u[1] = {1'b0, i_mul43_kernel_3mm2_ma3_cma_p[1][31:0]};
    assign i_mul43_kernel_3mm2_ma3_cma_w[0] = i_mul43_kernel_3mm2_ma3_cma_u[0] + i_mul43_kernel_3mm2_ma3_cma_u[1];
    assign i_mul43_kernel_3mm2_ma3_cma_x[0] = i_mul43_kernel_3mm2_ma3_cma_w[0];
    assign i_mul43_kernel_3mm2_ma3_cma_y[0] = i_mul43_kernel_3mm2_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_ma3_cma_a0 <= '{default: '0};
            i_mul43_kernel_3mm2_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_ma3_cma_ena0 == 1'b1)
            begin
                i_mul43_kernel_3mm2_ma3_cma_a0[0] <= i_mul43_kernel_3mm2_bs1_merged_bit_select_c;
                i_mul43_kernel_3mm2_ma3_cma_a0[1] <= i_mul43_kernel_3mm2_bs2_merged_bit_select_c;
                i_mul43_kernel_3mm2_ma3_cma_c0[0] <= i_mul43_kernel_3mm2_bs2_merged_bit_select_b;
                i_mul43_kernel_3mm2_ma3_cma_c0[1] <= i_mul43_kernel_3mm2_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_ma3_cma_ena1 == 1'b1)
            begin
                i_mul43_kernel_3mm2_ma3_cma_s[0] <= i_mul43_kernel_3mm2_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul43_kernel_3mm2_ma3_cma_delay ( .xin(i_mul43_kernel_3mm2_ma3_cma_s[0]), .xout(i_mul43_kernel_3mm2_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul43_kernel_3mm2_ma3_cma_q = $unsigned(i_mul43_kernel_3mm2_ma3_cma_qq[32:0]);

    // redist2_i_mul43_kernel_3mm2_ma3_cma_q_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mul43_kernel_3mm2_ma3_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mul43_kernel_3mm2_ma3_cma_q_1_q <= $unsigned(i_mul43_kernel_3mm2_ma3_cma_q);
        end
    end

    // i_mul43_kernel_3mm2_sums_align_1(BITSHIFT,34)@45
    assign i_mul43_kernel_3mm2_sums_align_1_qint = { redist2_i_mul43_kernel_3mm2_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul43_kernel_3mm2_sums_align_1_q = i_mul43_kernel_3mm2_sums_align_1_qint[50:0];

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,57)@45
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul43_kernel_3mm2_sums_align_1_q};

    // i_mul43_kernel_3mm2_im8_cma(CHAINMULTADD,38)@42 + 2
    assign i_mul43_kernel_3mm2_im8_cma_reset = ~ (resetn);
    assign i_mul43_kernel_3mm2_im8_cma_ena0 = in_enable[0];
    assign i_mul43_kernel_3mm2_im8_cma_ena1 = i_mul43_kernel_3mm2_im8_cma_ena0;
    assign i_mul43_kernel_3mm2_im8_cma_p[0] = i_mul43_kernel_3mm2_im8_cma_a0[0] * i_mul43_kernel_3mm2_im8_cma_c0[0];
    assign i_mul43_kernel_3mm2_im8_cma_u[0] = i_mul43_kernel_3mm2_im8_cma_p[0][27:0];
    assign i_mul43_kernel_3mm2_im8_cma_w[0] = i_mul43_kernel_3mm2_im8_cma_u[0];
    assign i_mul43_kernel_3mm2_im8_cma_x[0] = i_mul43_kernel_3mm2_im8_cma_w[0];
    assign i_mul43_kernel_3mm2_im8_cma_y[0] = i_mul43_kernel_3mm2_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_im8_cma_a0 <= '{default: '0};
            i_mul43_kernel_3mm2_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_im8_cma_ena0 == 1'b1)
            begin
                i_mul43_kernel_3mm2_im8_cma_a0[0] <= i_mul43_kernel_3mm2_bs1_merged_bit_select_c;
                i_mul43_kernel_3mm2_im8_cma_c0[0] <= i_mul43_kernel_3mm2_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_im8_cma_ena1 == 1'b1)
            begin
                i_mul43_kernel_3mm2_im8_cma_s[0] <= i_mul43_kernel_3mm2_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul43_kernel_3mm2_im8_cma_delay ( .xin(i_mul43_kernel_3mm2_im8_cma_s[0]), .xout(i_mul43_kernel_3mm2_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul43_kernel_3mm2_im8_cma_q = $unsigned(i_mul43_kernel_3mm2_im8_cma_qq[27:0]);

    // redist3_i_mul43_kernel_3mm2_im8_cma_q_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul43_kernel_3mm2_im8_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mul43_kernel_3mm2_im8_cma_q_1_q <= $unsigned(i_mul43_kernel_3mm2_im8_cma_q);
        end
    end

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,62)@45
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist3_i_mul43_kernel_3mm2_im8_cma_q_1_q[23:0]);
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist3_i_mul43_kernel_3mm2_im8_cma_q_1_q[27:24]);

    // i_mul43_kernel_3mm2_im0_cma(CHAINMULTADD,37)@42 + 2
    assign i_mul43_kernel_3mm2_im0_cma_reset = ~ (resetn);
    assign i_mul43_kernel_3mm2_im0_cma_ena0 = in_enable[0];
    assign i_mul43_kernel_3mm2_im0_cma_ena1 = i_mul43_kernel_3mm2_im0_cma_ena0;
    assign i_mul43_kernel_3mm2_im0_cma_p[0] = i_mul43_kernel_3mm2_im0_cma_a0[0] * i_mul43_kernel_3mm2_im0_cma_c0[0];
    assign i_mul43_kernel_3mm2_im0_cma_u[0] = i_mul43_kernel_3mm2_im0_cma_p[0][35:0];
    assign i_mul43_kernel_3mm2_im0_cma_w[0] = i_mul43_kernel_3mm2_im0_cma_u[0];
    assign i_mul43_kernel_3mm2_im0_cma_x[0] = i_mul43_kernel_3mm2_im0_cma_w[0];
    assign i_mul43_kernel_3mm2_im0_cma_y[0] = i_mul43_kernel_3mm2_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_im0_cma_a0 <= '{default: '0};
            i_mul43_kernel_3mm2_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_im0_cma_ena0 == 1'b1)
            begin
                i_mul43_kernel_3mm2_im0_cma_a0[0] <= i_mul43_kernel_3mm2_bs1_merged_bit_select_b;
                i_mul43_kernel_3mm2_im0_cma_c0[0] <= i_mul43_kernel_3mm2_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul43_kernel_3mm2_im0_cma_ena1 == 1'b1)
            begin
                i_mul43_kernel_3mm2_im0_cma_s[0] <= i_mul43_kernel_3mm2_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul43_kernel_3mm2_im0_cma_delay ( .xin(i_mul43_kernel_3mm2_im0_cma_s[0]), .xout(i_mul43_kernel_3mm2_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul43_kernel_3mm2_im0_cma_q = $unsigned(i_mul43_kernel_3mm2_im0_cma_qq[35:0]);

    // redist4_i_mul43_kernel_3mm2_im0_cma_q_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul43_kernel_3mm2_im0_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mul43_kernel_3mm2_im0_cma_q_1_q <= $unsigned(i_mul43_kernel_3mm2_im0_cma_q);
        end
    end

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,51)@45
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist4_i_mul43_kernel_3mm2_im0_cma_q_1_q};

    // i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2(ADD,46)@45 + 1
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_c[0] = i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q = i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul43_kernel_3mm2_sums_result_add_0_0_UpperBits_for_b(CONSTANT,43)
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,63)
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,54)@46
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2(ADD,47)@46 + 1
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_cin = i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_c;
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul43_kernel_3mm2_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_q = i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist1_i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul43_kernel_3mm2_sums_result_add_0_0_BitJoin_for_q(BITJOIN,48)@47
    assign i_mul43_kernel_3mm2_sums_result_add_0_0_BitJoin_for_q_q = {i_mul43_kernel_3mm2_sums_result_add_0_0_p2_of_2_q, redist1_i_mul43_kernel_3mm2_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul43_kernel_3mm2_sel_x(BITSELECT,3)@47
    assign bgTrunc_i_mul43_kernel_3mm2_sel_x_in = i_mul43_kernel_3mm2_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul43_kernel_3mm2_sel_x_b = bgTrunc_i_mul43_kernel_3mm2_sel_x_in[31:0];

    // i_add44_kernel_3mm4(ADD,12)@47
    assign i_add44_kernel_3mm4_a = {1'b0, bgTrunc_i_mul43_kernel_3mm2_sel_x_b};
    assign i_add44_kernel_3mm4_b = {1'b0, redist5_i_llvm_fpga_pop_i32_tmp30_0150_pop67_kernel_3mm3_out_data_out_1_q};
    assign i_add44_kernel_3mm4_o = $unsigned(i_add44_kernel_3mm4_a) + $unsigned(i_add44_kernel_3mm4_b);
    assign i_add44_kernel_3mm4_q = i_add44_kernel_3mm4_o[32:0];

    // bgTrunc_i_add44_kernel_3mm4_sel_x(BITSELECT,2)@47
    assign bgTrunc_i_add44_kernel_3mm4_sel_x_b = i_add44_kernel_3mm4_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@47
    assign out_c1_exi1441_0_tpl = GND_q;
    assign out_c1_exi1441_1_tpl = bgTrunc_i_add44_kernel_3mm4_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

endmodule
