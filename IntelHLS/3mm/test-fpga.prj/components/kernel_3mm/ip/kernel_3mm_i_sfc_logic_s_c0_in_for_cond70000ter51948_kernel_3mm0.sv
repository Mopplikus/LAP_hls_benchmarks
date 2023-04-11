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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond74_preheader_kernel_3mms_c0_enter51948_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_cond70000ter51948_kernel_3mm0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5526_0_tpl,
    output wire [0:0] out_c0_exi5526_1_tpl,
    output wire [0:0] out_c0_exi5526_2_tpl,
    output wire [31:0] out_c0_exi5526_3_tpl,
    output wire [0:0] out_c0_exi5526_4_tpl,
    output wire [0:0] out_c0_exi5526_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni2518_0_tpl,
    input wire [0:0] in_c0_eni2518_1_tpl,
    input wire [0:0] in_c0_eni2518_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_028_q;
    wire [31:0] c_i32_129_q;
    wire [4:0] c_i5_127_q;
    wire [4:0] c_i5_825_q;
    wire [5:0] i_fpga_indvars_iv_next24_kernel_3mm8_a;
    wire [5:0] i_fpga_indvars_iv_next24_kernel_3mm8_b;
    logic [5:0] i_fpga_indvars_iv_next24_kernel_3mm8_o;
    wire [5:0] i_fpga_indvars_iv_next24_kernel_3mm8_q;
    wire [32:0] i_inc106_kernel_3mm11_a;
    wire [32:0] i_inc106_kernel_3mm11_b;
    logic [32:0] i_inc106_kernel_3mm11_o;
    wire [32:0] i_inc106_kernel_3mm11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_feedback_stall_out_30;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_valid_out_30;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_valid_out_29;
    wire [0:0] i_notcmp31_kernel_3mm6_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next24_kernel_3mm8_sel_x_b;
    wire [31:0] bgTrunc_i_inc106_kernel_3mm11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond25_kernel_3mm4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1_q;
    reg [0:0] redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1_q;


    // c_i5_127(CONSTANT,17)
    assign c_i5_127_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next24_kernel_3mm8(ADD,21)@1
    assign i_fpga_indvars_iv_next24_kernel_3mm8_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_data_out};
    assign i_fpga_indvars_iv_next24_kernel_3mm8_b = {1'b0, c_i5_127_q};
    assign i_fpga_indvars_iv_next24_kernel_3mm8_o = $unsigned(i_fpga_indvars_iv_next24_kernel_3mm8_a) + $unsigned(i_fpga_indvars_iv_next24_kernel_3mm8_b);
    assign i_fpga_indvars_iv_next24_kernel_3mm8_q = i_fpga_indvars_iv_next24_kernel_3mm8_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next24_kernel_3mm8_sel_x(BITSELECT,36)@1
    assign bgTrunc_i_fpga_indvars_iv_next24_kernel_3mm8_sel_x_b = i_fpga_indvars_iv_next24_kernel_3mm8_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9(BLACKBOX,30)@1
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_0 thei_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next24_kernel_3mm8_sel_x_b),
        .in_exitcond25(i_exitcond25_kernel_3mm4_cmp_nsign_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_825(CONSTANT,18)
    assign c_i5_825_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3(BLACKBOX,26)@1
    // out out_feedback_stall_out_29@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3 (
        .in_data_in(c_i5_825_q),
        .in_dir(in_c0_eni2518_1_tpl),
        .in_feedback_in_29(i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i5_fpga_indvars_iv23_push29_kernel_3mm9_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond25_kernel_3mm4_cmp_nsign(LOGICAL,49)@1
    assign i_exitcond25_kernel_3mm4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop29_kernel_3mm3_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7(BLACKBOX,28)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond34_0 thei_llvm_fpga_push_i1_notexitcond34_kernel_3mm7 (
        .in_data_in(i_exitcond25_kernel_3mm4_cmp_nsign_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going33_kernel_3mm2(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going33_0 thei_llvm_fpga_pipeline_keep_going33_kernel_3mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond34_kernel_3mm7_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,41)@1 + 1
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

    // redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1_q <= $unsigned(in_c0_eni2518_2_tpl);
        end
    end

    // valid_fanout_reg3(REG,44)@1 + 1
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

    // valid_fanout_reg4(REG,45)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14(BLACKBOX,27)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_0 thei_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_data_out),
        .in_exitcond25(redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1_q <= $unsigned(in_c0_eni2518_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13(BLACKBOX,24)@2
    // out out_feedback_stall_out_31@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_0 thei_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13 (
        .in_data_in(redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_memdep_phi7_pop21104_push31_kernel_3mm14_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,42)@1 + 1
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

    // valid_fanout_reg2(REG,43)@1 + 1
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

    // c_i32_129(CONSTANT,16)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc106_kernel_3mm11(ADD,22)@2
    assign i_inc106_kernel_3mm11_a = {1'b0, i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_data_out};
    assign i_inc106_kernel_3mm11_b = {1'b0, c_i32_129_q};
    assign i_inc106_kernel_3mm11_o = $unsigned(i_inc106_kernel_3mm11_a) + $unsigned(i_inc106_kernel_3mm11_b);
    assign i_inc106_kernel_3mm11_q = i_inc106_kernel_3mm11_o[32:0];

    // bgTrunc_i_inc106_kernel_3mm11_sel_x(BITSELECT,37)@2
    assign bgTrunc_i_inc106_kernel_3mm11_sel_x_b = i_inc106_kernel_3mm11_q[31:0];

    // i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12(BLACKBOX,29)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_252_push30_0 thei_llvm_fpga_push_i32_i_252_push30_kernel_3mm12 (
        .in_data_in(bgTrunc_i_inc106_kernel_3mm11_sel_x_b),
        .in_exitcond25(redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_028(CONSTANT,15)
    assign c_i32_028_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10(BLACKBOX,25)@2
    // out out_feedback_stall_out_30@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_252_pop30_0 thei_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10 (
        .in_data_in(c_i32_028_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2518_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_i_252_push30_kernel_3mm12_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp31_kernel_3mm6(LOGICAL,31)@2
    assign i_notcmp31_kernel_3mm6_q = redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q <= $unsigned(i_exitcond25_kernel_3mm4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,39)@2
    assign out_c0_exi5526_0_tpl = GND_q;
    assign out_c0_exi5526_1_tpl = redist0_i_exitcond25_kernel_3mm4_cmp_nsign_q_1_q;
    assign out_c0_exi5526_2_tpl = i_notcmp31_kernel_3mm6_q;
    assign out_c0_exi5526_3_tpl = i_llvm_fpga_pop_i32_i_252_pop30_kernel_3mm10_out_data_out;
    assign out_c0_exi5526_4_tpl = i_llvm_fpga_pop_i1_memdep_phi7_pop21104_pop31_kernel_3mm13_out_data_out;
    assign out_c0_exi5526_5_tpl = redist2_sync_together41_aunroll_x_in_c0_eni2518_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

endmodule
