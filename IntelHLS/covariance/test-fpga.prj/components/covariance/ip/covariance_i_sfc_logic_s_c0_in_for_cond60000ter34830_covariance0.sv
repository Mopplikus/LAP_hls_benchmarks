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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond65_preheader_lr_ph_covariances_c0_enter34830_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond60000ter34830_covariance0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi8359_0_tpl,
    output wire [32:0] out_c0_exi8359_1_tpl,
    output wire [0:0] out_c0_exi8359_2_tpl,
    output wire [0:0] out_c0_exi8359_3_tpl,
    output wire [31:0] out_c0_exi8359_4_tpl,
    output wire [31:0] out_c0_exi8359_5_tpl,
    output wire [31:0] out_c0_exi8359_6_tpl,
    output wire [31:0] out_c0_exi8359_7_tpl,
    output wire [31:0] out_c0_exi8359_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni3347_0_tpl,
    input wire [0:0] in_c0_eni3347_1_tpl,
    input wire [31:0] in_c0_eni3347_2_tpl,
    input wire [31:0] in_c0_eni3347_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_039_q;
    wire [31:0] c_i32_140_q;
    wire [32:0] c_i33_135_q;
    wire [32:0] c_i33_3034_q;
    wire [5:0] c_i6_138_q;
    wire [5:0] c_i6_3036_q;
    wire [33:0] i_fpga_indvars_iv_next21_covariance4_a;
    wire [33:0] i_fpga_indvars_iv_next21_covariance4_b;
    logic [33:0] i_fpga_indvars_iv_next21_covariance4_o;
    wire [33:0] i_fpga_indvars_iv_next21_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next26_covariance11_a;
    wire [6:0] i_fpga_indvars_iv_next26_covariance11_b;
    logic [6:0] i_fpga_indvars_iv_next26_covariance11_o;
    wire [6:0] i_fpga_indvars_iv_next26_covariance11_q;
    wire [32:0] i_inc91_covariance14_a;
    wire [32:0] i_inc91_covariance14_b;
    logic [32:0] i_inc91_covariance14_o;
    wire [32:0] i_inc91_covariance14_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_feedback_stall_out_37;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_feedback_stall_out_34;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_valid_out_33;
    wire [0:0] i_notcmp63_covariance9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next21_covariance4_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next26_covariance11_sel_x_b;
    wire [31:0] bgTrunc_i_inc91_covariance14_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond27_covariance6_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q;
    reg [31:0] redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1_q;
    reg [31:0] redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1_q;


    // c_i6_138(CONSTANT,24)
    assign c_i6_138_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next26_covariance11(ADD,29)@1
    assign i_fpga_indvars_iv_next26_covariance11_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_data_out};
    assign i_fpga_indvars_iv_next26_covariance11_b = {1'b0, c_i6_138_q};
    assign i_fpga_indvars_iv_next26_covariance11_o = $unsigned(i_fpga_indvars_iv_next26_covariance11_a) + $unsigned(i_fpga_indvars_iv_next26_covariance11_b);
    assign i_fpga_indvars_iv_next26_covariance11_q = i_fpga_indvars_iv_next26_covariance11_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next26_covariance11_sel_x(BITSELECT,49)@1
    assign bgTrunc_i_fpga_indvars_iv_next26_covariance11_sel_x_b = i_fpga_indvars_iv_next26_covariance11_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12(BLACKBOX,42)@1
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_0 thei_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next26_covariance11_sel_x_b),
        .in_exitcond27(i_exitcond27_covariance6_cmp_nsign_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3036(CONSTANT,25)
    assign c_i6_3036_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5(BLACKBOX,36)@1
    // out out_feedback_stall_out_33@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5 (
        .in_data_in(c_i6_3036_q),
        .in_dir(in_c0_eni3347_1_tpl),
        .in_feedback_in_33(i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i6_fpga_indvars_iv25_push33_covariance12_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond27_covariance6_cmp_nsign(LOGICAL,67)@1
    assign i_exitcond27_covariance6_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv25_pop33_covariance5_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond66_covariance10(BLACKBOX,37)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond66_0 thei_llvm_fpga_push_i1_notexitcond66_covariance10 (
        .in_data_in(i_exitcond27_covariance6_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going65_covariance2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going65_covariance2(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going65_0 thei_llvm_fpga_pipeline_keep_going65_covariance2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond66_covariance10_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going65_covariance2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going65_covariance2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going65_covariance2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going65_covariance2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going65_covariance2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,54)@1 + 1
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

    // redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1(DELAY,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1_q <= $unsigned(in_c0_eni3347_2_tpl);
        end
    end

    // redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1(DELAY,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1_q <= $unsigned(in_c0_eni3347_3_tpl);
        end
    end

    // valid_fanout_reg7(REG,61)@1 + 1
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

    // valid_fanout_reg8(REG,62)@1 + 1
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

    // i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19(BLACKBOX,40)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    covariance_i_llvm_fpga_push_i32_reorder_0000er_enter142_push37_0 thei_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_data_out),
        .in_exitcond27(redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q <= $unsigned(in_c0_eni3347_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18(BLACKBOX,34)@2
    // out out_feedback_stall_out_37@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18 (
        .in_data_in(redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_reorder_limiter_enter142_push37_covariance19_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,59)@1 + 1
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

    // valid_fanout_reg6(REG,60)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext137_push36_covariance17(BLACKBOX,39)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext137_push36_0 thei_llvm_fpga_push_i32_lim_ext137_push36_covariance17 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_data_out),
        .in_exitcond27(redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16(BLACKBOX,33)@2
    // out out_feedback_stall_out_36@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext137_pop36_0 thei_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16 (
        .in_data_in(redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_lim_ext137_push36_covariance17_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,57)@1 + 1
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

    // valid_fanout_reg4(REG,58)@1 + 1
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

    // c_i32_140(CONSTANT,21)
    assign c_i32_140_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc91_covariance14(ADD,30)@2
    assign i_inc91_covariance14_a = {1'b0, i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_data_out};
    assign i_inc91_covariance14_b = {1'b0, c_i32_140_q};
    assign i_inc91_covariance14_o = $unsigned(i_inc91_covariance14_a) + $unsigned(i_inc91_covariance14_b);
    assign i_inc91_covariance14_q = i_inc91_covariance14_o[32:0];

    // bgTrunc_i_inc91_covariance14_sel_x(BITSELECT,50)@2
    assign bgTrunc_i_inc91_covariance14_sel_x_b = i_inc91_covariance14_q[31:0];

    // i_llvm_fpga_push_i32_i56_057_push35_covariance15(BLACKBOX,38)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    covariance_i_llvm_fpga_push_i32_i56_057_push35_0 thei_llvm_fpga_push_i32_i56_057_push35_covariance15 (
        .in_data_in(bgTrunc_i_inc91_covariance14_sel_x_b),
        .in_exitcond27(redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_039(CONSTANT,20)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i56_057_pop35_covariance13(BLACKBOX,32)@2
    // out out_feedback_stall_out_35@20000000
    covariance_i_llvm_fpga_pop_i32_i56_057_pop35_0 thei_llvm_fpga_pop_i32_i56_057_pop35_covariance13 (
        .in_data_in(c_i32_039_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_i56_057_push35_covariance15_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp63_covariance9(LOGICAL,43)@2
    assign i_notcmp63_covariance9_q = redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond27_covariance6_cmp_nsign_q_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q <= $unsigned(i_exitcond27_covariance6_cmp_nsign_q);
        end
    end

    // valid_fanout_reg1(REG,55)@1 + 1
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

    // valid_fanout_reg2(REG,56)@1 + 1
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

    // c_i33_135(CONSTANT,22)
    assign c_i33_135_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next21_covariance4(ADD,28)@2
    assign i_fpga_indvars_iv_next21_covariance4_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_data_out};
    assign i_fpga_indvars_iv_next21_covariance4_b = {1'b0, c_i33_135_q};
    assign i_fpga_indvars_iv_next21_covariance4_o = $unsigned(i_fpga_indvars_iv_next21_covariance4_a) + $unsigned(i_fpga_indvars_iv_next21_covariance4_b);
    assign i_fpga_indvars_iv_next21_covariance4_q = i_fpga_indvars_iv_next21_covariance4_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next21_covariance4_sel_x(BITSELECT,48)@2
    assign bgTrunc_i_fpga_indvars_iv_next21_covariance4_sel_x_b = i_fpga_indvars_iv_next21_covariance4_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8(BLACKBOX,41)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    covariance_i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_0 thei_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_covariance4_sel_x_b),
        .in_exitcond27(redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_3034(CONSTANT,23)
    assign c_i33_3034_q = $unsigned(33'b000000000000000000000000000011110);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3(BLACKBOX,35)@2
    // out out_feedback_stall_out_34@20000000
    covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3 (
        .in_data_in(c_i33_3034_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni3347_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i33_fpga_indvars_iv20_push34_covariance8_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,52)@2
    assign out_c0_exi8359_0_tpl = GND_q;
    assign out_c0_exi8359_1_tpl = i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop34_covariance3_out_data_out;
    assign out_c0_exi8359_2_tpl = redist0_i_exitcond27_covariance6_cmp_nsign_q_1_q;
    assign out_c0_exi8359_3_tpl = i_notcmp63_covariance9_q;
    assign out_c0_exi8359_4_tpl = i_llvm_fpga_pop_i32_i56_057_pop35_covariance13_out_data_out;
    assign out_c0_exi8359_5_tpl = i_llvm_fpga_pop_i32_lim_ext137_pop36_covariance16_out_data_out;
    assign out_c0_exi8359_6_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter142_pop37_covariance18_out_data_out;
    assign out_c0_exi8359_7_tpl = redist3_sync_together57_aunroll_x_in_c0_eni3347_3_tpl_1_q;
    assign out_c0_exi8359_8_tpl = redist2_sync_together57_aunroll_x_in_c0_eni3347_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
