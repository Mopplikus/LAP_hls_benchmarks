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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body21_gaussians_c0_enter13712_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body21_0000enter13712_gaussian0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [31:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [0:0] out_c0_exi6_3_tpl,
    output wire [31:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [31:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni2136_0_tpl,
    input wire [0:0] in_c0_eni2136_1_tpl,
    input wire [31:0] in_c0_eni2136_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_138_q;
    wire [31:0] c_i32_undef34_q;
    wire [32:0] c_i33_137_q;
    wire [32:0] c_i33_undef35_q;
    wire [0:0] i_fpga_indvars_iv17_replace_phi_gaussian8_s;
    reg [32:0] i_fpga_indvars_iv17_replace_phi_gaussian8_q;
    wire [33:0] i_fpga_indvars_iv_next18_gaussian15_a;
    wire [33:0] i_fpga_indvars_iv_next18_gaussian15_b;
    logic [33:0] i_fpga_indvars_iv_next18_gaussian15_o;
    wire [33:0] i_fpga_indvars_iv_next18_gaussian15_q;
    wire [0:0] i_i_034_replace_phi_gaussian5_s;
    reg [31:0] i_i_034_replace_phi_gaussian5_q;
    wire [32:0] i_inc44_gaussian17_a;
    wire [32:0] i_inc44_gaussian17_b;
    logic [32:0] i_inc44_gaussian17_o;
    wire [32:0] i_inc44_gaussian17_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp193335_gaussian11_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add33_gaussian3_out_dest_data_out_7_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_feedback_stall_out_27;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_valid_out_26;
    wire [0:0] i_notcmp63_gaussian13_q;
    wire [0:0] i_unnamed_gaussian12_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next18_gaussian15_sel_x_b;
    wire [31:0] bgTrunc_i_inc44_gaussian17_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [0:0] i_exitcond19_gaussian9_cmp_nsign_q;
    reg [0:0] redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q;
    reg [31:0] redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1_q;
    reg [0:0] redist2_i_unnamed_gaussian12_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6(BLACKBOX,30)@1
    gaussian_i_llvm_fpga_ffwd_dest_i33_unnamed_12_gaussian0 thei_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_137(CONSTANT,20)
    assign c_i33_137_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next18_gaussian15(ADD,25)@1
    assign i_fpga_indvars_iv_next18_gaussian15_a = {1'b0, i_fpga_indvars_iv17_replace_phi_gaussian8_q};
    assign i_fpga_indvars_iv_next18_gaussian15_b = {1'b0, c_i33_137_q};
    assign i_fpga_indvars_iv_next18_gaussian15_o = $unsigned(i_fpga_indvars_iv_next18_gaussian15_a) + $unsigned(i_fpga_indvars_iv_next18_gaussian15_b);
    assign i_fpga_indvars_iv_next18_gaussian15_q = i_fpga_indvars_iv_next18_gaussian15_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next18_gaussian15_sel_x(BITSELECT,48)@1
    assign bgTrunc_i_fpga_indvars_iv_next18_gaussian15_sel_x_b = i_fpga_indvars_iv_next18_gaussian15_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16(BLACKBOX,38)@1
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    gaussian_i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_0 thei_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_gaussian15_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian17(i_unnamed_gaussian12_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef35(CONSTANT,21)
    assign c_i33_undef35_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7(BLACKBOX,34)@1
    // out out_feedback_stall_out_26@20000000
    gaussian_i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7 (
        .in_data_in(c_i33_undef35_q),
        .in_dir(in_c0_eni2136_1_tpl),
        .in_feedback_in_26(i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i33_fpga_indvars_iv17_push26_gaussian16_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv17_replace_phi_gaussian8(MUX,24)@1
    assign i_fpga_indvars_iv17_replace_phi_gaussian8_s = in_c0_eni2136_1_tpl;
    always @(i_fpga_indvars_iv17_replace_phi_gaussian8_s or i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6_out_dest_data_out_6_0)
    begin
        unique case (i_fpga_indvars_iv17_replace_phi_gaussian8_s)
            1'b0 : i_fpga_indvars_iv17_replace_phi_gaussian8_q = i_llvm_fpga_pop_i33_fpga_indvars_iv17_pop26_gaussian7_out_data_out;
            1'b1 : i_fpga_indvars_iv17_replace_phi_gaussian8_q = i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian12_gaussian6_out_dest_data_out_6_0;
            default : i_fpga_indvars_iv17_replace_phi_gaussian8_q = 33'b0;
        endcase
    end

    // i_exitcond19_gaussian9_cmp_nsign(LOGICAL,62)@1
    assign i_exitcond19_gaussian9_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv17_replace_phi_gaussian8_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp193335_gaussian11(BLACKBOX,28)@1
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp193335_0 thei_llvm_fpga_ffwd_dest_i1_cmp193335_gaussian11 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp193335_gaussian11_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_gaussian12(LOGICAL,40)@1
    assign i_unnamed_gaussian12_q = i_llvm_fpga_ffwd_dest_i1_cmp193335_gaussian11_out_dest_data_out_8_0 & i_exitcond19_gaussian9_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond65_gaussian14(BLACKBOX,35)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond65_0 thei_llvm_fpga_push_i1_notexitcond65_gaussian14 (
        .in_data_in(i_unnamed_gaussian12_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going64_gaussian2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going64_gaussian2(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going64_0 thei_llvm_fpga_pipeline_keep_going64_gaussian2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond65_gaussian14_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,22)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_gaussian2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going64_gaussian2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going64_gaussian2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,53)@1 + 1
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

    // redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1_q <= $unsigned(in_c0_eni2136_2_tpl);
        end
    end

    // redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1(DELAY,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q <= $unsigned(in_c0_eni2136_1_tpl);
        end
    end

    // valid_fanout_reg4(REG,57)@1 + 1
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

    // valid_fanout_reg5(REG,58)@1 + 1
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

    // i_llvm_fpga_push_i32_add96_push29_gaussian20(BLACKBOX,36)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    gaussian_i_llvm_fpga_push_i32_add96_push29_0 thei_llvm_fpga_push_i32_add96_push29_gaussian20 (
        .in_data_in(i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian17(redist2_i_unnamed_gaussian12_q_1_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add96_pop29_gaussian19(BLACKBOX,32)@2
    // out out_feedback_stall_out_29@20000000
    gaussian_i_llvm_fpga_pop_i32_add96_pop29_0 thei_llvm_fpga_pop_i32_add96_pop29_gaussian19 (
        .in_data_in(redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1_q),
        .in_dir(redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_add96_push29_gaussian20_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp63_gaussian13(LOGICAL,39)@2
    assign i_notcmp63_gaussian13_q = redist2_i_unnamed_gaussian12_q_1_q ^ VCC_q;

    // redist2_i_unnamed_gaussian12_q_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_gaussian12_q_1_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_gaussian12_q_1_q <= $unsigned(i_unnamed_gaussian12_q);
        end
    end

    // valid_fanout_reg1(REG,54)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_add33_gaussian3(BLACKBOX,29)@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_add33_0 thei_llvm_fpga_ffwd_dest_i32_add33_gaussian3 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_add33_gaussian3_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,55)@1 + 1
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

    // valid_fanout_reg3(REG,56)@1 + 1
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

    // c_i32_138(CONSTANT,18)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc44_gaussian17(ADD,27)@2
    assign i_inc44_gaussian17_a = {1'b0, i_i_034_replace_phi_gaussian5_q};
    assign i_inc44_gaussian17_b = {1'b0, c_i32_138_q};
    assign i_inc44_gaussian17_o = $unsigned(i_inc44_gaussian17_a) + $unsigned(i_inc44_gaussian17_b);
    assign i_inc44_gaussian17_q = i_inc44_gaussian17_o[32:0];

    // bgTrunc_i_inc44_gaussian17_sel_x(BITSELECT,49)@2
    assign bgTrunc_i_inc44_gaussian17_sel_x_b = i_inc44_gaussian17_q[31:0];

    // i_llvm_fpga_push_i32_i_034_push27_gaussian18(BLACKBOX,37)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    gaussian_i_llvm_fpga_push_i32_i_034_push27_0 thei_llvm_fpga_push_i32_i_034_push27_gaussian18 (
        .in_data_in(bgTrunc_i_inc44_gaussian17_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian17(redist2_i_unnamed_gaussian12_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef34(CONSTANT,19)
    assign c_i32_undef34_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_034_pop27_gaussian4(BLACKBOX,33)@2
    // out out_feedback_stall_out_27@20000000
    gaussian_i_llvm_fpga_pop_i32_i_034_pop27_0 thei_llvm_fpga_pop_i32_i_034_pop27_gaussian4 (
        .in_data_in(c_i32_undef34_q),
        .in_dir(redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_i_034_push27_gaussian18_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_i_034_replace_phi_gaussian5(MUX,26)@2
    assign i_i_034_replace_phi_gaussian5_s = redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q;
    always @(i_i_034_replace_phi_gaussian5_s or i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_data_out or i_llvm_fpga_ffwd_dest_i32_add33_gaussian3_out_dest_data_out_7_0)
    begin
        unique case (i_i_034_replace_phi_gaussian5_s)
            1'b0 : i_i_034_replace_phi_gaussian5_q = i_llvm_fpga_pop_i32_i_034_pop27_gaussian4_out_data_out;
            1'b1 : i_i_034_replace_phi_gaussian5_q = i_llvm_fpga_ffwd_dest_i32_add33_gaussian3_out_dest_data_out_7_0;
            default : i_i_034_replace_phi_gaussian5_q = 32'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,51)@2
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_i_034_replace_phi_gaussian5_q;
    assign out_c0_exi6_2_tpl = redist2_i_unnamed_gaussian12_q_1_q;
    assign out_c0_exi6_3_tpl = i_notcmp63_gaussian13_q;
    assign out_c0_exi6_4_tpl = i_llvm_fpga_pop_i32_add96_pop29_gaussian19_out_data_out;
    assign out_c0_exi6_5_tpl = redist0_sync_together54_aunroll_x_in_c0_eni2136_1_tpl_1_q;
    assign out_c0_exi6_6_tpl = redist1_sync_together54_aunroll_x_in_c0_eni2136_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
