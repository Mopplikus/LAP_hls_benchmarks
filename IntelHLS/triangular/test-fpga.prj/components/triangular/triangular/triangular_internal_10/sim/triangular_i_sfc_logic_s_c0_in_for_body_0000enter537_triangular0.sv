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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_triangulars_c0_enter537_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body_0000enter537_triangular0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi11_0_tpl,
    output wire [32:0] out_c0_exi11_1_tpl,
    output wire [31:0] out_c0_exi11_2_tpl,
    output wire [31:0] out_c0_exi11_3_tpl,
    output wire [0:0] out_c0_exi11_4_tpl,
    output wire [0:0] out_c0_exi11_5_tpl,
    output wire [0:0] out_c0_exi11_6_tpl,
    output wire [31:0] out_c0_exi11_7_tpl,
    output wire [31:0] out_c0_exi11_8_tpl,
    output wire [0:0] out_c0_exi11_9_tpl,
    output wire [31:0] out_c0_exi11_10_tpl,
    output wire [31:0] out_c0_exi11_11_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_060_q;
    wire [31:0] c_i32_162_q;
    wire [31:0] c_i32_263_q;
    wire [32:0] c_i33_161_q;
    wire [32:0] c_i33_undef58_q;
    wire [33:0] i_cmp513_triangular20_a;
    wire [33:0] i_cmp513_triangular20_b;
    logic [33:0] i_cmp513_triangular20_o;
    wire [0:0] i_cmp513_triangular20_c;
    wire [0:0] i_fpga_indvars_iv9_replace_phi_triangular5_s;
    reg [32:0] i_fpga_indvars_iv9_replace_phi_triangular5_q;
    wire [33:0] i_fpga_indvars_iv_next10_triangular31_a;
    wire [33:0] i_fpga_indvars_iv_next10_triangular31_b;
    logic [33:0] i_fpga_indvars_iv_next10_triangular31_o;
    wire [33:0] i_fpga_indvars_iv_next10_triangular31_q;
    wire [32:0] i_fpga_indvars_iv_next_triangular33_a;
    wire [32:0] i_fpga_indvars_iv_next_triangular33_b;
    logic [32:0] i_fpga_indvars_iv_next_triangular33_o;
    wire [32:0] i_fpga_indvars_iv_next_triangular33_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_triangular8_s;
    reg [31:0] i_fpga_indvars_iv_replace_phi_triangular8_q;
    wire [0:0] i_i_018_in_replace_phi_triangular11_s;
    reg [31:0] i_i_018_in_replace_phi_triangular11_q;
    wire [32:0] i_i_018_triangular18_a;
    wire [32:0] i_i_018_triangular18_b;
    logic [32:0] i_i_018_triangular18_o;
    wire [32:0] i_i_018_triangular18_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular22_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular26_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2312_triangular9_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_triangular2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_triangular2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_valid_out_10;
    wire [0:0] i_notcmp20_triangular29_q;
    wire [0:0] i_smin_triangular14_s;
    reg [31:0] i_smin_triangular14_q;
    wire [32:0] i_sub3_triangular19_a;
    wire [32:0] i_sub3_triangular19_b;
    logic [32:0] i_sub3_triangular19_o;
    wire [32:0] i_sub3_triangular19_q;
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
    wire [0:0] i_unnamed_triangular27_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next10_triangular31_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next_triangular33_sel_x_b;
    wire [31:0] bgTrunc_i_i_018_triangular18_sel_x_b;
    wire [31:0] bgTrunc_i_sub3_triangular19_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_triangular15_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_triangular17_sel_x_b;
    wire [31:0] c_i32_162_recast_x_q;
    wire [32:0] i_unnamed_triangular16_sel_x_b;
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
    wire [0:0] i_exitcond11_triangular24_cmp_nsign_q;
    wire [0:0] i_unnamed_triangular12_cmp_sign_q;
    reg [0:0] redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q;
    reg [31:0] redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_q;
    reg [31:0] redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_delay_0;
    reg [31:0] redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_q;
    reg [31:0] redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_delay_0;
    reg [0:0] redist4_sync_together84_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q;
    reg [31:0] redist6_bgTrunc_i_i_018_triangular18_sel_x_b_1_q;
    reg [0:0] redist7_i_unnamed_triangular27_q_1_q;
    reg [0:0] redist8_i_unnamed_triangular27_q_2_q;
    reg [31:0] redist9_i_unnamed_triangular16_vt_select_31_b_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3(BLACKBOX,47)@1
    triangular_i_llvm_fpga_ffwd_dest_i33_unnamed_8_triangular0 thei_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_161(CONSTANT,32)
    assign c_i33_161_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_triangular31(ADD,38)@1
    assign i_fpga_indvars_iv_next10_triangular31_a = {1'b0, i_fpga_indvars_iv9_replace_phi_triangular5_q};
    assign i_fpga_indvars_iv_next10_triangular31_b = {1'b0, c_i33_161_q};
    assign i_fpga_indvars_iv_next10_triangular31_o = $unsigned(i_fpga_indvars_iv_next10_triangular31_a) + $unsigned(i_fpga_indvars_iv_next10_triangular31_b);
    assign i_fpga_indvars_iv_next10_triangular31_q = i_fpga_indvars_iv_next10_triangular31_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next10_triangular31_sel_x(BITSELECT,82)@1
    assign bgTrunc_i_fpga_indvars_iv_next10_triangular31_sel_x_b = i_fpga_indvars_iv_next10_triangular31_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32(BLACKBOX,59)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    triangular_i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_0 thei_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next10_triangular31_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_triangular13(i_unnamed_triangular27_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef58(CONSTANT,33)
    assign c_i33_undef58_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4(BLACKBOX,53)@1
    // out out_feedback_stall_out_10@20000000
    triangular_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4 (
        .in_data_in(c_i33_undef58_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv9_push10_triangular32_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv9_replace_phi_triangular5(MUX,37)@1
    assign i_fpga_indvars_iv9_replace_phi_triangular5_s = in_c0_eni3_1_tpl;
    always @(i_fpga_indvars_iv9_replace_phi_triangular5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv9_replace_phi_triangular5_s)
            1'b0 : i_fpga_indvars_iv9_replace_phi_triangular5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop10_triangular4_out_data_out;
            1'b1 : i_fpga_indvars_iv9_replace_phi_triangular5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_triangular8_triangular3_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv9_replace_phi_triangular5_q = 33'b0;
        endcase
    end

    // i_exitcond11_triangular24_cmp_nsign(LOGICAL,114)@1
    assign i_exitcond11_triangular24_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv9_replace_phi_triangular5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular26(BLACKBOX,44)@1
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp1615_0 thei_llvm_fpga_ffwd_dest_i1_cmp1615_triangular26 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular26_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular27(LOGICAL,71)@1
    assign i_unnamed_triangular27_q = i_llvm_fpga_ffwd_dest_i1_cmp1615_triangular26_out_dest_data_out_1_0 & i_exitcond11_triangular24_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond22_triangular30(BLACKBOX,54)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond22_0 thei_llvm_fpga_push_i1_notexitcond22_triangular30 (
        .in_data_in(i_unnamed_triangular27_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going21_triangular2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going21_triangular2(BLACKBOX,48)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going21_0 thei_llvm_fpga_pipeline_keep_going21_triangular2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond22_triangular30_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going21_triangular2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going21_triangular2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_triangular2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going21_triangular2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,76)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going21_triangular2_out_pipeline_valid_out;

    // redist4_sync_together84_aunroll_x_in_i_valid_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_delay_0 <= '0;
            redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_q <= redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_delay_0;
        end
    end

    // redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_delay_0 <= '0;
            redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_delay_0 <= $unsigned(in_c0_eni3_2_tpl);
            redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_q <= redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_delay_0;
        end
    end

    // redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q <= $unsigned(redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q);
        end
    end

    // valid_fanout_reg10(REG,104)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,105)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38(BLACKBOX,58)@3
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    triangular_i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_0 thei_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_data_out),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_triangular13(redist8_i_unnamed_triangular27_q_2_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37(BLACKBOX,52)@3
    // out out_feedback_stall_out_15@20000000
    triangular_i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37 (
        .in_data_in(redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_q),
        .in_dir(redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_reorder_limiter_enter30_push15_triangular38_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,102)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,103)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext28_push14_triangular36(BLACKBOX,57)@3
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    triangular_i_llvm_fpga_push_i32_lim_ext28_push14_0 thei_llvm_fpga_push_i32_lim_ext28_push14_triangular36 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_triangular13(redist8_i_unnamed_triangular27_q_2_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35(BLACKBOX,51)@3
    // out out_feedback_stall_out_14@20000000
    triangular_i_llvm_fpga_pop_i32_lim_ext28_pop14_0 thei_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35 (
        .in_data_in(redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_q),
        .in_dir(redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_lim_ext28_push14_triangular36_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp20_triangular29(LOGICAL,60)@3
    assign i_notcmp20_triangular29_q = redist8_i_unnamed_triangular27_q_2_q ^ VCC_q;

    // redist7_i_unnamed_triangular27_q_1(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_triangular27_q_1_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_triangular27_q_1_q <= $unsigned(i_unnamed_triangular27_q);
        end
    end

    // redist8_i_unnamed_triangular27_q_2(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_triangular27_q_2_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_triangular27_q_2_q <= $unsigned(redist7_i_unnamed_triangular27_q_1_q);
        end
    end

    // c_i32_162_recast_x(CONSTANT,89)
    assign c_i32_162_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp513_triangular20(COMPARE,35)@3
    assign i_cmp513_triangular20_a = $unsigned({{2{c_i32_162_recast_x_q[31]}}, c_i32_162_recast_x_q});
    assign i_cmp513_triangular20_b = $unsigned({{2{redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q[31]}}, redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q});
    assign i_cmp513_triangular20_o = $unsigned($signed(i_cmp513_triangular20_a) - $signed(i_cmp513_triangular20_b));
    assign i_cmp513_triangular20_c[0] = i_cmp513_triangular20_o[33];

    // valid_fanout_reg5(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular22(BLACKBOX,43)@3
    triangular_i_llvm_fpga_ffwd_dest_i1_cmp1614_0 thei_llvm_fpga_ffwd_dest_i1_cmp1614_triangular22 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular22_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_triangular23(LOGICAL,70)@3
    assign i_unnamed_triangular23_q = i_llvm_fpga_ffwd_dest_i1_cmp1614_triangular22_out_dest_data_out_1_0 & i_cmp513_triangular20_c;

    // c_i32_263(CONSTANT,30)
    assign c_i32_263_q = $unsigned(32'b11111111111111111111111111111110);

    // valid_fanout_reg3(REG,97)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n2312_triangular9(BLACKBOX,45)@2
    triangular_i_llvm_fpga_ffwd_dest_i32_n2312_0 thei_llvm_fpga_ffwd_dest_i32_n2312_triangular9 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_n2312_triangular9_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,98)@1 + 1
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

    // valid_fanout_reg6(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_162(CONSTANT,29)
    assign c_i32_162_q = $unsigned(32'b11111111111111111111111111111111);

    // i_i_018_triangular18(ADD,42)@2
    assign i_i_018_triangular18_a = {1'b0, i_i_018_in_replace_phi_triangular11_q};
    assign i_i_018_triangular18_b = {1'b0, c_i32_162_q};
    assign i_i_018_triangular18_o = $unsigned(i_i_018_triangular18_a) + $unsigned(i_i_018_triangular18_b);
    assign i_i_018_triangular18_q = i_i_018_triangular18_o[32:0];

    // bgTrunc_i_i_018_triangular18_sel_x(BITSELECT,84)@2
    assign bgTrunc_i_i_018_triangular18_sel_x_b = i_i_018_triangular18_q[31:0];

    // i_llvm_fpga_push_i32_i_018_in_push12_triangular28(BLACKBOX,56)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    triangular_i_llvm_fpga_push_i32_i_018_in_push12_0 thei_llvm_fpga_push_i32_i_018_in_push12_triangular28 (
        .in_data_in(bgTrunc_i_i_018_triangular18_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_triangular13(redist7_i_unnamed_triangular27_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_060(CONSTANT,28)
    assign c_i32_060_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10(BLACKBOX,50)@2
    // out out_feedback_stall_out_12@20000000
    triangular_i_llvm_fpga_pop_i32_i_018_in_pop12_0 thei_llvm_fpga_pop_i32_i_018_in_pop12_triangular10 (
        .in_data_in(c_i32_060_q),
        .in_dir(redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_i_018_in_push12_triangular28_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_i_018_in_replace_phi_triangular11(MUX,41)@2
    assign i_i_018_in_replace_phi_triangular11_s = redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q;
    always @(i_i_018_in_replace_phi_triangular11_s or i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_data_out or i_llvm_fpga_ffwd_dest_i32_n2312_triangular9_out_dest_data_out_0_0)
    begin
        unique case (i_i_018_in_replace_phi_triangular11_s)
            1'b0 : i_i_018_in_replace_phi_triangular11_q = i_llvm_fpga_pop_i32_i_018_in_pop12_triangular10_out_data_out;
            1'b1 : i_i_018_in_replace_phi_triangular11_q = i_llvm_fpga_ffwd_dest_i32_n2312_triangular9_out_dest_data_out_0_0;
            default : i_i_018_in_replace_phi_triangular11_q = 32'b0;
        endcase
    end

    // i_sub3_triangular19(ADD,62)@2
    assign i_sub3_triangular19_a = {1'b0, i_i_018_in_replace_phi_triangular11_q};
    assign i_sub3_triangular19_b = {1'b0, c_i32_263_q};
    assign i_sub3_triangular19_o = $unsigned(i_sub3_triangular19_a) + $unsigned(i_sub3_triangular19_b);
    assign i_sub3_triangular19_q = i_sub3_triangular19_o[32:0];

    // bgTrunc_i_sub3_triangular19_sel_x(BITSELECT,85)@2
    assign bgTrunc_i_sub3_triangular19_sel_x_b = i_sub3_triangular19_q[31:0];

    // redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub3_triangular19_sel_x_b);
        end
    end

    // redist6_bgTrunc_i_i_018_triangular18_sel_x_b_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_i_018_triangular18_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_i_018_triangular18_sel_x_b_1_q <= $unsigned(bgTrunc_i_i_018_triangular18_sel_x_b);
        end
    end

    // i_unnamed_triangular12_cmp_sign(LOGICAL,115)@2
    assign i_unnamed_triangular12_cmp_sign_q = $unsigned(i_fpga_indvars_iv_replace_phi_triangular8_q[31:31]);

    // i_smin_triangular14(MUX,61)@2
    assign i_smin_triangular14_s = i_unnamed_triangular12_cmp_sign_q;
    always @(i_smin_triangular14_s or c_i32_060_q or i_fpga_indvars_iv_replace_phi_triangular8_q)
    begin
        unique case (i_smin_triangular14_s)
            1'b0 : i_smin_triangular14_q = c_i32_060_q;
            1'b1 : i_smin_triangular14_q = i_fpga_indvars_iv_replace_phi_triangular8_q;
            default : i_smin_triangular14_q = 32'b0;
        endcase
    end

    // valid_fanout_reg1(REG,95)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6(BLACKBOX,46)@2
    triangular_i_llvm_fpga_ffwd_dest_i32_unnamed_9_triangular0 thei_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,96)@1 + 1
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

    // valid_fanout_reg7(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_fpga_indvars_iv_next_triangular33(ADD,39)@2
    assign i_fpga_indvars_iv_next_triangular33_a = {1'b0, i_fpga_indvars_iv_replace_phi_triangular8_q};
    assign i_fpga_indvars_iv_next_triangular33_b = {1'b0, c_i32_162_q};
    assign i_fpga_indvars_iv_next_triangular33_o = $unsigned(i_fpga_indvars_iv_next_triangular33_a) + $unsigned(i_fpga_indvars_iv_next_triangular33_b);
    assign i_fpga_indvars_iv_next_triangular33_q = i_fpga_indvars_iv_next_triangular33_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next_triangular33_sel_x(BITSELECT,83)@2
    assign bgTrunc_i_fpga_indvars_iv_next_triangular33_sel_x_b = i_fpga_indvars_iv_next_triangular33_q[31:0];

    // i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34(BLACKBOX,55)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    triangular_i_llvm_fpga_push_i32_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_triangular33_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_triangular13(redist7_i_unnamed_triangular27_q_1_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7(BLACKBOX,49)@2
    // out out_feedback_stall_out_11@20000000
    triangular_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7 (
        .in_data_in(c_i32_060_q),
        .in_dir(redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_fpga_indvars_iv_push11_triangular34_out_feedback_valid_out_11),
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

    // i_fpga_indvars_iv_replace_phi_triangular8(MUX,40)@2
    assign i_fpga_indvars_iv_replace_phi_triangular8_s = redist0_sync_together84_aunroll_x_in_c0_eni3_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_triangular8_s or i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_triangular8_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_triangular8_q = i_llvm_fpga_pop_i32_fpga_indvars_iv_pop11_triangular7_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_triangular8_q = i_llvm_fpga_ffwd_dest_i32_unnamed_triangular9_triangular6_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv_replace_phi_triangular8_q = 32'b0;
        endcase
    end

    // i_unnamed_triangular15(SUB,64)@2
    assign i_unnamed_triangular15_a = {1'b0, i_fpga_indvars_iv_replace_phi_triangular8_q};
    assign i_unnamed_triangular15_b = {1'b0, i_smin_triangular14_q};
    assign i_unnamed_triangular15_o = $unsigned(i_unnamed_triangular15_a) - $unsigned(i_unnamed_triangular15_b);
    assign i_unnamed_triangular15_q = i_unnamed_triangular15_o[32:0];

    // bgTrunc_i_unnamed_triangular15_sel_x(BITSELECT,86)@2
    assign bgTrunc_i_unnamed_triangular15_sel_x_b = $unsigned(i_unnamed_triangular15_q[31:0]);

    // i_unnamed_triangular16_sel_x(BITSELECT,91)@2
    assign i_unnamed_triangular16_sel_x_b = {1'b0, bgTrunc_i_unnamed_triangular15_sel_x_b[31:0]};

    // i_unnamed_triangular16_vt_select_31(BITSELECT,68)@2
    assign i_unnamed_triangular16_vt_select_31_b = i_unnamed_triangular16_sel_x_b[31:0];

    // redist9_i_unnamed_triangular16_vt_select_31_b_1(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_unnamed_triangular16_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist9_i_unnamed_triangular16_vt_select_31_b_1_q <= $unsigned(i_unnamed_triangular16_vt_select_31_b);
        end
    end

    // i_unnamed_triangular16_vt_join(BITJOIN,67)@3
    assign i_unnamed_triangular16_vt_join_q = {GND_q, redist9_i_unnamed_triangular16_vt_select_31_b_1_q};

    // i_unnamed_triangular17(ADD,69)@3
    assign i_unnamed_triangular17_a = {1'b0, i_unnamed_triangular16_vt_join_q};
    assign i_unnamed_triangular17_b = {1'b0, c_i33_161_q};
    assign i_unnamed_triangular17_o = $unsigned(i_unnamed_triangular17_a) + $unsigned(i_unnamed_triangular17_b);
    assign i_unnamed_triangular17_q = i_unnamed_triangular17_o[33:0];

    // bgTrunc_i_unnamed_triangular17_sel_x(BITSELECT,87)@3
    assign bgTrunc_i_unnamed_triangular17_sel_x_b = i_unnamed_triangular17_q[32:0];

    // sync_out_aunroll_x(GPOUT,92)@3
    assign out_c0_exi11_0_tpl = GND_q;
    assign out_c0_exi11_1_tpl = bgTrunc_i_unnamed_triangular17_sel_x_b;
    assign out_c0_exi11_2_tpl = redist6_bgTrunc_i_i_018_triangular18_sel_x_b_1_q;
    assign out_c0_exi11_3_tpl = redist5_bgTrunc_i_sub3_triangular19_sel_x_b_1_q;
    assign out_c0_exi11_4_tpl = i_unnamed_triangular23_q;
    assign out_c0_exi11_5_tpl = redist8_i_unnamed_triangular27_q_2_q;
    assign out_c0_exi11_6_tpl = i_notcmp20_triangular29_q;
    assign out_c0_exi11_7_tpl = i_llvm_fpga_pop_i32_lim_ext28_pop14_triangular35_out_data_out;
    assign out_c0_exi11_8_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter30_pop15_triangular37_out_data_out;
    assign out_c0_exi11_9_tpl = redist1_sync_together84_aunroll_x_in_c0_eni3_1_tpl_2_q;
    assign out_c0_exi11_10_tpl = redist2_sync_together84_aunroll_x_in_c0_eni3_2_tpl_2_q;
    assign out_c0_exi11_11_tpl = redist3_sync_together84_aunroll_x_in_c0_eni3_3_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;

endmodule
