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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond31_preheader_covariances_c0_enter31533_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond30000ter31533_covariance0 (
    output wire [0:0] out_c0_exi21_0_tpl,
    output wire [0:0] out_c0_exi21_1_tpl,
    output wire [0:0] out_c0_exi21_2_tpl,
    output wire [31:0] out_c0_exi21_3_tpl,
    output wire [31:0] out_c0_exi21_4_tpl,
    output wire [31:0] out_c0_exi21_5_tpl,
    output wire [31:0] out_c0_exi21_6_tpl,
    output wire [31:0] out_c0_exi21_7_tpl,
    output wire [0:0] out_c0_exi21_8_tpl,
    output wire [0:0] out_c0_exi21_9_tpl,
    output wire [0:0] out_c0_exi21_10_tpl,
    output wire [0:0] out_c0_exi21_11_tpl,
    output wire [31:0] out_c0_exi21_12_tpl,
    output wire [31:0] out_c0_exi21_13_tpl,
    output wire [31:0] out_c0_exi21_14_tpl,
    output wire [31:0] out_c0_exi21_15_tpl,
    output wire [32:0] out_c0_exi21_16_tpl,
    output wire [0:0] out_c0_exi21_17_tpl,
    output wire [0:0] out_c0_exi21_18_tpl,
    output wire [0:0] out_c0_exi21_19_tpl,
    output wire [31:0] out_c0_exi21_20_tpl,
    output wire [31:0] out_c0_exi21_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [32:0] in_c0_eni11_1_tpl,
    input wire [0:0] in_c0_eni11_2_tpl,
    input wire [31:0] in_c0_eni11_3_tpl,
    input wire [31:0] in_c0_eni11_4_tpl,
    input wire [31:0] in_c0_eni11_5_tpl,
    input wire [31:0] in_c0_eni11_6_tpl,
    input wire [0:0] in_c0_eni11_7_tpl,
    input wire [0:0] in_c0_eni11_8_tpl,
    input wire [0:0] in_c0_eni11_9_tpl,
    input wire [31:0] in_c0_eni11_10_tpl,
    input wire [31:0] in_c0_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b;
    wire [31:0] bgTrunc_i_inc51_covariance11_sel_x_b;
    wire [31:0] c_i32_151_q;
    wire [32:0] c_i33_150_q;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_a;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_b;
    logic [33:0] i_fpga_indvars_iv_next17_covariance8_o;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_q;
    wire [32:0] i_inc51_covariance11_a;
    wire [32:0] i_inc51_covariance11_b;
    logic [32:0] i_inc51_covariance11_o;
    wire [32:0] i_inc51_covariance11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_feedback_stall_out_52;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_valid_out_55;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_valid_out_56;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_valid_out_52;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_valid_out_48;
    wire [0:0] i_notcmp26_covariance6_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    wire [0:0] i_exitcond18_covariance4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q;
    reg [32:0] redist1_sync_together76_aunroll_x_in_c0_eni11_1_tpl_1_q;
    reg [0:0] redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q;
    reg [31:0] redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q;
    reg [31:0] redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1_q;
    reg [31:0] redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1_q;
    reg [31:0] redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1_q;
    reg [0:0] redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1_q;
    reg [0:0] redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1_q;
    reg [0:0] redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1_q;
    reg [31:0] redist10_sync_together76_aunroll_x_in_c0_eni11_10_tpl_1_q;
    reg [31:0] redist11_sync_together76_aunroll_x_in_c0_eni11_11_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,63)@1 + 1
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

    // redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1_q <= $unsigned(in_c0_eni11_5_tpl);
        end
    end

    // redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1_q <= $unsigned(in_c0_eni11_4_tpl);
        end
    end

    // redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1_q <= $unsigned(in_c0_eni11_9_tpl);
        end
    end

    // redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1_q <= $unsigned(in_c0_eni11_8_tpl);
        end
    end

    // redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // redist1_sync_together76_aunroll_x_in_c0_eni11_1_tpl_1(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni11_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together76_aunroll_x_in_c0_eni11_1_tpl_1_q <= $unsigned(in_c0_eni11_1_tpl);
        end
    end

    // redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1_q <= $unsigned(in_c0_eni11_6_tpl);
        end
    end

    // redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q <= $unsigned(in_c0_eni11_3_tpl);
        end
    end

    // redist11_sync_together76_aunroll_x_in_c0_eni11_11_tpl_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together76_aunroll_x_in_c0_eni11_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together76_aunroll_x_in_c0_eni11_11_tpl_1_q <= $unsigned(in_c0_eni11_11_tpl);
        end
    end

    // redist10_sync_together76_aunroll_x_in_c0_eni11_10_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together76_aunroll_x_in_c0_eni11_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together76_aunroll_x_in_c0_eni11_10_tpl_1_q <= $unsigned(in_c0_eni11_10_tpl);
        end
    end

    // redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q <= $unsigned(in_c0_eni11_2_tpl);
        end
    end

    // valid_fanout_reg15(REG,78)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,79)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26(BLACKBOX,49)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_0 thei_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_feedback_stall_out_57),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25(BLACKBOX,40)@2
    // out out_feedback_stall_out_57@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25 (
        .in_data_in(redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i1_memdep_phi3_pop25106_push57_covariance26_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,76)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,77)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp31104_push56_covariance24(BLACKBOX,50)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    covariance_i_llvm_fpga_push_i1_notcmp31104_push56_0 thei_llvm_fpga_push_i1_notcmp31104_push56_covariance24 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_feedback_stall_out_56),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23(BLACKBOX,41)@2
    // out out_feedback_stall_out_56@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp31104_pop56_0 thei_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23 (
        .in_data_in(redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i1_notcmp31104_push56_covariance24_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,74)@1 + 1
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

    // valid_fanout_reg12(REG,75)@1 + 1
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

    // i_llvm_fpga_push_i1_exitcond21102_push55_covariance22(BLACKBOX,48)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    covariance_i_llvm_fpga_push_i1_exitcond21102_push55_0 thei_llvm_fpga_push_i1_exitcond21102_push55_covariance22 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_feedback_stall_out_55),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21(BLACKBOX,39)@2
    // out out_feedback_stall_out_55@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond21102_pop55_0 thei_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21 (
        .in_data_in(redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i1_exitcond21102_push55_covariance22_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,72)@1 + 1
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

    // valid_fanout_reg10(REG,73)@1 + 1
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

    // i_llvm_fpga_push_i32_mul47100_push54_covariance20(BLACKBOX,55)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    covariance_i_llvm_fpga_push_i32_mul47100_push54_0 thei_llvm_fpga_push_i32_mul47100_push54_covariance20 (
        .in_data_in(i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_feedback_stall_out_54),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul47100_pop54_covariance19(BLACKBOX,45)@2
    // out out_feedback_stall_out_54@20000000
    covariance_i_llvm_fpga_pop_i32_mul47100_pop54_0 thei_llvm_fpga_pop_i32_mul47100_pop54_covariance19 (
        .in_data_in(redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i32_mul47100_push54_covariance20_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,70)@1 + 1
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

    // valid_fanout_reg8(REG,71)@1 + 1
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

    // i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18(BLACKBOX,52)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    covariance_i_llvm_fpga_push_i32_i21_072_pop2498_push53_0 thei_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18 (
        .in_data_in(i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17(BLACKBOX,42)@2
    // out out_feedback_stall_out_53@20000000
    covariance_i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_0 thei_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17 (
        .in_data_in(redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i32_i21_072_pop2498_push53_covariance18_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,68)@1 + 1
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

    // valid_fanout_reg6(REG,69)@1 + 1
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

    // i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16(BLACKBOX,56)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    covariance_i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_0 thei_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15(BLACKBOX,46)@2
    // out out_feedback_stall_out_52@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15 (
        .in_data_in(redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i32_reorder_limiter_enter87_push52_covariance16_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,66)@1 + 1
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

    // valid_fanout_reg4(REG,67)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext83_push51_covariance14(BLACKBOX,54)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext83_push51_0 thei_llvm_fpga_push_i32_lim_ext83_push51_covariance14 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13(BLACKBOX,44)@2
    // out out_feedback_stall_out_51@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext83_pop51_0 thei_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13 (
        .in_data_in(redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_lim_ext83_push51_covariance14_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,64)@1 + 1
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

    // valid_fanout_reg2(REG,65)@1 + 1
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

    // c_i32_151(CONSTANT,32)
    assign c_i32_151_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc51_covariance11(ADD,37)@2
    assign i_inc51_covariance11_a = {1'b0, i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_data_out};
    assign i_inc51_covariance11_b = {1'b0, c_i32_151_q};
    assign i_inc51_covariance11_o = $unsigned(i_inc51_covariance11_a) + $unsigned(i_inc51_covariance11_b);
    assign i_inc51_covariance11_q = i_inc51_covariance11_o[32:0];

    // bgTrunc_i_inc51_covariance11_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc51_covariance11_sel_x_b = i_inc51_covariance11_q[31:0];

    // i_llvm_fpga_push_i32_j26_071_push49_covariance12(BLACKBOX,53)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    covariance_i_llvm_fpga_push_i32_j26_071_push49_0 thei_llvm_fpga_push_i32_j26_071_push49_covariance12 (
        .in_data_in(bgTrunc_i_inc51_covariance11_sel_x_b),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j26_071_pop49_covariance10(BLACKBOX,43)@2
    // out out_feedback_stall_out_49@20000000
    covariance_i_llvm_fpga_pop_i32_j26_071_pop49_0 thei_llvm_fpga_pop_i32_j26_071_pop49_covariance10 (
        .in_data_in(redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q),
        .in_dir(redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_j26_071_push49_covariance12_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp26_covariance6(LOGICAL,58)@2
    assign i_notcmp26_covariance6_q = redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q ^ VCC_q;

    // c_i33_150(CONSTANT,33)
    assign c_i33_150_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next17_covariance8(ADD,36)@1
    assign i_fpga_indvars_iv_next17_covariance8_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_data_out};
    assign i_fpga_indvars_iv_next17_covariance8_b = {1'b0, c_i33_150_q};
    assign i_fpga_indvars_iv_next17_covariance8_o = $unsigned(i_fpga_indvars_iv_next17_covariance8_a) + $unsigned(i_fpga_indvars_iv_next17_covariance8_b);
    assign i_fpga_indvars_iv_next17_covariance8_q = i_fpga_indvars_iv_next17_covariance8_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b = i_fpga_indvars_iv_next17_covariance8_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9(BLACKBOX,57)@1
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    covariance_i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_0 thei_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b),
        .in_exitcond18(i_exitcond18_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3(BLACKBOX,47)@1
    // out out_feedback_stall_out_48@20000000
    covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3 (
        .in_data_in(in_c0_eni11_1_tpl),
        .in_dir(in_c0_eni11_2_tpl),
        .in_feedback_in_48(i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i33_fpga_indvars_iv16_push48_covariance9_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond18_covariance4_cmp_nsign(LOGICAL,83)@1
    assign i_exitcond18_covariance4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop48_covariance3_out_data_out[32:32]));

    // redist0_i_exitcond18_covariance4_cmp_nsign_q_1(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q <= $unsigned(i_exitcond18_covariance4_cmp_nsign_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi21_0_tpl = GND_q;
    assign out_c0_exi21_1_tpl = redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q;
    assign out_c0_exi21_2_tpl = i_notcmp26_covariance6_q;
    assign out_c0_exi21_3_tpl = i_llvm_fpga_pop_i32_j26_071_pop49_covariance10_out_data_out;
    assign out_c0_exi21_4_tpl = i_llvm_fpga_pop_i32_lim_ext83_pop51_covariance13_out_data_out;
    assign out_c0_exi21_5_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter87_pop52_covariance15_out_data_out;
    assign out_c0_exi21_6_tpl = i_llvm_fpga_pop_i32_i21_072_pop2498_pop53_covariance17_out_data_out;
    assign out_c0_exi21_7_tpl = i_llvm_fpga_pop_i32_mul47100_pop54_covariance19_out_data_out;
    assign out_c0_exi21_8_tpl = i_llvm_fpga_pop_i1_exitcond21102_pop55_covariance21_out_data_out;
    assign out_c0_exi21_9_tpl = i_llvm_fpga_pop_i1_notcmp31104_pop56_covariance23_out_data_out;
    assign out_c0_exi21_10_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop25106_pop57_covariance25_out_data_out;
    assign out_c0_exi21_11_tpl = redist2_sync_together76_aunroll_x_in_c0_eni11_2_tpl_1_q;
    assign out_c0_exi21_12_tpl = redist10_sync_together76_aunroll_x_in_c0_eni11_10_tpl_1_q;
    assign out_c0_exi21_13_tpl = redist11_sync_together76_aunroll_x_in_c0_eni11_11_tpl_1_q;
    assign out_c0_exi21_14_tpl = redist3_sync_together76_aunroll_x_in_c0_eni11_3_tpl_1_q;
    assign out_c0_exi21_15_tpl = redist6_sync_together76_aunroll_x_in_c0_eni11_6_tpl_1_q;
    assign out_c0_exi21_16_tpl = redist1_sync_together76_aunroll_x_in_c0_eni11_1_tpl_1_q;
    assign out_c0_exi21_17_tpl = redist7_sync_together76_aunroll_x_in_c0_eni11_7_tpl_1_q;
    assign out_c0_exi21_18_tpl = redist8_sync_together76_aunroll_x_in_c0_eni11_8_tpl_1_q;
    assign out_c0_exi21_19_tpl = redist9_sync_together76_aunroll_x_in_c0_eni11_9_tpl_1_q;
    assign out_c0_exi21_20_tpl = redist4_sync_together76_aunroll_x_in_c0_eni11_4_tpl_1_q;
    assign out_c0_exi21_21_tpl = redist5_sync_together76_aunroll_x_in_c0_eni11_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond29_covariance7(BLACKBOX,51)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_covariance7 (
        .in_data_in(i_exitcond18_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going28_covariance2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_covariance2(BLACKBOX,38)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_covariance2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_covariance7_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_covariance2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_covariance2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_covariance2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going28_covariance2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_covariance2_out_pipeline_valid_out;

endmodule
