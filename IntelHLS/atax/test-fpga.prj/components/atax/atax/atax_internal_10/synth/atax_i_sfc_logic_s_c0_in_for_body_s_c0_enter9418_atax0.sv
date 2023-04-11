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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_ataxs_c0_enter9418_atax0
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter9418_atax0 (
    input wire [31:0] in_unnamed_atax3_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax3_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax3_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax3_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_atax3_atax_avm_address,
    output wire [0:0] out_unnamed_atax3_atax_avm_enable,
    output wire [0:0] out_unnamed_atax3_atax_avm_read,
    output wire [0:0] out_unnamed_atax3_atax_avm_write,
    output wire [31:0] out_unnamed_atax3_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax3_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax3_atax_avm_burstcount,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [63:0] out_c0_exi10_1_tpl,
    output wire [63:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [31:0] out_c0_exi10_4_tpl,
    output wire [0:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [0:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax0,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [0:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_tmp_local_pmem_q;
    wire [31:0] c_i32_033_q;
    wire [31:0] c_i32_137_q;
    wire [5:0] c_i6_136_q;
    wire [5:0] c_i6_1834_q;
    wire [1:0] i_arrayidx1_atax5_vt_const_1_q;
    wire [63:0] i_arrayidx1_atax5_vt_join_q;
    wire [61:0] i_arrayidx1_atax5_vt_select_63_b;
    wire [6:0] i_fpga_indvars_iv_next8_atax14_a;
    wire [6:0] i_fpga_indvars_iv_next8_atax14_b;
    logic [6:0] i_fpga_indvars_iv_next8_atax14_o;
    wire [6:0] i_fpga_indvars_iv_next8_atax14_q;
    wire [63:0] i_idxprom_atax4_vt_join_q;
    wire [31:0] i_idxprom_atax4_vt_select_31_b;
    wire [32:0] i_inc36_atax16_a;
    wire [32:0] i_inc36_atax16_b;
    logic [32:0] i_inc36_atax16_o;
    wire [32:0] i_inc36_atax16_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_feedback_stall_out_12;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_valid_out_11;
    wire [0:0] i_notcmp26_atax12_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_atax14_sel_x_b;
    wire [31:0] bgTrunc_i_inc36_atax16_sel_x_b;
    wire [7:0] i_arrayidx1_atax0_add_x_a;
    wire [7:0] i_arrayidx1_atax0_add_x_b;
    logic [7:0] i_arrayidx1_atax0_add_x_o;
    wire [7:0] i_arrayidx1_atax0_add_x_q;
    wire [63:0] i_arrayidx1_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx1_atax0_narrow_x_b;
    wire [6:0] i_arrayidx1_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx1_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom_atax4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond9_atax9_cmp_nsign_q;
    wire [56:0] i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond9_atax9_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond9_atax9_cmp_nsign_q_2_q;
    reg [0:0] redist2_i_exitcond9_atax9_cmp_nsign_q_5_q;
    reg [0:0] redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_0;
    reg [0:0] redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_1;
    reg [0:0] redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_q;
    reg [0:0] redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_0;
    reg [0:0] redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_1;
    reg [0:0] redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_2;
    reg [0:0] redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_q;
    reg [0:0] redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_0;
    reg [0:0] redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_1;
    reg [0:0] redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_2;
    reg [0:0] redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_q;
    reg [0:0] redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_0;
    reg [0:0] redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_1;
    reg [0:0] redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_2;
    reg [0:0] redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_3;
    reg [0:0] redist8_sync_together53_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_sync_together53_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist9_sync_together53_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist9_sync_together53_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_0;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_1;
    reg [63:0] redist12_i_idxprom_atax4_vt_join_q_4_inputreg0_q;
    wire redist12_i_idxprom_atax4_vt_join_q_4_mem_reset0;
    wire [63:0] redist12_i_idxprom_atax4_vt_join_q_4_mem_ia;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_mem_aa;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_mem_ab;
    wire [63:0] redist12_i_idxprom_atax4_vt_join_q_4_mem_iq;
    wire [63:0] redist12_i_idxprom_atax4_vt_join_q_4_mem_q;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_i;
    reg [0:0] redist12_i_idxprom_atax4_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist12_i_idxprom_atax4_vt_join_q_4_cmpReg_q;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_notEnable_q;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist12_i_idxprom_atax4_vt_join_q_4_enaAnd_q;
    reg [63:0] redist13_i_arrayidx1_atax5_vt_join_q_4_inputreg0_q;
    wire redist13_i_arrayidx1_atax5_vt_join_q_4_mem_reset0;
    wire [63:0] redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ia;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_mem_aa;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ab;
    wire [63:0] redist13_i_arrayidx1_atax5_vt_join_q_4_mem_iq;
    wire [63:0] redist13_i_arrayidx1_atax5_vt_join_q_4_mem_q;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_i;
    reg [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_cmpReg_q;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_notEnable_q;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist13_i_arrayidx1_atax5_vt_join_q_4_enaAnd_q;


    // c_i6_136(CONSTANT,21)
    assign c_i6_136_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_atax14(ADD,29)@1
    assign i_fpga_indvars_iv_next8_atax14_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_data_out};
    assign i_fpga_indvars_iv_next8_atax14_b = {1'b0, c_i6_136_q};
    assign i_fpga_indvars_iv_next8_atax14_o = $unsigned(i_fpga_indvars_iv_next8_atax14_a) + $unsigned(i_fpga_indvars_iv_next8_atax14_b);
    assign i_fpga_indvars_iv_next8_atax14_q = i_fpga_indvars_iv_next8_atax14_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_atax14_sel_x(BITSELECT,52)@1
    assign bgTrunc_i_fpga_indvars_iv_next8_atax14_sel_x_b = i_fpga_indvars_iv_next8_atax14_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15(BLACKBOX,45)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_0 thei_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_atax14_sel_x_b),
        .in_exitcond9(i_exitcond9_atax9_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1834(CONSTANT,22)
    assign c_i6_1834_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8(BLACKBOX,40)@1
    // out out_feedback_stall_out_11@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8 (
        .in_data_in(c_i6_1834_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_11(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax15_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond9_atax9_cmp_nsign(LOGICAL,83)@1
    assign i_exitcond9_atax9_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax8_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond29_atax13(BLACKBOX,43)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    atax_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_atax13 (
        .in_data_in(i_exitcond9_atax9_cmp_nsign_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going28_atax2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going28_atax2(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_atax2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_atax13_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_atax2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_atax2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_atax2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going28_atax2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,49)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_atax2_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,74)@1 + 1
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

    // valid_fanout_reg2(REG,73)@1 + 1
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

    // redist8_sync_together53_aunroll_x_in_i_valid_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together53_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together53_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,75)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together53_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_i_exitcond9_atax9_cmp_nsign_q_1(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond9_atax9_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond9_atax9_cmp_nsign_q_1_q <= $unsigned(i_exitcond9_atax9_cmp_nsign_q);
        end
    end

    // redist1_i_exitcond9_atax9_cmp_nsign_q_2(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond9_atax9_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond9_atax9_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond9_atax9_cmp_nsign_q_1_q);
        end
    end

    // redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11(BLACKBOX,42)@3
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop936_push14_0 thei_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11 (
        .in_data_in(redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1_q),
        .in_exitcond9(redist1_i_exitcond9_atax9_cmp_nsign_q_2_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6(BLACKBOX,38)@2
    // out out_feedback_stall_out_14@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_0 thei_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6 (
        .in_data_in(redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i1_memdep_phi_pop936_push14_atax11_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_atax_tmp_local_pmem(CONSTANT,4)
    assign c_atax_tmp_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx1_atax0_upper_bits_x_merged_bit_select(BITSELECT,84)@2
    assign i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp_local_pmem_q[63:7];
    assign i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp_local_pmem_q[6:0];

    // c_i32_033(CONSTANT,19)
    assign c_i32_033_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,72)@1 + 1
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

    // valid_fanout_reg5(REG,76)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_137(CONSTANT,20)
    assign c_i32_137_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc36_atax16(ADD,34)@2
    assign i_inc36_atax16_a = {1'b0, i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_data_out};
    assign i_inc36_atax16_b = {1'b0, c_i32_137_q};
    assign i_inc36_atax16_o = $unsigned(i_inc36_atax16_a) + $unsigned(i_inc36_atax16_b);
    assign i_inc36_atax16_q = i_inc36_atax16_o[32:0];

    // bgTrunc_i_inc36_atax16_sel_x(BITSELECT,53)@2
    assign bgTrunc_i_inc36_atax16_sel_x_b = i_inc36_atax16_q[31:0];

    // i_llvm_fpga_push_i32_i_022_push12_atax17(BLACKBOX,44)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    atax_i_llvm_fpga_push_i32_i_022_push12_0 thei_llvm_fpga_push_i32_i_022_push12_atax17 (
        .in_data_in(bgTrunc_i_inc36_atax16_sel_x_b),
        .in_exitcond9(redist0_i_exitcond9_atax9_cmp_nsign_q_1_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_022_pop12_atax3(BLACKBOX,39)@2
    // out out_feedback_stall_out_12@20000000
    atax_i_llvm_fpga_pop_i32_i_022_pop12_0 thei_llvm_fpga_pop_i32_i_022_pop12_atax3 (
        .in_data_in(c_i32_033_q),
        .in_dir(redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_i_022_push12_atax17_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_atax4_sel_x(BITSELECT,68)@2
    assign i_idxprom_atax4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_022_pop12_atax3_out_data_out[31:0]};

    // i_idxprom_atax4_vt_select_31(BITSELECT,33)@2
    assign i_idxprom_atax4_vt_select_31_b = i_idxprom_atax4_sel_x_b[31:0];

    // i_idxprom_atax4_vt_join(BITJOIN,32)@2
    assign i_idxprom_atax4_vt_join_q = {c_i32_033_q, i_idxprom_atax4_vt_select_31_b};

    // i_arrayidx1_atax0_dupName_0_trunc_sel_x(BITSELECT,66)@2
    assign i_arrayidx1_atax0_dupName_0_trunc_sel_x_b = i_idxprom_atax4_vt_join_q[6:0];

    // i_arrayidx1_atax0_narrow_x(BITSELECT,59)@2
    assign i_arrayidx1_atax0_narrow_x_b = i_arrayidx1_atax0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1_atax0_shift_join_x(BITJOIN,60)@2
    assign i_arrayidx1_atax0_shift_join_x_q = {i_arrayidx1_atax0_narrow_x_b, i_arrayidx1_atax5_vt_const_1_q};

    // i_arrayidx1_atax0_add_x(ADD,56)@2
    assign i_arrayidx1_atax0_add_x_a = {1'b0, i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_atax0_add_x_b = {1'b0, i_arrayidx1_atax0_shift_join_x_q};
    assign i_arrayidx1_atax0_add_x_o = $unsigned(i_arrayidx1_atax0_add_x_a) + $unsigned(i_arrayidx1_atax0_add_x_b);
    assign i_arrayidx1_atax0_add_x_q = i_arrayidx1_atax0_add_x_o[7:0];

    // i_arrayidx1_atax0_dupName_2_trunc_sel_x(BITSELECT,67)@2
    assign i_arrayidx1_atax0_dupName_2_trunc_sel_x_b = i_arrayidx1_atax0_add_x_q[6:0];

    // i_arrayidx1_atax0_append_upper_bits_x(BITJOIN,57)@2
    assign i_arrayidx1_atax0_append_upper_bits_x_q = {i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx1_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_atax5_vt_select_63(BITSELECT,27)@2
    assign i_arrayidx1_atax5_vt_select_63_b = i_arrayidx1_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_atax5_vt_const_1(CONSTANT,25)
    assign i_arrayidx1_atax5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_atax5_vt_join(BITJOIN,26)@2
    assign i_arrayidx1_atax5_vt_join_q = {i_arrayidx1_atax5_vt_select_63_b, i_arrayidx1_atax5_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax3_atax7(BLACKBOX,35)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_atax3_atax_avm_address@20000000
    // out out_unnamed_atax3_atax_avm_burstcount@20000000
    // out out_unnamed_atax3_atax_avm_byteenable@20000000
    // out out_unnamed_atax3_atax_avm_enable@20000000
    // out out_unnamed_atax3_atax_avm_read@20000000
    // out out_unnamed_atax3_atax_avm_write@20000000
    // out out_unnamed_atax3_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_3_atax0 thei_llvm_fpga_mem_unnamed_atax3_atax7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_atax5_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_atax3_atax_avm_readdata(in_unnamed_atax3_atax_avm_readdata),
        .in_unnamed_atax3_atax_avm_readdatavalid(in_unnamed_atax3_atax_avm_readdatavalid),
        .in_unnamed_atax3_atax_avm_waitrequest(in_unnamed_atax3_atax_avm_waitrequest),
        .in_unnamed_atax3_atax_avm_writeack(in_unnamed_atax3_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax3_atax7_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax3_atax_avm_address(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_address),
        .out_unnamed_atax3_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_burstcount),
        .out_unnamed_atax3_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_byteenable),
        .out_unnamed_atax3_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_enable),
        .out_unnamed_atax3_atax_avm_read(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_read),
        .out_unnamed_atax3_atax_avm_write(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_write),
        .out_unnamed_atax3_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,55)
    assign out_unnamed_atax3_atax_avm_address = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_address;
    assign out_unnamed_atax3_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_enable;
    assign out_unnamed_atax3_atax_avm_read = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_read;
    assign out_unnamed_atax3_atax_avm_write = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_write;
    assign out_unnamed_atax3_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_writedata;
    assign out_unnamed_atax3_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_byteenable;
    assign out_unnamed_atax3_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax3_atax7_out_unnamed_atax3_atax_avm_burstcount;

    // redist9_sync_together53_aunroll_x_in_i_valid_4(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together53_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist9_sync_together53_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist9_sync_together53_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist9_sync_together53_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist8_sync_together53_aunroll_x_in_i_valid_1_q);
            redist9_sync_together53_aunroll_x_in_i_valid_4_delay_1 <= redist9_sync_together53_aunroll_x_in_i_valid_4_delay_0;
            redist9_sync_together53_aunroll_x_in_i_valid_4_q <= redist9_sync_together53_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,71)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together53_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_0 <= '0;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_1 <= '0;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_2 <= '0;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_3 <= '0;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_q <= '0;
        end
        else
        begin
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_1 <= redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_0;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_2 <= redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_1;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_3 <= redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_2;
            redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_q <= redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_delay_3;
        end
    end

    // redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_0 <= '0;
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_1 <= '0;
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_2 <= '0;
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_q <= '0;
        end
        else
        begin
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_0 <= $unsigned(redist5_sync_together53_aunroll_x_in_c0_eni3_2_tpl_1_q);
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_1 <= redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_0;
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_2 <= redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_1;
            redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_q <= redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_delay_2;
        end
    end

    // redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_0 <= '0;
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_1 <= '0;
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_2 <= '0;
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_0 <= $unsigned(redist3_sync_together53_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_1 <= redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_0;
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_2 <= redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_1;
            redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_q <= redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg6(REG,77)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist9_sync_together53_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,78)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist9_sync_together53_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19(BLACKBOX,41)@6
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_data_out),
        .in_exitcond9(redist2_i_exitcond9_atax9_cmp_nsign_q_5_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18(BLACKBOX,37)@6
    // out out_feedback_stall_out_15@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18 (
        .in_data_in(redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_q),
        .in_dir(redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_q),
        .in_feedback_in_15(i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i1_memdep_phi3_pop1039_push15_atax19_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp26_atax12(LOGICAL,46)@6
    assign i_notcmp26_atax12_q = redist2_i_exitcond9_atax9_cmp_nsign_q_5_q ^ VCC_q;

    // redist2_i_exitcond9_atax9_cmp_nsign_q_5(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_0 <= '0;
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_1 <= '0;
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_q <= '0;
        end
        else
        begin
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_0 <= $unsigned(redist1_i_exitcond9_atax9_cmp_nsign_q_2_q);
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_1 <= redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_0;
            redist2_i_exitcond9_atax9_cmp_nsign_q_5_q <= redist2_i_exitcond9_atax9_cmp_nsign_q_5_delay_1;
        end
    end

    // redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_0 <= '0;
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_1 <= '0;
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_0 <= $unsigned(redist10_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_1_q);
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_1 <= redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_0;
            redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_q <= redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_delay_1;
        end
    end

    // redist13_i_arrayidx1_atax5_vt_join_q_4_notEnable(LOGICAL,113)
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_i_arrayidx1_atax5_vt_join_q_4_nor(LOGICAL,114)
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_nor_q = ~ (redist13_i_arrayidx1_atax5_vt_join_q_4_notEnable_q | redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena_q);

    // redist13_i_arrayidx1_atax5_vt_join_q_4_cmpReg(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_i_arrayidx1_atax5_vt_join_q_4_nor_q == 1'b1)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena_q <= $unsigned(redist13_i_arrayidx1_atax5_vt_join_q_4_cmpReg_q);
        end
    end

    // redist13_i_arrayidx1_atax5_vt_join_q_4_enaAnd(LOGICAL,116)
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_enaAnd_q = redist13_i_arrayidx1_atax5_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt(COUNTER,110)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_i <= $unsigned(redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_q = redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_i[0:0];

    // redist13_i_arrayidx1_atax5_vt_join_q_4_inputreg0(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx1_atax5_vt_join_q);
        end
    end

    // redist13_i_arrayidx1_atax5_vt_join_q_4_wraddr(REG,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_i_arrayidx1_atax5_vt_join_q_4_wraddr_q <= $unsigned(redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_q);
        end
    end

    // redist13_i_arrayidx1_atax5_vt_join_q_4_mem(DUALMEM,109)
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ia = $unsigned(redist13_i_arrayidx1_atax5_vt_join_q_4_inputreg0_q);
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_mem_aa = redist13_i_arrayidx1_atax5_vt_join_q_4_wraddr_q;
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ab = redist13_i_arrayidx1_atax5_vt_join_q_4_rdcnt_q;
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
        .intended_device_family("Arria 10")
    ) redist13_i_arrayidx1_atax5_vt_join_q_4_mem_dmem (
        .clocken1(redist13_i_arrayidx1_atax5_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_i_arrayidx1_atax5_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist13_i_arrayidx1_atax5_vt_join_q_4_mem_aa),
        .data_a(redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_i_arrayidx1_atax5_vt_join_q_4_mem_ab),
        .q_b(redist13_i_arrayidx1_atax5_vt_join_q_4_mem_iq),
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
    assign redist13_i_arrayidx1_atax5_vt_join_q_4_mem_q = redist13_i_arrayidx1_atax5_vt_join_q_4_mem_iq[63:0];

    // redist12_i_idxprom_atax4_vt_join_q_4_notEnable(LOGICAL,104)
    assign redist12_i_idxprom_atax4_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_i_idxprom_atax4_vt_join_q_4_nor(LOGICAL,105)
    assign redist12_i_idxprom_atax4_vt_join_q_4_nor_q = ~ (redist12_i_idxprom_atax4_vt_join_q_4_notEnable_q | redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena_q);

    // redist12_i_idxprom_atax4_vt_join_q_4_cmpReg(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_i_idxprom_atax4_vt_join_q_4_nor_q == 1'b1)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena_q <= $unsigned(redist12_i_idxprom_atax4_vt_join_q_4_cmpReg_q);
        end
    end

    // redist12_i_idxprom_atax4_vt_join_q_4_enaAnd(LOGICAL,107)
    assign redist12_i_idxprom_atax4_vt_join_q_4_enaAnd_q = redist12_i_idxprom_atax4_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist12_i_idxprom_atax4_vt_join_q_4_rdcnt(COUNTER,101)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_i <= $unsigned(redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_q = redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_i[0:0];

    // redist12_i_idxprom_atax4_vt_join_q_4_inputreg0(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom_atax4_vt_join_q);
        end
    end

    // redist12_i_idxprom_atax4_vt_join_q_4_wraddr(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist12_i_idxprom_atax4_vt_join_q_4_wraddr_q <= $unsigned(redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_q);
        end
    end

    // redist12_i_idxprom_atax4_vt_join_q_4_mem(DUALMEM,100)
    assign redist12_i_idxprom_atax4_vt_join_q_4_mem_ia = $unsigned(redist12_i_idxprom_atax4_vt_join_q_4_inputreg0_q);
    assign redist12_i_idxprom_atax4_vt_join_q_4_mem_aa = redist12_i_idxprom_atax4_vt_join_q_4_wraddr_q;
    assign redist12_i_idxprom_atax4_vt_join_q_4_mem_ab = redist12_i_idxprom_atax4_vt_join_q_4_rdcnt_q;
    assign redist12_i_idxprom_atax4_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
        .intended_device_family("Arria 10")
    ) redist12_i_idxprom_atax4_vt_join_q_4_mem_dmem (
        .clocken1(redist12_i_idxprom_atax4_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_i_idxprom_atax4_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist12_i_idxprom_atax4_vt_join_q_4_mem_aa),
        .data_a(redist12_i_idxprom_atax4_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_i_idxprom_atax4_vt_join_q_4_mem_ab),
        .q_b(redist12_i_idxprom_atax4_vt_join_q_4_mem_iq),
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
    assign redist12_i_idxprom_atax4_vt_join_q_4_mem_q = redist12_i_idxprom_atax4_vt_join_q_4_mem_iq[63:0];

    // sync_out_aunroll_x(GPOUT,69)@6
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = redist12_i_idxprom_atax4_vt_join_q_4_mem_q;
    assign out_c0_exi10_2_tpl = redist13_i_arrayidx1_atax5_vt_join_q_4_mem_q;
    assign out_c0_exi10_3_tpl = redist11_i_llvm_fpga_pop_i1_memdep_phi_pop936_pop14_atax6_out_data_out_4_q;
    assign out_c0_exi10_4_tpl = i_llvm_fpga_mem_unnamed_atax3_atax7_out_o_readdata;
    assign out_c0_exi10_5_tpl = redist2_i_exitcond9_atax9_cmp_nsign_q_5_q;
    assign out_c0_exi10_6_tpl = i_notcmp26_atax12_q;
    assign out_c0_exi10_7_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1039_pop15_atax18_out_data_out;
    assign out_c0_exi10_8_tpl = redist4_sync_together53_aunroll_x_in_c0_eni3_1_tpl_5_q;
    assign out_c0_exi10_9_tpl = redist6_sync_together53_aunroll_x_in_c0_eni3_2_tpl_5_q;
    assign out_c0_exi10_10_tpl = redist7_sync_together53_aunroll_x_in_c0_eni3_3_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax0 = GND_q;

endmodule
