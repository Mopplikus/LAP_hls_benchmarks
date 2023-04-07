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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter28647_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_cond80000ter28647_kernel_3mm0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi13_0_tpl,
    output wire [31:0] out_c0_exi13_1_tpl,
    output wire [0:0] out_c0_exi13_2_tpl,
    output wire [0:0] out_c0_exi13_3_tpl,
    output wire [0:0] out_c0_exi13_4_tpl,
    output wire [0:0] out_c0_exi13_5_tpl,
    output wire [0:0] out_c0_exi13_6_tpl,
    output wire [0:0] out_c0_exi13_7_tpl,
    output wire [0:0] out_c0_exi13_8_tpl,
    output wire [0:0] out_c0_exi13_9_tpl,
    output wire [0:0] out_c0_exi13_10_tpl,
    output wire [0:0] out_c0_exi13_11_tpl,
    output wire [0:0] out_c0_exi13_12_tpl,
    output wire [0:0] out_c0_exi13_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni6_0_tpl,
    input wire [0:0] in_c0_eni6_1_tpl,
    input wire [0:0] in_c0_eni6_2_tpl,
    input wire [0:0] in_c0_eni6_3_tpl,
    input wire [0:0] in_c0_eni6_4_tpl,
    input wire [0:0] in_c0_eni6_5_tpl,
    input wire [0:0] in_c0_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_041_q;
    wire [31:0] c_i32_142_q;
    wire [4:0] c_i5_145_q;
    wire [4:0] c_i5_843_q;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm11_a;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm11_b;
    logic [5:0] i_fpga_indvars_iv_next15_kernel_3mm11_o;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm11_q;
    wire [32:0] i_inc32_kernel_3mm4_a;
    wire [32:0] i_inc32_kernel_3mm4_b;
    logic [32:0] i_inc32_kernel_3mm4_o;
    wire [32:0] i_inc32_kernel_3mm4_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_feedback_stall_out_23;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_valid_out_22;
    wire [0:0] i_notcmp73_kernel_3mm9_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm11_sel_x_b;
    wire [31:0] bgTrunc_i_inc32_kernel_3mm4_sel_x_b;
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
    wire [0:0] i_exitcond16_kernel_3mm6_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q;
    reg [0:0] redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1_q;
    reg [0:0] redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1_q;
    reg [0:0] redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1_q;
    reg [0:0] redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1_q;
    reg [0:0] redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1_q;


    // c_i5_145(CONSTANT,25)
    assign c_i5_145_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next15_kernel_3mm11(ADD,29)@1
    assign i_fpga_indvars_iv_next15_kernel_3mm11_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_data_out};
    assign i_fpga_indvars_iv_next15_kernel_3mm11_b = {1'b0, c_i5_145_q};
    assign i_fpga_indvars_iv_next15_kernel_3mm11_o = $unsigned(i_fpga_indvars_iv_next15_kernel_3mm11_a) + $unsigned(i_fpga_indvars_iv_next15_kernel_3mm11_b);
    assign i_fpga_indvars_iv_next15_kernel_3mm11_q = i_fpga_indvars_iv_next15_kernel_3mm11_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm11_sel_x(BITSELECT,52)@1
    assign bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm11_sel_x_b = i_fpga_indvars_iv_next15_kernel_3mm11_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12(BLACKBOX,46)@1
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_0 thei_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm11_sel_x_b),
        .in_exitcond16(i_exitcond16_kernel_3mm6_cmp_nsign_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_843(CONSTANT,26)
    assign c_i5_843_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5(BLACKBOX,38)@1
    // out out_feedback_stall_out_22@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5 (
        .in_data_in(c_i5_843_q),
        .in_dir(in_c0_eni6_1_tpl),
        .in_feedback_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm12_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_kernel_3mm6_cmp_nsign(LOGICAL,73)@1
    assign i_exitcond16_kernel_3mm6_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm5_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10(BLACKBOX,44)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond76_0 thei_llvm_fpga_push_i1_notexitcond76_kernel_3mm10 (
        .in_data_in(i_exitcond16_kernel_3mm6_cmp_nsign_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going75_kernel_3mm2(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going75_0 thei_llvm_fpga_pipeline_keep_going75_kernel_3mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_out_14),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond76_kernel_3mm10_out_feedback_valid_out_14),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,57)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1_q <= $unsigned(in_c0_eni6_6_tpl);
        end
    end

    // redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1_q <= $unsigned(in_c0_eni6_5_tpl);
        end
    end

    // redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1_q <= $unsigned(in_c0_eni6_4_tpl);
        end
    end

    // redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1_q <= $unsigned(in_c0_eni6_3_tpl);
        end
    end

    // redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1_q <= $unsigned(in_c0_eni6_2_tpl);
        end
    end

    // valid_fanout_reg11(REG,68)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,69)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22(BLACKBOX,42)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_0 thei_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q <= $unsigned(in_c0_eni6_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21(BLACKBOX,35)@2
    // out out_feedback_stall_out_28@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21 (
        .in_data_in(redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi5_pop2099_push28_kernel_3mm22_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,66)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,67)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20(BLACKBOX,41)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19(BLACKBOX,34)@2
    // out out_feedback_stall_out_27@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19 (
        .in_data_in(redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi3_pop1995_push27_kernel_3mm20_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,64)@1 + 1
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

    // valid_fanout_reg8(REG,65)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18(BLACKBOX,40)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17(BLACKBOX,33)@2
    // out out_feedback_stall_out_26@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17 (
        .in_data_in(redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_memdep_phi2_pop1891_push26_kernel_3mm18_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,62)@1 + 1
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

    // valid_fanout_reg6(REG,63)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16(BLACKBOX,43)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_0 thei_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15(BLACKBOX,36)@2
    // out out_feedback_stall_out_25@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15 (
        .in_data_in(redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_memdep_phi_pop1787_push25_kernel_3mm16_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,60)@1 + 1
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

    // valid_fanout_reg4(REG,61)@1 + 1
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

    // i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14(BLACKBOX,39)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    kernel_3mm_i_llvm_fpga_push_i1_forked8183_push24_0 thei_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14 (
        .in_data_in(i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_data_out),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13(BLACKBOX,32)@2
    // out out_feedback_stall_out_24@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_forked8183_pop24_0 thei_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13 (
        .in_data_in(redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_forked8183_push24_kernel_3mm14_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp73_kernel_3mm9(LOGICAL,47)@2
    assign i_notcmp73_kernel_3mm9_q = redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q <= $unsigned(i_exitcond16_kernel_3mm6_cmp_nsign_q);
        end
    end

    // valid_fanout_reg1(REG,58)@1 + 1
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

    // valid_fanout_reg2(REG,59)@1 + 1
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

    // c_i32_142(CONSTANT,24)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc32_kernel_3mm4(ADD,30)@2
    assign i_inc32_kernel_3mm4_a = {1'b0, i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_data_out};
    assign i_inc32_kernel_3mm4_b = {1'b0, c_i32_142_q};
    assign i_inc32_kernel_3mm4_o = $unsigned(i_inc32_kernel_3mm4_a) + $unsigned(i_inc32_kernel_3mm4_b);
    assign i_inc32_kernel_3mm4_q = i_inc32_kernel_3mm4_o[32:0];

    // bgTrunc_i_inc32_kernel_3mm4_sel_x(BITSELECT,53)@2
    assign bgTrunc_i_inc32_kernel_3mm4_sel_x_b = i_inc32_kernel_3mm4_q[31:0];

    // i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8(BLACKBOX,45)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_060_push23_0 thei_llvm_fpga_push_i32_i_060_push23_kernel_3mm8 (
        .in_data_in(bgTrunc_i_inc32_kernel_3mm4_sel_x_b),
        .in_exitcond16(redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_041(CONSTANT,23)
    assign c_i32_041_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3(BLACKBOX,37)@2
    // out out_feedback_stall_out_23@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_060_pop23_0 thei_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3 (
        .in_data_in(c_i32_041_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm8_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,55)@2
    assign out_c0_exi13_0_tpl = GND_q;
    assign out_c0_exi13_1_tpl = i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm3_out_data_out;
    assign out_c0_exi13_2_tpl = redist0_i_exitcond16_kernel_3mm6_cmp_nsign_q_1_q;
    assign out_c0_exi13_3_tpl = i_notcmp73_kernel_3mm9_q;
    assign out_c0_exi13_4_tpl = i_llvm_fpga_pop_i1_forked8183_pop24_kernel_3mm13_out_data_out;
    assign out_c0_exi13_5_tpl = i_llvm_fpga_pop_i1_memdep_phi_pop1787_pop25_kernel_3mm15_out_data_out;
    assign out_c0_exi13_6_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1891_pop26_kernel_3mm17_out_data_out;
    assign out_c0_exi13_7_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1995_pop27_kernel_3mm19_out_data_out;
    assign out_c0_exi13_8_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop2099_pop28_kernel_3mm21_out_data_out;
    assign out_c0_exi13_9_tpl = redist2_sync_together65_aunroll_x_in_c0_eni6_2_tpl_1_q;
    assign out_c0_exi13_10_tpl = redist3_sync_together65_aunroll_x_in_c0_eni6_3_tpl_1_q;
    assign out_c0_exi13_11_tpl = redist4_sync_together65_aunroll_x_in_c0_eni6_4_tpl_1_q;
    assign out_c0_exi13_12_tpl = redist5_sync_together65_aunroll_x_in_c0_eni6_5_tpl_1_q;
    assign out_c0_exi13_13_tpl = redist6_sync_together65_aunroll_x_in_c0_eni6_6_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

endmodule
