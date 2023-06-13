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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c1_in_for_body28_s_c1_enter_kernel_2mm0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [31:0] in_c1_eni5_2_tpl,
    input wire [31:0] in_c1_eni5_3_tpl,
    input wire [0:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add34_kernel_2mm6_sel_x_b;
    wire [63:0] bgTrunc_i_mul29_kernel_2mm3_sel_x_in;
    wire [31:0] bgTrunc_i_mul29_kernel_2mm3_sel_x_b;
    wire [63:0] bgTrunc_i_mul33_kernel_2mm4_sel_x_in;
    wire [31:0] bgTrunc_i_mul33_kernel_2mm4_sel_x_b;
    wire [32:0] i_add34_kernel_2mm6_a;
    wire [32:0] i_add34_kernel_2mm6_b;
    logic [32:0] i_add34_kernel_2mm6_o;
    wire [32:0] i_add34_kernel_2mm6_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_valid_out_48;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [50:0] i_mul29_kernel_2mm3_sums_align_1_q;
    wire [50:0] i_mul29_kernel_2mm3_sums_align_1_qint;
    wire [50:0] i_mul33_kernel_2mm4_sums_align_1_q;
    wire [50:0] i_mul33_kernel_2mm4_sums_align_1_qint;
    wire i_mul29_kernel_2mm3_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul29_kernel_2mm3_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul29_kernel_2mm3_im0_cma_c0 [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_p [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_u [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_w [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_x [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_y [0:0];
    reg [35:0] i_mul29_kernel_2mm3_im0_cma_s [0:0];
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_qq;
    wire [35:0] i_mul29_kernel_2mm3_im0_cma_q;
    wire i_mul29_kernel_2mm3_im0_cma_ena0;
    wire i_mul29_kernel_2mm3_im0_cma_ena1;
    wire i_mul29_kernel_2mm3_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul29_kernel_2mm3_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul29_kernel_2mm3_im8_cma_c0 [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_p [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_u [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_w [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_x [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_y [0:0];
    reg [27:0] i_mul29_kernel_2mm3_im8_cma_s [0:0];
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_qq;
    wire [27:0] i_mul29_kernel_2mm3_im8_cma_q;
    wire i_mul29_kernel_2mm3_im8_cma_ena0;
    wire i_mul29_kernel_2mm3_im8_cma_ena1;
    wire i_mul33_kernel_2mm4_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul33_kernel_2mm4_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul33_kernel_2mm4_im0_cma_c0 [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_p [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_u [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_w [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_x [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_y [0:0];
    reg [35:0] i_mul33_kernel_2mm4_im0_cma_s [0:0];
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_qq;
    wire [35:0] i_mul33_kernel_2mm4_im0_cma_q;
    wire i_mul33_kernel_2mm4_im0_cma_ena0;
    wire i_mul33_kernel_2mm4_im0_cma_ena1;
    wire i_mul33_kernel_2mm4_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul33_kernel_2mm4_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul33_kernel_2mm4_im8_cma_c0 [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_p [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_u [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_w [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_x [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_y [0:0];
    reg [27:0] i_mul33_kernel_2mm4_im8_cma_s [0:0];
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_qq;
    wire [27:0] i_mul33_kernel_2mm4_im8_cma_q;
    wire i_mul33_kernel_2mm4_im8_cma_ena0;
    wire i_mul33_kernel_2mm4_im8_cma_ena1;
    wire i_mul29_kernel_2mm3_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul29_kernel_2mm3_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul29_kernel_2mm3_ma3_cma_c0 [0:1];
    wire [31:0] i_mul29_kernel_2mm3_ma3_cma_p [0:1];
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_u [0:1];
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_w [0:0];
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_x [0:0];
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_y [0:0];
    reg [32:0] i_mul29_kernel_2mm3_ma3_cma_s [0:0];
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_qq;
    wire [32:0] i_mul29_kernel_2mm3_ma3_cma_q;
    wire i_mul29_kernel_2mm3_ma3_cma_ena0;
    wire i_mul29_kernel_2mm3_ma3_cma_ena1;
    wire i_mul33_kernel_2mm4_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul33_kernel_2mm4_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul33_kernel_2mm4_ma3_cma_c0 [0:1];
    wire [31:0] i_mul33_kernel_2mm4_ma3_cma_p [0:1];
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_u [0:1];
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_w [0:0];
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_x [0:0];
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_y [0:0];
    reg [32:0] i_mul33_kernel_2mm4_ma3_cma_s [0:0];
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_qq;
    wire [32:0] i_mul33_kernel_2mm4_ma3_cma_q;
    wire i_mul33_kernel_2mm4_ma3_cma_ena0;
    wire i_mul33_kernel_2mm4_ma3_cma_ena1;
    wire [13:0] i_mul29_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q;
    wire [60:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitJoin_for_q_q;
    wire [59:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul33_kernel_2mm4_bs1_merged_bit_select_b;
    wire [13:0] i_mul33_kernel_2mm4_bs1_merged_bit_select_c;
    wire [17:0] i_mul29_kernel_2mm3_bs1_merged_bit_select_b;
    wire [13:0] i_mul29_kernel_2mm3_bs1_merged_bit_select_c;
    wire [17:0] i_mul33_kernel_2mm4_bs2_merged_bit_select_b;
    wire [13:0] i_mul33_kernel_2mm4_bs2_merged_bit_select_c;
    wire [17:0] i_mul29_kernel_2mm3_bs2_merged_bit_select_b;
    wire [13:0] i_mul29_kernel_2mm3_bs2_merged_bit_select_c;
    wire [23:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [23:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [3:0] redist0_i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [59:0] redist2_i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [59:0] redist3_i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [32:0] redist4_i_mul33_kernel_2mm4_ma3_cma_q_1_q;
    reg [32:0] redist5_i_mul29_kernel_2mm3_ma3_cma_q_1_q;
    reg [27:0] redist6_i_mul33_kernel_2mm4_im8_cma_q_1_q;
    reg [35:0] redist7_i_mul33_kernel_2mm4_im0_cma_q_1_q;
    reg [27:0] redist8_i_mul29_kernel_2mm3_im8_cma_q_1_q;
    reg [35:0] redist9_i_mul29_kernel_2mm3_im0_cma_q_1_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out_1_q;
    reg [31:0] redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1_q;
    reg [0:0] redist14_sync_together17_aunroll_x_in_c1_eni5_4_tpl_10_q;
    reg [0:0] redist15_sync_together17_aunroll_x_in_c1_eni5_5_tpl_11_q;
    reg [0:0] redist16_sync_together17_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist17_sync_together17_aunroll_x_in_i_valid_10_q;
    reg [31:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0_q;
    wire redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_reset0;
    wire [31:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ia;
    wire [1:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_aa;
    wire [1:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ab;
    wire [31:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_iq;
    wire [31:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_q;
    wire [1:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_i;
    reg [1:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_wraddr_q;
    wire [2:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_last_q;
    wire [2:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_b;
    wire [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmpReg_q;
    wire [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_notEnable_q;
    wire [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena_q;
    wire [0:0] redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_enaAnd_q;
    wire redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_reset0;
    wire [31:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ia;
    wire [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_aa;
    wire [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ab;
    wire [31:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_iq;
    wire [31:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_q;
    wire [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i;
    (* preserve *) reg redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_eq;
    reg [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_wraddr_q;
    wire [3:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_last_q;
    wire [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmpReg_q;
    wire [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_notEnable_q;
    wire [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena_q;
    wire [0:0] redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together17_aunroll_x_in_i_valid_9(DELAY,128)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together17_aunroll_x_in_i_valid_9 ( .xin(in_i_valid), .xout(redist16_sync_together17_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together17_aunroll_x_in_i_valid_10(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together17_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist17_sync_together17_aunroll_x_in_i_valid_10_q <= $unsigned(redist16_sync_together17_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg0(REG,21)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together17_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg2(REG,23)@51 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist16_sync_together17_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg3(REG,24)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together17_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist15_sync_together17_aunroll_x_in_c1_eni5_5_tpl_11(DELAY,127)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together17_aunroll_x_in_c1_eni5_5_tpl_11 ( .xin(in_c1_eni5_5_tpl), .xout(redist15_sync_together17_aunroll_x_in_c1_eni5_5_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7(BLACKBOX,16)@53
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    kernel_2mm_i_llvm_fpga_push_i32_x_079_push48_0 thei_llvm_fpga_push_i32_x_079_push48_kernel_2mm7 (
        .in_c1_ene5(redist15_sync_together17_aunroll_x_in_c1_eni5_5_tpl_11_q),
        .in_data_in(bgTrunc_i_add34_kernel_2mm6_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together17_aunroll_x_in_c1_eni5_4_tpl_10(DELAY,126)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together17_aunroll_x_in_c1_eni5_4_tpl_10 ( .xin(in_c1_eni5_4_tpl), .xout(redist14_sync_together17_aunroll_x_in_c1_eni5_4_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_notEnable(LOGICAL,147)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_nor(LOGICAL,148)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_nor_q = ~ (redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_notEnable_q | redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena_q);

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_last(CONSTANT,144)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmp(LOGICAL,145)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmp_q = $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_last_q == redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmpReg(REG,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmpReg_q <= $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmp_q);
        end
    end

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_nor_q == 1'b1)
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena_q <= $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_cmpReg_q);
        end
    end

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_enaAnd(LOGICAL,150)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_enaAnd_q = redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_sticky_ena_q & VCC_q;

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt(COUNTER,142)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i <= 4'd0;
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i == 4'd7)
            begin
                redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i <= $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i <= $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_q = redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_i[3:0];

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_wraddr(REG,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_wraddr_q <= $unsigned(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_q);
        end
    end

    // redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem(DUALMEM,141)
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ia = $unsigned(in_c1_eni5_3_tpl);
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_aa = redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_wraddr_q;
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ab = redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_rdcnt_q;
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_dmem (
        .clocken1(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_aa),
        .data_a(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_ab),
        .q_b(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_iq),
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
    assign redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_q = redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5(BLACKBOX,15)@52
    // out out_feedback_stall_out_48@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_x_079_pop48_0 thei_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5 (
        .in_data_in(redist13_sync_together17_aunroll_x_in_c1_eni5_3_tpl_10_mem_q),
        .in_dir(redist14_sync_together17_aunroll_x_in_c1_eni5_4_tpl_10_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_x_079_push48_kernel_2mm7_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out);
        end
    end

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_notEnable(LOGICAL,137)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_nor(LOGICAL,138)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_nor_q = ~ (redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_notEnable_q | redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena_q);

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_last(CONSTANT,134)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp(LOGICAL,135)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_b = {1'b0, redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_q};
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_q = $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_last_q == redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmpReg(REG,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmpReg_q <= $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmp_q);
        end
    end

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena(REG,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_nor_q == 1'b1)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena_q <= $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_cmpReg_q);
        end
    end

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_enaAnd(LOGICAL,140)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_enaAnd_q = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_sticky_ena_q & VCC_q;

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt(COUNTER,132)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_i <= $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_q = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_i[1:0];

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_wraddr(REG,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_wraddr_q <= $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_q);
        end
    end

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem(DUALMEM,131)
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ia = $unsigned(in_c1_eni5_2_tpl);
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_aa = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_wraddr_q;
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ab = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_rdcnt_q;
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_dmem (
        .clocken1(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_aa),
        .data_a(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_ab),
        .q_b(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_iq),
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
    assign redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_q = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_iq[31:0];

    // redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0_q <= $unsigned(redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_mem_q);
        end
    end

    // i_mul33_kernel_2mm4_bs2_merged_bit_select(BITSELECT,106)@48
    assign i_mul33_kernel_2mm4_bs2_merged_bit_select_b = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0_q[17:0];
    assign i_mul33_kernel_2mm4_bs2_merged_bit_select_c = redist12_sync_together17_aunroll_x_in_c1_eni5_2_tpl_6_outputreg0_q[31:18];

    // valid_fanout_reg1(REG,22)@42 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2(BLACKBOX,14)@43
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_alpha9833_0 thei_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul29_kernel_2mm3_bs2_merged_bit_select(BITSELECT,107)@43
    assign i_mul29_kernel_2mm3_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2_out_dest_data_out_0_0[17:0];
    assign i_mul29_kernel_2mm3_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_alpha9833_kernel_2mm2_out_dest_data_out_0_0[31:18];

    // redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1_q <= $unsigned(in_c1_eni5_1_tpl);
        end
    end

    // i_mul29_kernel_2mm3_bs1_merged_bit_select(BITSELECT,105)@43
    assign i_mul29_kernel_2mm3_bs1_merged_bit_select_b = redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1_q[17:0];
    assign i_mul29_kernel_2mm3_bs1_merged_bit_select_c = redist11_sync_together17_aunroll_x_in_c1_eni5_1_tpl_1_q[31:18];

    // i_mul29_kernel_2mm3_ma3_cma(CHAINMULTADD,62)@43 + 2
    assign i_mul29_kernel_2mm3_ma3_cma_reset = ~ (resetn);
    assign i_mul29_kernel_2mm3_ma3_cma_ena0 = 1'b1;
    assign i_mul29_kernel_2mm3_ma3_cma_ena1 = i_mul29_kernel_2mm3_ma3_cma_ena0;
    assign i_mul29_kernel_2mm3_ma3_cma_p[0] = i_mul29_kernel_2mm3_ma3_cma_a0[0] * i_mul29_kernel_2mm3_ma3_cma_c0[0];
    assign i_mul29_kernel_2mm3_ma3_cma_p[1] = i_mul29_kernel_2mm3_ma3_cma_a0[1] * i_mul29_kernel_2mm3_ma3_cma_c0[1];
    assign i_mul29_kernel_2mm3_ma3_cma_u[0] = {1'b0, i_mul29_kernel_2mm3_ma3_cma_p[0][31:0]};
    assign i_mul29_kernel_2mm3_ma3_cma_u[1] = {1'b0, i_mul29_kernel_2mm3_ma3_cma_p[1][31:0]};
    assign i_mul29_kernel_2mm3_ma3_cma_w[0] = i_mul29_kernel_2mm3_ma3_cma_u[0] + i_mul29_kernel_2mm3_ma3_cma_u[1];
    assign i_mul29_kernel_2mm3_ma3_cma_x[0] = i_mul29_kernel_2mm3_ma3_cma_w[0];
    assign i_mul29_kernel_2mm3_ma3_cma_y[0] = i_mul29_kernel_2mm3_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_ma3_cma_a0 <= '{default: '0};
            i_mul29_kernel_2mm3_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_ma3_cma_ena0 == 1'b1)
            begin
                i_mul29_kernel_2mm3_ma3_cma_a0[0] <= i_mul29_kernel_2mm3_bs1_merged_bit_select_c;
                i_mul29_kernel_2mm3_ma3_cma_a0[1] <= i_mul29_kernel_2mm3_bs2_merged_bit_select_c;
                i_mul29_kernel_2mm3_ma3_cma_c0[0] <= i_mul29_kernel_2mm3_bs2_merged_bit_select_b;
                i_mul29_kernel_2mm3_ma3_cma_c0[1] <= i_mul29_kernel_2mm3_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_ma3_cma_ena1 == 1'b1)
            begin
                i_mul29_kernel_2mm3_ma3_cma_s[0] <= i_mul29_kernel_2mm3_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul29_kernel_2mm3_ma3_cma_delay ( .xin(i_mul29_kernel_2mm3_ma3_cma_s[0]), .xout(i_mul29_kernel_2mm3_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul29_kernel_2mm3_ma3_cma_q = $unsigned(i_mul29_kernel_2mm3_ma3_cma_qq[32:0]);

    // redist5_i_mul29_kernel_2mm3_ma3_cma_q_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mul29_kernel_2mm3_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mul29_kernel_2mm3_ma3_cma_q_1_q <= $unsigned(i_mul29_kernel_2mm3_ma3_cma_q);
        end
    end

    // i_mul29_kernel_2mm3_sums_align_1(BITSHIFT,40)@46
    assign i_mul29_kernel_2mm3_sums_align_1_qint = { redist5_i_mul29_kernel_2mm3_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul29_kernel_2mm3_sums_align_1_q = i_mul29_kernel_2mm3_sums_align_1_qint[50:0];

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,90)@46
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul29_kernel_2mm3_sums_align_1_q};

    // i_mul29_kernel_2mm3_im8_cma(CHAINMULTADD,59)@43 + 2
    assign i_mul29_kernel_2mm3_im8_cma_reset = ~ (resetn);
    assign i_mul29_kernel_2mm3_im8_cma_ena0 = 1'b1;
    assign i_mul29_kernel_2mm3_im8_cma_ena1 = i_mul29_kernel_2mm3_im8_cma_ena0;
    assign i_mul29_kernel_2mm3_im8_cma_p[0] = i_mul29_kernel_2mm3_im8_cma_a0[0] * i_mul29_kernel_2mm3_im8_cma_c0[0];
    assign i_mul29_kernel_2mm3_im8_cma_u[0] = i_mul29_kernel_2mm3_im8_cma_p[0][27:0];
    assign i_mul29_kernel_2mm3_im8_cma_w[0] = i_mul29_kernel_2mm3_im8_cma_u[0];
    assign i_mul29_kernel_2mm3_im8_cma_x[0] = i_mul29_kernel_2mm3_im8_cma_w[0];
    assign i_mul29_kernel_2mm3_im8_cma_y[0] = i_mul29_kernel_2mm3_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_im8_cma_a0 <= '{default: '0};
            i_mul29_kernel_2mm3_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_im8_cma_ena0 == 1'b1)
            begin
                i_mul29_kernel_2mm3_im8_cma_a0[0] <= i_mul29_kernel_2mm3_bs1_merged_bit_select_c;
                i_mul29_kernel_2mm3_im8_cma_c0[0] <= i_mul29_kernel_2mm3_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_im8_cma_ena1 == 1'b1)
            begin
                i_mul29_kernel_2mm3_im8_cma_s[0] <= i_mul29_kernel_2mm3_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul29_kernel_2mm3_im8_cma_delay ( .xin(i_mul29_kernel_2mm3_im8_cma_s[0]), .xout(i_mul29_kernel_2mm3_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul29_kernel_2mm3_im8_cma_q = $unsigned(i_mul29_kernel_2mm3_im8_cma_qq[27:0]);

    // redist8_i_mul29_kernel_2mm3_im8_cma_q_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul29_kernel_2mm3_im8_cma_q_1_q <= '0;
        end
        else
        begin
            redist8_i_mul29_kernel_2mm3_im8_cma_q_1_q <= $unsigned(i_mul29_kernel_2mm3_im8_cma_q);
        end
    end

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,108)@46
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist8_i_mul29_kernel_2mm3_im8_cma_q_1_q[23:0]);
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist8_i_mul29_kernel_2mm3_im8_cma_q_1_q[27:24]);

    // i_mul29_kernel_2mm3_im0_cma(CHAINMULTADD,58)@43 + 2
    assign i_mul29_kernel_2mm3_im0_cma_reset = ~ (resetn);
    assign i_mul29_kernel_2mm3_im0_cma_ena0 = 1'b1;
    assign i_mul29_kernel_2mm3_im0_cma_ena1 = i_mul29_kernel_2mm3_im0_cma_ena0;
    assign i_mul29_kernel_2mm3_im0_cma_p[0] = i_mul29_kernel_2mm3_im0_cma_a0[0] * i_mul29_kernel_2mm3_im0_cma_c0[0];
    assign i_mul29_kernel_2mm3_im0_cma_u[0] = i_mul29_kernel_2mm3_im0_cma_p[0][35:0];
    assign i_mul29_kernel_2mm3_im0_cma_w[0] = i_mul29_kernel_2mm3_im0_cma_u[0];
    assign i_mul29_kernel_2mm3_im0_cma_x[0] = i_mul29_kernel_2mm3_im0_cma_w[0];
    assign i_mul29_kernel_2mm3_im0_cma_y[0] = i_mul29_kernel_2mm3_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_im0_cma_a0 <= '{default: '0};
            i_mul29_kernel_2mm3_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_im0_cma_ena0 == 1'b1)
            begin
                i_mul29_kernel_2mm3_im0_cma_a0[0] <= i_mul29_kernel_2mm3_bs1_merged_bit_select_b;
                i_mul29_kernel_2mm3_im0_cma_c0[0] <= i_mul29_kernel_2mm3_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul29_kernel_2mm3_im0_cma_ena1 == 1'b1)
            begin
                i_mul29_kernel_2mm3_im0_cma_s[0] <= i_mul29_kernel_2mm3_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul29_kernel_2mm3_im0_cma_delay ( .xin(i_mul29_kernel_2mm3_im0_cma_s[0]), .xout(i_mul29_kernel_2mm3_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul29_kernel_2mm3_im0_cma_q = $unsigned(i_mul29_kernel_2mm3_im0_cma_qq[35:0]);

    // redist9_i_mul29_kernel_2mm3_im0_cma_q_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul29_kernel_2mm3_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist9_i_mul29_kernel_2mm3_im0_cma_q_1_q <= $unsigned(i_mul29_kernel_2mm3_im0_cma_q);
        end
    end

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,84)@46
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist9_i_mul29_kernel_2mm3_im0_cma_q_1_q};

    // i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2(ADD,70)@46 + 1
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_c[0] = i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q = i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_o[59:0];

    // redist1_i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,87)@47
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2(ADD,71)@47 + 1
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin = i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_c;
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_q = i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist3_i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist3_i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q(BITJOIN,72)@48
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q = {i_mul29_kernel_2mm3_sums_result_add_0_0_p2_of_2_q, redist3_i_mul29_kernel_2mm3_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul29_kernel_2mm3_sel_x(BITSELECT,3)@48
    assign bgTrunc_i_mul29_kernel_2mm3_sel_x_in = i_mul29_kernel_2mm3_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul29_kernel_2mm3_sel_x_b = bgTrunc_i_mul29_kernel_2mm3_sel_x_in[31:0];

    // i_mul33_kernel_2mm4_bs1_merged_bit_select(BITSELECT,104)@48
    assign i_mul33_kernel_2mm4_bs1_merged_bit_select_b = bgTrunc_i_mul29_kernel_2mm3_sel_x_b[17:0];
    assign i_mul33_kernel_2mm4_bs1_merged_bit_select_c = bgTrunc_i_mul29_kernel_2mm3_sel_x_b[31:18];

    // i_mul33_kernel_2mm4_ma3_cma(CHAINMULTADD,63)@48 + 2
    assign i_mul33_kernel_2mm4_ma3_cma_reset = ~ (resetn);
    assign i_mul33_kernel_2mm4_ma3_cma_ena0 = 1'b1;
    assign i_mul33_kernel_2mm4_ma3_cma_ena1 = i_mul33_kernel_2mm4_ma3_cma_ena0;
    assign i_mul33_kernel_2mm4_ma3_cma_p[0] = i_mul33_kernel_2mm4_ma3_cma_a0[0] * i_mul33_kernel_2mm4_ma3_cma_c0[0];
    assign i_mul33_kernel_2mm4_ma3_cma_p[1] = i_mul33_kernel_2mm4_ma3_cma_a0[1] * i_mul33_kernel_2mm4_ma3_cma_c0[1];
    assign i_mul33_kernel_2mm4_ma3_cma_u[0] = {1'b0, i_mul33_kernel_2mm4_ma3_cma_p[0][31:0]};
    assign i_mul33_kernel_2mm4_ma3_cma_u[1] = {1'b0, i_mul33_kernel_2mm4_ma3_cma_p[1][31:0]};
    assign i_mul33_kernel_2mm4_ma3_cma_w[0] = i_mul33_kernel_2mm4_ma3_cma_u[0] + i_mul33_kernel_2mm4_ma3_cma_u[1];
    assign i_mul33_kernel_2mm4_ma3_cma_x[0] = i_mul33_kernel_2mm4_ma3_cma_w[0];
    assign i_mul33_kernel_2mm4_ma3_cma_y[0] = i_mul33_kernel_2mm4_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_ma3_cma_a0 <= '{default: '0};
            i_mul33_kernel_2mm4_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_ma3_cma_ena0 == 1'b1)
            begin
                i_mul33_kernel_2mm4_ma3_cma_a0[0] <= i_mul33_kernel_2mm4_bs1_merged_bit_select_c;
                i_mul33_kernel_2mm4_ma3_cma_a0[1] <= i_mul33_kernel_2mm4_bs2_merged_bit_select_c;
                i_mul33_kernel_2mm4_ma3_cma_c0[0] <= i_mul33_kernel_2mm4_bs2_merged_bit_select_b;
                i_mul33_kernel_2mm4_ma3_cma_c0[1] <= i_mul33_kernel_2mm4_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_ma3_cma_ena1 == 1'b1)
            begin
                i_mul33_kernel_2mm4_ma3_cma_s[0] <= i_mul33_kernel_2mm4_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul33_kernel_2mm4_ma3_cma_delay ( .xin(i_mul33_kernel_2mm4_ma3_cma_s[0]), .xout(i_mul33_kernel_2mm4_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul33_kernel_2mm4_ma3_cma_q = $unsigned(i_mul33_kernel_2mm4_ma3_cma_qq[32:0]);

    // redist4_i_mul33_kernel_2mm4_ma3_cma_q_1(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul33_kernel_2mm4_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist4_i_mul33_kernel_2mm4_ma3_cma_q_1_q <= $unsigned(i_mul33_kernel_2mm4_ma3_cma_q);
        end
    end

    // i_mul33_kernel_2mm4_sums_align_1(BITSHIFT,55)@51
    assign i_mul33_kernel_2mm4_sums_align_1_qint = { redist4_i_mul33_kernel_2mm4_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul33_kernel_2mm4_sums_align_1_q = i_mul33_kernel_2mm4_sums_align_1_qint[50:0];

    // i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,101)@51
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul33_kernel_2mm4_sums_align_1_q};

    // i_mul33_kernel_2mm4_im8_cma(CHAINMULTADD,61)@48 + 2
    assign i_mul33_kernel_2mm4_im8_cma_reset = ~ (resetn);
    assign i_mul33_kernel_2mm4_im8_cma_ena0 = 1'b1;
    assign i_mul33_kernel_2mm4_im8_cma_ena1 = i_mul33_kernel_2mm4_im8_cma_ena0;
    assign i_mul33_kernel_2mm4_im8_cma_p[0] = i_mul33_kernel_2mm4_im8_cma_a0[0] * i_mul33_kernel_2mm4_im8_cma_c0[0];
    assign i_mul33_kernel_2mm4_im8_cma_u[0] = i_mul33_kernel_2mm4_im8_cma_p[0][27:0];
    assign i_mul33_kernel_2mm4_im8_cma_w[0] = i_mul33_kernel_2mm4_im8_cma_u[0];
    assign i_mul33_kernel_2mm4_im8_cma_x[0] = i_mul33_kernel_2mm4_im8_cma_w[0];
    assign i_mul33_kernel_2mm4_im8_cma_y[0] = i_mul33_kernel_2mm4_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_im8_cma_a0 <= '{default: '0};
            i_mul33_kernel_2mm4_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_im8_cma_ena0 == 1'b1)
            begin
                i_mul33_kernel_2mm4_im8_cma_a0[0] <= i_mul33_kernel_2mm4_bs1_merged_bit_select_c;
                i_mul33_kernel_2mm4_im8_cma_c0[0] <= i_mul33_kernel_2mm4_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_im8_cma_ena1 == 1'b1)
            begin
                i_mul33_kernel_2mm4_im8_cma_s[0] <= i_mul33_kernel_2mm4_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul33_kernel_2mm4_im8_cma_delay ( .xin(i_mul33_kernel_2mm4_im8_cma_s[0]), .xout(i_mul33_kernel_2mm4_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul33_kernel_2mm4_im8_cma_q = $unsigned(i_mul33_kernel_2mm4_im8_cma_qq[27:0]);

    // redist6_i_mul33_kernel_2mm4_im8_cma_q_1(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mul33_kernel_2mm4_im8_cma_q_1_q <= '0;
        end
        else
        begin
            redist6_i_mul33_kernel_2mm4_im8_cma_q_1_q <= $unsigned(i_mul33_kernel_2mm4_im8_cma_q);
        end
    end

    // i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,109)@51
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist6_i_mul33_kernel_2mm4_im8_cma_q_1_q[23:0]);
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist6_i_mul33_kernel_2mm4_im8_cma_q_1_q[27:24]);

    // i_mul33_kernel_2mm4_im0_cma(CHAINMULTADD,60)@48 + 2
    assign i_mul33_kernel_2mm4_im0_cma_reset = ~ (resetn);
    assign i_mul33_kernel_2mm4_im0_cma_ena0 = 1'b1;
    assign i_mul33_kernel_2mm4_im0_cma_ena1 = i_mul33_kernel_2mm4_im0_cma_ena0;
    assign i_mul33_kernel_2mm4_im0_cma_p[0] = i_mul33_kernel_2mm4_im0_cma_a0[0] * i_mul33_kernel_2mm4_im0_cma_c0[0];
    assign i_mul33_kernel_2mm4_im0_cma_u[0] = i_mul33_kernel_2mm4_im0_cma_p[0][35:0];
    assign i_mul33_kernel_2mm4_im0_cma_w[0] = i_mul33_kernel_2mm4_im0_cma_u[0];
    assign i_mul33_kernel_2mm4_im0_cma_x[0] = i_mul33_kernel_2mm4_im0_cma_w[0];
    assign i_mul33_kernel_2mm4_im0_cma_y[0] = i_mul33_kernel_2mm4_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_im0_cma_a0 <= '{default: '0};
            i_mul33_kernel_2mm4_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_im0_cma_ena0 == 1'b1)
            begin
                i_mul33_kernel_2mm4_im0_cma_a0[0] <= i_mul33_kernel_2mm4_bs1_merged_bit_select_b;
                i_mul33_kernel_2mm4_im0_cma_c0[0] <= i_mul33_kernel_2mm4_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul33_kernel_2mm4_im0_cma_ena1 == 1'b1)
            begin
                i_mul33_kernel_2mm4_im0_cma_s[0] <= i_mul33_kernel_2mm4_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul33_kernel_2mm4_im0_cma_delay ( .xin(i_mul33_kernel_2mm4_im0_cma_s[0]), .xout(i_mul33_kernel_2mm4_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul33_kernel_2mm4_im0_cma_q = $unsigned(i_mul33_kernel_2mm4_im0_cma_qq[35:0]);

    // redist7_i_mul33_kernel_2mm4_im0_cma_q_1(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mul33_kernel_2mm4_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist7_i_mul33_kernel_2mm4_im0_cma_q_1_q <= $unsigned(i_mul33_kernel_2mm4_im0_cma_q);
        end
    end

    // i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,95)@51
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist7_i_mul33_kernel_2mm4_im0_cma_q_1_q};

    // i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2(ADD,79)@51 + 1
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_c[0] = i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q = i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul29_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b(CONSTANT,67)
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,110)
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul29_kernel_2mm3_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,98)@52
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2(ADD,80)@52 + 1
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_cin = i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_c;
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul33_kernel_2mm4_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul29_kernel_2mm3_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_q = i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist2_i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q_1(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul33_kernel_2mm4_sums_result_add_0_0_BitJoin_for_q(BITJOIN,81)@53
    assign i_mul33_kernel_2mm4_sums_result_add_0_0_BitJoin_for_q_q = {i_mul33_kernel_2mm4_sums_result_add_0_0_p2_of_2_q, redist2_i_mul33_kernel_2mm4_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul33_kernel_2mm4_sel_x(BITSELECT,4)@53
    assign bgTrunc_i_mul33_kernel_2mm4_sel_x_in = i_mul33_kernel_2mm4_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul33_kernel_2mm4_sel_x_b = bgTrunc_i_mul33_kernel_2mm4_sel_x_in[31:0];

    // i_add34_kernel_2mm6(ADD,13)@53
    assign i_add34_kernel_2mm6_a = {1'b0, bgTrunc_i_mul33_kernel_2mm4_sel_x_b};
    assign i_add34_kernel_2mm6_b = {1'b0, redist10_i_llvm_fpga_pop_i32_x_079_pop48_kernel_2mm5_out_data_out_1_q};
    assign i_add34_kernel_2mm6_o = $unsigned(i_add34_kernel_2mm6_a) + $unsigned(i_add34_kernel_2mm6_b);
    assign i_add34_kernel_2mm6_q = i_add34_kernel_2mm6_o[32:0];

    // bgTrunc_i_add34_kernel_2mm6_sel_x(BITSELECT,2)@53
    assign bgTrunc_i_add34_kernel_2mm6_sel_x_b = i_add34_kernel_2mm6_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@53
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = bgTrunc_i_add34_kernel_2mm6_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
