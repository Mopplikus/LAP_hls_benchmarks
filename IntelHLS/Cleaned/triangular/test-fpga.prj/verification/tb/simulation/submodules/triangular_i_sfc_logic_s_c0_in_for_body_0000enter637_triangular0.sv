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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter637_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Jun 14 20:51:12 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body_0000enter637_triangular0 (
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [32:0] out_c0_exi12_1_tpl,
    output wire [31:0] out_c0_exi12_2_tpl,
    output wire [31:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [63:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [31:0] out_c0_exi12_8_tpl,
    output wire [31:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [31:0] out_c0_exi12_11_tpl,
    output wire [31:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next11_triangular34_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next_triangular36_sel_x_b;
    wire [31:0] bgTrunc_i_i_036_triangular18_sel_x_b;
    wire [31:0] bgTrunc_i_sub1_triangular19_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular15_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular17_sel_x_b;
    wire [31:0] c_i32_166_recast_x_q;
    wire [63:0] i_mptr_bitcast_index_triangular0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index_triangular0_c_i2_01_x_q;
    wire [32:0] i_unnamed_triangular16_sel_x_b;
    wire [31:0] c_i32_064_q;
    wire [31:0] c_i32_166_q;
    wire [31:0] c_i32_267_q;
    wire [32:0] c_i33_165_q;
    wire [32:0] c_i33_undef62_q;
    wire [33:0] i_cmp331_triangular20_a;
    wire [33:0] i_cmp331_triangular20_b;
    logic [33:0] i_cmp331_triangular20_o;
    wire [0:0] i_cmp331_triangular20_c;
    wire [0:0] i_fpga_indvars_iv10_replace_phi_triangular5_s;
    reg [32:0] i_fpga_indvars_iv10_replace_phi_triangular5_q;
    wire [33:0] i_fpga_indvars_iv_next11_triangular34_a;
    wire [33:0] i_fpga_indvars_iv_next11_triangular34_b;
    logic [33:0] i_fpga_indvars_iv_next11_triangular34_o;
    wire [33:0] i_fpga_indvars_iv_next11_triangular34_q;
    wire [32:0] i_fpga_indvars_iv_next_triangular36_a;
    wire [32:0] i_fpga_indvars_iv_next_triangular36_b;
    logic [32:0] i_fpga_indvars_iv_next_triangular36_o;
    wire [32:0] i_fpga_indvars_iv_next_triangular36_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_triangular8_s;
    reg [31:0] i_fpga_indvars_iv_replace_phi_triangular8_q;
    wire [0:0] i_i_036_in_replace_phi_triangular11_s;
    reg [31:0] i_i_036_in_replace_phi_triangular11_q;
    wire [32:0] i_i_036_triangular18_a;
    wire [32:0] i_i_036_triangular18_b;
    logic [32:0] i_i_036_triangular18_o;
    wire [32:0] i_i_036_triangular18_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3420_triangular22_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3421_triangular29_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4619_triangular9_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_4_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_valid_out_10;
    wire [0:0] i_notcmp27_triangular32_q;
    wire [0:0] i_smin_triangular14_s;
    reg [31:0] i_smin_triangular14_q;
    wire [32:0] i_sub1_triangular19_a;
    wire [32:0] i_sub1_triangular19_b;
    logic [32:0] i_sub1_triangular19_o;
    wire [32:0] i_sub1_triangular19_q;
    wire [32:0] i_unnamed_triangular15_a;
    wire [32:0] i_unnamed_triangular15_b;
    logic [32:0] i_unnamed_triangular15_o;
    wire [32:0] i_unnamed_triangular15_q;
    wire [32:0] i_unnamed_triangular16_vt_join_q;
    wire [31:0] i_unnamed_triangular16_vt_select_31_b;
    wire [33:0] i_unnamed_triangular17_a;
    wire [33:0] i_unnamed_triangular17_b;
    logic [33:0] i_unnamed_triangular17_o;
    wire [33:0] i_unnamed_triangular17_q;
    wire [0:0] i_unnamed_triangular23_q;
    wire [0:0] i_unnamed_triangular30_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    wire [0:0] i_exitcond12_triangular27_cmp_nsign_q;
    wire [0:0] i_unnamed_triangular12_cmp_sign_q;
    wire [60:0] i_mptr_bitcast_index_triangular0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_triangular0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_triangular0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_triangular0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_triangular0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_triangular0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_triangular0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_triangular0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_triangular0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_triangular0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [0:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [0:0] redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q;
    reg [59:0] redist5_i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist6_i_unnamed_triangular30_q_2_q;
    reg [0:0] redist6_i_unnamed_triangular30_q_2_delay_0;
    reg [0:0] redist7_i_unnamed_triangular30_q_4_q;
    reg [0:0] redist7_i_unnamed_triangular30_q_4_delay_0;
    reg [31:0] redist8_i_unnamed_triangular16_vt_select_31_b_1_q;
    reg [31:0] redist9_i_i_036_in_replace_phi_triangular11_q_1_q;
    reg [31:0] redist10_i_fpga_indvars_iv_replace_phi_triangular8_q_1_q;
    reg [0:0] redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q;
    reg [0:0] redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q;
    reg [0:0] redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
    reg [0:0] redist16_sync_together89_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist17_sync_together89_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist17_sync_together89_aunroll_x_in_i_valid_3_delay_0;
    reg [31:0] redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_sub1_triangular19_sel_x_b_2_q;
    reg [31:0] redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_q;
    reg [31:0] redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_delay_0;
    reg [31:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0_q;
    wire redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_reset0;
    wire [31:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ia;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_aa;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ab;
    wire [31:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_iq;
    wire [31:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_q;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_i;
    reg [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_cmpReg_q;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_notEnable_q;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena_q;
    wire [0:0] redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_enaAnd_q;
    reg [31:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0_q;
    wire redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_reset0;
    wire [31:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ia;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_aa;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ab;
    wire [31:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_iq;
    wire [31:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_q;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_i;
    reg [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_cmpReg_q;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_notEnable_q;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena_q;
    wire [0:0] redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together89_aunroll_x_in_i_valid_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together89_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist16_sync_together89_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist17_sync_together89_aunroll_x_in_i_valid_3(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together89_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist17_sync_together89_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist17_sync_together89_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
            redist17_sync_together89_aunroll_x_in_i_valid_3_q <= redist17_sync_together89_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg0(REG,107)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_notEnable(LOGICAL,217)
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_nor(LOGICAL,218)
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_nor_q = ~ (redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_notEnable_q | redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena_q);

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_cmpReg(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_nor_q == 1'b1)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena_q <= $unsigned(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_cmpReg_q);
        end
    end

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_enaAnd(LOGICAL,220)
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_enaAnd_q = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_sticky_ena_q & VCC_q;

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt(COUNTER,214)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_i <= $unsigned(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_q = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_i[0:0];

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_wraddr(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_wraddr_q <= $unsigned(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_q);
        end
    end

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem(DUALMEM,213)
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ia = $unsigned(in_c0_eni3_3_tpl);
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_aa = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_wraddr_q;
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ab = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_rdcnt_q;
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_dmem (
        .clocken1(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_aa),
        .data_a(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_ab),
        .q_b(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_iq),
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
    assign redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_q = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_iq[31:0];

    // redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0_q <= $unsigned(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_mem_q);
        end
    end

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_notEnable(LOGICAL,208)
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_nor(LOGICAL,209)
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_nor_q = ~ (redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_notEnable_q | redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena_q);

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_cmpReg(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_nor_q == 1'b1)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena_q <= $unsigned(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_cmpReg_q);
        end
    end

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_enaAnd(LOGICAL,211)
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_enaAnd_q = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_sticky_ena_q & VCC_q;

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt(COUNTER,205)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_i <= $unsigned(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_q = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_i[0:0];

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_wraddr(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_wraddr_q <= $unsigned(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_q);
        end
    end

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem(DUALMEM,204)
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ia = $unsigned(in_c0_eni3_2_tpl);
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_aa = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_wraddr_q;
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ab = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_rdcnt_q;
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_dmem (
        .clocken1(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_aa),
        .data_a(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_ab),
        .q_b(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_iq),
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
    assign redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_q = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_iq[31:0];

    // redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0_q <= $unsigned(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_mem_q);
        end
    end

    // redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q <= $unsigned(redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q);
        end
    end

    // redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= '0;
            redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q <= '0;
        end
        else
        begin
            redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= $unsigned(redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q);
            redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q <= redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
        end
    end

    // valid_fanout_reg11(REG,118)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg12(REG,119)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41(BLACKBOX,79)@5
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    triangular_i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_0 thei_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_data_out),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_triangular18(redist7_i_unnamed_triangular30_q_4_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40(BLACKBOX,73)@5
    // out out_feedback_stall_out_15@20000000
    triangular_i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40 (
        .in_data_in(redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0_q),
        .in_dir(redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_reorder_limiter_enter37_push15_triangular41_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,116)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,117)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext35_push14_triangular39(BLACKBOX,78)@5
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    triangular_i_llvm_fpga_push_i32_lim_ext35_push14_0 thei_llvm_fpga_push_i32_lim_ext35_push14_triangular39 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_triangular18(redist7_i_unnamed_triangular30_q_4_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38(BLACKBOX,72)@5
    // out out_feedback_stall_out_14@20000000
    triangular_i_llvm_fpga_pop_i32_lim_ext35_pop14_0 thei_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38 (
        .in_data_in(redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0_q),
        .in_dir(redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_lim_ext35_push14_triangular39_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp27_triangular32(LOGICAL,81)@5
    assign i_notcmp27_triangular32_q = redist7_i_unnamed_triangular30_q_4_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3(BLACKBOX,67)@1
    triangular_i_llvm_fpga_ffwd_dest_i33_unnamed_8_triangular0 thei_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_165(CONSTANT,52)
    assign c_i33_165_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next11_triangular34(ADD,58)@1
    assign i_fpga_indvars_iv_next11_triangular34_a = {1'b0, i_fpga_indvars_iv10_replace_phi_triangular5_q};
    assign i_fpga_indvars_iv_next11_triangular34_b = {1'b0, c_i33_165_q};
    assign i_fpga_indvars_iv_next11_triangular34_o = $unsigned(i_fpga_indvars_iv_next11_triangular34_a) + $unsigned(i_fpga_indvars_iv_next11_triangular34_b);
    assign i_fpga_indvars_iv_next11_triangular34_q = i_fpga_indvars_iv_next11_triangular34_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next11_triangular34_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next11_triangular34_sel_x_b = i_fpga_indvars_iv_next11_triangular34_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35(BLACKBOX,80)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    triangular_i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_0 thei_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_triangular34_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_triangular18(i_unnamed_triangular30_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef62(CONSTANT,53)
    assign c_i33_undef62_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4(BLACKBOX,74)@1
    // out out_feedback_stall_out_10@20000000
    triangular_i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4 (
        .in_data_in(c_i33_undef62_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv10_push10_triangular35_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv10_replace_phi_triangular5(MUX,57)@1
    assign i_fpga_indvars_iv10_replace_phi_triangular5_s = in_c0_eni3_1_tpl;
    always @(i_fpga_indvars_iv10_replace_phi_triangular5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_5_0)
    begin
        unique case (i_fpga_indvars_iv10_replace_phi_triangular5_s)
            1'b0 : i_fpga_indvars_iv10_replace_phi_triangular5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop10_triangular4_out_data_out;
            1'b1 : i_fpga_indvars_iv10_replace_phi_triangular5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_5_0;
            default : i_fpga_indvars_iv10_replace_phi_triangular5_q = 33'b0;
        endcase
    end

    // i_exitcond12_triangular27_cmp_nsign(LOGICAL,129)@1
    assign i_exitcond12_triangular27_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv10_replace_phi_triangular5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp3421_triangular29(BLACKBOX,64)@1
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp3421_0 thei_llvm_fpga_ffwd_dest_i1_cmp3421_triangular29 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp3421_triangular29_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular30(LOGICAL,94)@1
    assign i_unnamed_triangular30_q = i_llvm_fpga_ffwd_dest_i1_cmp3421_triangular29_out_dest_data_out_2_0 & i_exitcond12_triangular27_cmp_nsign_q;

    // redist6_i_unnamed_triangular30_q_2(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_triangular30_q_2_delay_0 <= '0;
            redist6_i_unnamed_triangular30_q_2_q <= '0;
        end
        else
        begin
            redist6_i_unnamed_triangular30_q_2_delay_0 <= $unsigned(i_unnamed_triangular30_q);
            redist6_i_unnamed_triangular30_q_2_q <= redist6_i_unnamed_triangular30_q_2_delay_0;
        end
    end

    // redist7_i_unnamed_triangular30_q_4(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_triangular30_q_4_delay_0 <= '0;
            redist7_i_unnamed_triangular30_q_4_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_triangular30_q_4_delay_0 <= $unsigned(redist6_i_unnamed_triangular30_q_2_q);
            redist7_i_unnamed_triangular30_q_4_q <= redist7_i_unnamed_triangular30_q_4_delay_0;
        end
    end

    // c_i32_166(CONSTANT,49)
    assign c_i32_166_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg3(REG,110)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n4619_triangular9(BLACKBOX,65)@2
    triangular_i_llvm_fpga_ffwd_dest_i32_n4619_0 thei_llvm_fpga_ffwd_dest_i32_n4619_triangular9 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n4619_triangular9_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,111)@1 + 1
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

    // valid_fanout_reg7(REG,114)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
        end
    end

    // bgTrunc_i_i_036_triangular18_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_i_036_triangular18_sel_x_b = i_i_036_triangular18_q[31:0];

    // i_llvm_fpga_push_i32_i_036_in_push12_triangular31(BLACKBOX,77)@3
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    triangular_i_llvm_fpga_push_i32_i_036_in_push12_0 thei_llvm_fpga_push_i32_i_036_in_push12_triangular31 (
        .in_data_in(bgTrunc_i_i_036_triangular18_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_triangular18(redist6_i_unnamed_triangular30_q_2_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_064(CONSTANT,48)
    assign c_i32_064_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10(BLACKBOX,71)@2
    // out out_feedback_stall_out_12@20000000
    triangular_i_llvm_fpga_pop_i32_i_036_in_pop12_0 thei_llvm_fpga_pop_i32_i_036_in_pop12_triangular10 (
        .in_data_in(c_i32_064_q),
        .in_dir(redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_i_036_in_push12_triangular31_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_i_036_in_replace_phi_triangular11(MUX,61)@2
    assign i_i_036_in_replace_phi_triangular11_s = redist11_sync_together89_aunroll_x_in_c0_eni3_1_tpl_1_q;
    always @(i_i_036_in_replace_phi_triangular11_s or i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_data_out or i_llvm_fpga_ffwd_dest_i32_n4619_triangular9_out_dest_data_out_1_0)
    begin
        unique case (i_i_036_in_replace_phi_triangular11_s)
            1'b0 : i_i_036_in_replace_phi_triangular11_q = i_llvm_fpga_pop_i32_i_036_in_pop12_triangular10_out_data_out;
            1'b1 : i_i_036_in_replace_phi_triangular11_q = i_llvm_fpga_ffwd_dest_i32_n4619_triangular9_out_dest_data_out_1_0;
            default : i_i_036_in_replace_phi_triangular11_q = 32'b0;
        endcase
    end

    // i_i_036_triangular18(ADD,62)@2 + 1
    assign i_i_036_triangular18_a = {1'b0, i_i_036_in_replace_phi_triangular11_q};
    assign i_i_036_triangular18_b = {1'b0, c_i32_166_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_i_036_triangular18_o <= 33'b0;
        end
        else
        begin
            i_i_036_triangular18_o <= $unsigned(i_i_036_triangular18_a) + $unsigned(i_i_036_triangular18_b);
        end
    end
    assign i_i_036_triangular18_q = i_i_036_triangular18_o[32:0];

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,148)@3
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(i_i_036_triangular18_q[31:31]);

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,147)@3
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_i_036_triangular18_q[31:0]);

    // i_mptr_bitcast_index_triangular0_c_i2_01_x(CONSTANT,14)
    assign i_mptr_bitcast_index_triangular0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,174)@3
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index_triangular0_c_i2_01_x_q};

    // valid_fanout_reg6(REG,113)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25(BLACKBOX,68)@3
    triangular_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,181)@3
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25_out_dest_data_out_3_0[59:0]);
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4122_triangular25_out_dest_data_out_3_0[63:60]);

    // i_mptr_bitcast_index_triangular0_add_x_p1_of_2(ADD,138)@3 + 1
    assign i_mptr_bitcast_index_triangular0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_triangular0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_triangular0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_triangular0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_triangular0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_triangular0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_triangular0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_triangular0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q = i_mptr_bitcast_index_triangular0_add_x_p1_of_2_o[59:0];

    // redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q <= $unsigned(i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,180)@4
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist1_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_tessel1_3_b_1_q};

    // redist0_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,145)@4
    assign i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_triangular0_add_x_p2_of_2(ADD,139)@4 + 1
    assign i_mptr_bitcast_index_triangular0_add_x_p2_of_2_cin = i_mptr_bitcast_index_triangular0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_triangular0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_triangular0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index_triangular0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_triangular0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_triangular0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_triangular0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_triangular0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_triangular0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_triangular0_add_x_p2_of_2_q = i_mptr_bitcast_index_triangular0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_triangular0_add_x_BitJoin_for_q(BITJOIN,140)@5
    assign i_mptr_bitcast_index_triangular0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_triangular0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index_triangular0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_triangular0_dupName_0_trunc_sel_x(BITSELECT,11)@5
    assign i_mptr_bitcast_index_triangular0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_triangular0_add_x_BitJoin_for_q_q[63:0];

    // c_i32_267(CONSTANT,50)
    assign c_i32_267_q = $unsigned(32'b11111111111111111111111111111110);

    // redist9_i_i_036_in_replace_phi_triangular11_q_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_i_036_in_replace_phi_triangular11_q_1_q <= '0;
        end
        else
        begin
            redist9_i_i_036_in_replace_phi_triangular11_q_1_q <= $unsigned(i_i_036_in_replace_phi_triangular11_q);
        end
    end

    // i_sub1_triangular19(ADD,83)@3
    assign i_sub1_triangular19_a = {1'b0, redist9_i_i_036_in_replace_phi_triangular11_q_1_q};
    assign i_sub1_triangular19_b = {1'b0, c_i32_267_q};
    assign i_sub1_triangular19_o = $unsigned(i_sub1_triangular19_a) + $unsigned(i_sub1_triangular19_b);
    assign i_sub1_triangular19_q = i_sub1_triangular19_o[32:0];

    // bgTrunc_i_sub1_triangular19_sel_x(BITSELECT,5)@3
    assign bgTrunc_i_sub1_triangular19_sel_x_b = i_sub1_triangular19_q[31:0];

    // redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub1_triangular19_sel_x_b);
        end
    end

    // c_i32_166_recast_x(CONSTANT,9)
    assign c_i32_166_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp331_triangular20(COMPARE,55)@4 + 1
    assign i_cmp331_triangular20_a = $unsigned({{2{c_i32_166_recast_x_q[31]}}, c_i32_166_recast_x_q});
    assign i_cmp331_triangular20_b = $unsigned({{2{redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q[31]}}, redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp331_triangular20_o <= 34'b0;
        end
        else
        begin
            i_cmp331_triangular20_o <= $unsigned($signed(i_cmp331_triangular20_a) - $signed(i_cmp331_triangular20_b));
        end
    end
    assign i_cmp331_triangular20_c[0] = i_cmp331_triangular20_o[33];

    // valid_fanout_reg5(REG,112)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist17_sync_together89_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp3420_triangular22(BLACKBOX,63)@5
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp3420_0 thei_llvm_fpga_ffwd_dest_i1_cmp3420_triangular22 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp3420_triangular22_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular23(LOGICAL,91)@5
    assign i_unnamed_triangular23_q = i_llvm_fpga_ffwd_dest_i1_cmp3420_triangular22_out_dest_data_out_2_0 & i_cmp331_triangular20_c;

    // redist19_bgTrunc_i_sub1_triangular19_sel_x_b_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_sub1_triangular19_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_sub1_triangular19_sel_x_b_2_q <= $unsigned(redist18_bgTrunc_i_sub1_triangular19_sel_x_b_1_q);
        end
    end

    // redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_delay_0 <= '0;
            redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_i_036_triangular18_sel_x_b);
            redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_q <= redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_delay_0;
        end
    end

    // valid_fanout_reg1(REG,108)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6(BLACKBOX,66)@3
    triangular_i_llvm_fpga_ffwd_dest_i32_unnamed_9_triangular0 thei_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,109)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,115)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist16_sync_together89_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_fpga_indvars_iv_next_triangular36(ADD,59)@3
    assign i_fpga_indvars_iv_next_triangular36_a = {1'b0, i_fpga_indvars_iv_replace_phi_triangular8_q};
    assign i_fpga_indvars_iv_next_triangular36_b = {1'b0, c_i32_166_q};
    assign i_fpga_indvars_iv_next_triangular36_o = $unsigned(i_fpga_indvars_iv_next_triangular36_a) + $unsigned(i_fpga_indvars_iv_next_triangular36_b);
    assign i_fpga_indvars_iv_next_triangular36_q = i_fpga_indvars_iv_next_triangular36_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next_triangular36_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_fpga_indvars_iv_next_triangular36_sel_x_b = i_fpga_indvars_iv_next_triangular36_q[31:0];

    // i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37(BLACKBOX,76)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    triangular_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_triangular36_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_triangular18(redist6_i_unnamed_triangular30_q_2_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7(BLACKBOX,70)@3
    // out out_feedback_stall_out_11@20000000
    triangular_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7 (
        .in_data_in(c_i32_064_q),
        .in_dir(redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular37_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_triangular8(MUX,60)@3
    assign i_fpga_indvars_iv_replace_phi_triangular8_s = redist12_sync_together89_aunroll_x_in_c0_eni3_1_tpl_2_q;
    always @(i_fpga_indvars_iv_replace_phi_triangular8_s or i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_triangular8_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_triangular8_q = i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_triangular8_q = i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv_replace_phi_triangular8_q = 32'b0;
        endcase
    end

    // i_unnamed_triangular12_cmp_sign(LOGICAL,130)@3
    assign i_unnamed_triangular12_cmp_sign_q = $unsigned(i_fpga_indvars_iv_replace_phi_triangular8_q[31:31]);

    // i_smin_triangular14(MUX,82)@3 + 1
    assign i_smin_triangular14_s = i_unnamed_triangular12_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smin_triangular14_q <= 32'b0;
        end
        else
        begin
            unique case (i_smin_triangular14_s)
                1'b0 : i_smin_triangular14_q <= c_i32_064_q;
                1'b1 : i_smin_triangular14_q <= i_fpga_indvars_iv_replace_phi_triangular8_q;
                default : i_smin_triangular14_q <= 32'b0;
            endcase
        end
    end

    // redist10_i_fpga_indvars_iv_replace_phi_triangular8_q_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_fpga_indvars_iv_replace_phi_triangular8_q_1_q <= '0;
        end
        else
        begin
            redist10_i_fpga_indvars_iv_replace_phi_triangular8_q_1_q <= $unsigned(i_fpga_indvars_iv_replace_phi_triangular8_q);
        end
    end

    // i_unnamed_triangular15(SUB,85)@4
    assign i_unnamed_triangular15_a = {1'b0, redist10_i_fpga_indvars_iv_replace_phi_triangular8_q_1_q};
    assign i_unnamed_triangular15_b = {1'b0, i_smin_triangular14_q};
    assign i_unnamed_triangular15_o = $unsigned(i_unnamed_triangular15_a) - $unsigned(i_unnamed_triangular15_b);
    assign i_unnamed_triangular15_q = i_unnamed_triangular15_o[32:0];

    // bgTrunc_i_unnamed_triangular15_sel_x(BITSELECT,6)@4
    assign bgTrunc_i_unnamed_triangular15_sel_x_b = $unsigned(i_unnamed_triangular15_q[31:0]);

    // i_unnamed_triangular16_sel_x(BITSELECT,17)@4
    assign i_unnamed_triangular16_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular15_sel_x_b[31:0]};

    // i_unnamed_triangular16_vt_select_31(BITSELECT,89)@4
    assign i_unnamed_triangular16_vt_select_31_b = i_unnamed_triangular16_sel_x_b[31:0];

    // redist8_i_unnamed_triangular16_vt_select_31_b_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_triangular16_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_triangular16_vt_select_31_b_1_q <= $unsigned(i_unnamed_triangular16_vt_select_31_b);
        end
    end

    // i_unnamed_triangular16_vt_join(BITJOIN,88)@5
    assign i_unnamed_triangular16_vt_join_q = {GND_q, redist8_i_unnamed_triangular16_vt_select_31_b_1_q};

    // i_unnamed_triangular17(ADD,90)@5
    assign i_unnamed_triangular17_a = {1'b0, i_unnamed_triangular16_vt_join_q};
    assign i_unnamed_triangular17_b = {1'b0, c_i33_165_q};
    assign i_unnamed_triangular17_o = $unsigned(i_unnamed_triangular17_a) + $unsigned(i_unnamed_triangular17_b);
    assign i_unnamed_triangular17_q = i_unnamed_triangular17_o[33:0];

    // bgTrunc_i_unnamed_triangular17_sel_x(BITSELECT,7)@5
    assign bgTrunc_i_unnamed_triangular17_sel_x_b = i_unnamed_triangular17_q[32:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@5
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = bgTrunc_i_unnamed_triangular17_sel_x_b;
    assign out_c0_exi12_2_tpl = redist20_bgTrunc_i_i_036_triangular18_sel_x_b_2_q;
    assign out_c0_exi12_3_tpl = redist19_bgTrunc_i_sub1_triangular19_sel_x_b_2_q;
    assign out_c0_exi12_4_tpl = i_unnamed_triangular23_q;
    assign out_c0_exi12_5_tpl = i_mptr_bitcast_index_triangular0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi12_6_tpl = redist7_i_unnamed_triangular30_q_4_q;
    assign out_c0_exi12_7_tpl = i_notcmp27_triangular32_q;
    assign out_c0_exi12_8_tpl = i_llvm_fpga_pop_i32_lim_ext35_pop14_triangular38_out_data_out;
    assign out_c0_exi12_9_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter37_pop15_triangular40_out_data_out;
    assign out_c0_exi12_10_tpl = redist13_sync_together89_aunroll_x_in_c0_eni3_1_tpl_4_q;
    assign out_c0_exi12_11_tpl = redist14_sync_together89_aunroll_x_in_c0_eni3_2_tpl_4_outputreg0_q;
    assign out_c0_exi12_12_tpl = redist15_sync_together89_aunroll_x_in_c0_eni3_3_tpl_4_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond29_triangular33(BLACKBOX,75)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_triangular33 (
        .in_data_in(i_unnamed_triangular30_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going28_triangular2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_triangular2(BLACKBOX,69)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_triangular2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_triangular33_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_triangular2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_triangular2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,54)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_triangular2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going28_triangular2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,100)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_triangular2_out_pipeline_valid_out;

endmodule
