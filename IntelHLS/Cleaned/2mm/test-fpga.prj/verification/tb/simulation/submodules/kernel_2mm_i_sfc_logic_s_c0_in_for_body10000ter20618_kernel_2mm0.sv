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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_kernel_2mms_c0_enter20618_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body10000ter20618_kernel_2mm0 (
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [31:0] out_c0_exi4_1_tpl,
    output wire [31:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni1205_0_tpl,
    input wire [0:0] in_c0_eni1205_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next14_kernel_2mm12_sel_x_b;
    wire [31:0] bgTrunc_i_inc46_kernel_2mm14_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add26_kernel_2mm6_sel_x_b;
    wire [31:0] c_i32_024_q;
    wire [31:0] c_i32_125_q;
    wire [4:0] c_i5_129_q;
    wire [4:0] c_i5_827_q;
    wire [5:0] i_fpga_indvars_iv_next14_kernel_2mm12_a;
    wire [5:0] i_fpga_indvars_iv_next14_kernel_2mm12_b;
    logic [5:0] i_fpga_indvars_iv_next14_kernel_2mm12_o;
    wire [5:0] i_fpga_indvars_iv_next14_kernel_2mm12_q;
    wire [32:0] i_inc46_kernel_2mm14_a;
    wire [32:0] i_inc46_kernel_2mm14_b;
    logic [32:0] i_inc46_kernel_2mm14_o;
    wire [32:0] i_inc46_kernel_2mm14_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_feedback_stall_out_23;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_valid_out_22;
    wire [32:0] i_mul_add26_kernel_2mm6_a;
    wire [32:0] i_mul_add26_kernel_2mm6_b;
    logic [32:0] i_mul_add26_kernel_2mm6_o;
    wire [32:0] i_mul_add26_kernel_2mm6_q;
    wire [31:0] i_mul_add26_kernel_2mm6_vt_join_q;
    wire [30:0] i_mul_add26_kernel_2mm6_vt_select_31_b;
    wire [0:0] i_notcmp72_kernel_2mm10_q;
    wire [31:0] i_unnamed_kernel_2mm4_vt_join_q;
    wire [30:0] i_unnamed_kernel_2mm4_vt_select_31_b;
    wire [2:0] i_unnamed_kernel_2mm5_vt_const_2_q;
    wire [31:0] i_unnamed_kernel_2mm5_vt_join_q;
    wire [28:0] i_unnamed_kernel_2mm5_vt_select_31_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid71_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid74_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid76_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] i_exitcond15_kernel_2mm8_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q;
    reg [0:0] redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_delay_0;
    reg [31:0] redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q;
    reg [0:0] redist2_sync_together39_aunroll_x_in_c0_eni1205_1_tpl_1_q;
    reg [0:0] redist3_sync_together39_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together39_aunroll_x_in_i_valid_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together39_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together39_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,58)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together39_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_notcmp72_kernel_2mm10(LOGICAL,47)@3
    assign i_notcmp72_kernel_2mm10_q = redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q ^ VCC_q;

    // c_i5_129(CONSTANT,31)
    assign c_i5_129_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next14_kernel_2mm12(ADD,35)@1
    assign i_fpga_indvars_iv_next14_kernel_2mm12_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_data_out};
    assign i_fpga_indvars_iv_next14_kernel_2mm12_b = {1'b0, c_i5_129_q};
    assign i_fpga_indvars_iv_next14_kernel_2mm12_o = $unsigned(i_fpga_indvars_iv_next14_kernel_2mm12_a) + $unsigned(i_fpga_indvars_iv_next14_kernel_2mm12_b);
    assign i_fpga_indvars_iv_next14_kernel_2mm12_q = i_fpga_indvars_iv_next14_kernel_2mm12_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next14_kernel_2mm12_sel_x(BITSELECT,6)@1
    assign bgTrunc_i_fpga_indvars_iv_next14_kernel_2mm12_sel_x_b = i_fpga_indvars_iv_next14_kernel_2mm12_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13(BLACKBOX,42)@1
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_0 thei_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next14_kernel_2mm12_sel_x_b),
        .in_exitcond15(i_exitcond15_kernel_2mm8_cmp_nsign_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_827(CONSTANT,32)
    assign c_i5_827_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7(BLACKBOX,39)@1
    // out out_feedback_stall_out_22@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7 (
        .in_data_in(c_i5_827_q),
        .in_dir(in_c0_eni1205_1_tpl),
        .in_feedback_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv13_push22_kernel_2mm13_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond15_kernel_2mm8_cmp_nsign(LOGICAL,88)@1
    assign i_exitcond15_kernel_2mm8_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv13_pop22_kernel_2mm7_out_data_out[4:4]));

    // redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_delay_0 <= '0;
            redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond15_kernel_2mm8_cmp_nsign_q);
            redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q <= redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_delay_0;
        end
    end

    // leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x(BITSELECT,74)@3
    assign leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_in = leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid74_dupName_0_i_unnamed_kernel_2mm0_shift_x(CONSTANT,73)
    assign leftShiftStage1Idx1Pad2_uid74_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid76_dupName_0_i_unnamed_kernel_2mm0_shift_x(BITJOIN,75)@3
    assign leftShiftStage1Idx1_uid76_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage1Idx1Rng2_uid75_dupName_0_i_unnamed_kernel_2mm0_shift_x_b, leftShiftStage1Idx1Pad2_uid74_dupName_0_i_unnamed_kernel_2mm0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x(BITSELECT,69)@3
    assign leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_in = redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid71_dupName_0_i_unnamed_kernel_2mm0_shift_x(BITJOIN,70)@3
    assign leftShiftStage0Idx1_uid71_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid70_dupName_0_i_unnamed_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x(MUX,72)@3
    assign leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_s or redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q or leftShiftStage0Idx1_uid71_dupName_0_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid71_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x(MUX,77)@3
    assign leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_s or leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q or leftShiftStage1Idx1_uid76_dupName_0_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
            1'b1 : leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage1Idx1_uid76_dupName_0_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_kernel_2mm5_vt_select_31(BITSELECT,53)@3
    assign i_unnamed_kernel_2mm5_vt_select_31_b = leftShiftStage1_uid78_dupName_0_i_unnamed_kernel_2mm0_shift_x_q[31:3];

    // i_unnamed_kernel_2mm5_vt_const_2(CONSTANT,51)
    assign i_unnamed_kernel_2mm5_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_kernel_2mm5_vt_join(BITJOIN,52)@3
    assign i_unnamed_kernel_2mm5_vt_join_q = {i_unnamed_kernel_2mm5_vt_select_31_b, i_unnamed_kernel_2mm5_vt_const_2_q};

    // i_unnamed_kernel_2mm4_vt_select_31(BITSELECT,50)@3
    assign i_unnamed_kernel_2mm4_vt_select_31_b = leftShiftStage0_uid73_dupName_0_i_unnamed_kernel_2mm0_shift_x_q[31:1];

    // i_unnamed_kernel_2mm4_vt_join(BITJOIN,49)@3
    assign i_unnamed_kernel_2mm4_vt_join_q = {i_unnamed_kernel_2mm4_vt_select_31_b, GND_q};

    // i_mul_add26_kernel_2mm6(ADD,43)@3
    assign i_mul_add26_kernel_2mm6_a = {1'b0, i_unnamed_kernel_2mm4_vt_join_q};
    assign i_mul_add26_kernel_2mm6_b = {1'b0, i_unnamed_kernel_2mm5_vt_join_q};
    assign i_mul_add26_kernel_2mm6_o = $unsigned(i_mul_add26_kernel_2mm6_a) + $unsigned(i_mul_add26_kernel_2mm6_b);
    assign i_mul_add26_kernel_2mm6_q = i_mul_add26_kernel_2mm6_o[32:0];

    // bgTrunc_i_mul_add26_kernel_2mm6_sel_x(BITSELECT,8)@3
    assign bgTrunc_i_mul_add26_kernel_2mm6_sel_x_b = i_mul_add26_kernel_2mm6_q[31:0];

    // i_mul_add26_kernel_2mm6_vt_select_31(BITSELECT,46)@3
    assign i_mul_add26_kernel_2mm6_vt_select_31_b = bgTrunc_i_mul_add26_kernel_2mm6_sel_x_b[31:1];

    // i_mul_add26_kernel_2mm6_vt_join(BITJOIN,45)@3
    assign i_mul_add26_kernel_2mm6_vt_join_q = {i_mul_add26_kernel_2mm6_vt_select_31_b, GND_q};

    // valid_fanout_reg1(REG,59)@1 + 1
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

    // valid_fanout_reg2(REG,60)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together39_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_125(CONSTANT,29)
    assign c_i32_125_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc46_kernel_2mm14(ADD,36)@3
    assign i_inc46_kernel_2mm14_a = {1'b0, redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q};
    assign i_inc46_kernel_2mm14_b = {1'b0, c_i32_125_q};
    assign i_inc46_kernel_2mm14_o = $unsigned(i_inc46_kernel_2mm14_a) + $unsigned(i_inc46_kernel_2mm14_b);
    assign i_inc46_kernel_2mm14_q = i_inc46_kernel_2mm14_o[32:0];

    // bgTrunc_i_inc46_kernel_2mm14_sel_x(BITSELECT,7)@3
    assign bgTrunc_i_inc46_kernel_2mm14_sel_x_b = i_inc46_kernel_2mm14_q[31:0];

    // i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15(BLACKBOX,41)@3
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i11_082_push23_0 thei_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15 (
        .in_data_in(bgTrunc_i_inc46_kernel_2mm14_sel_x_b),
        .in_exitcond15(redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together39_aunroll_x_in_c0_eni1205_1_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together39_aunroll_x_in_c0_eni1205_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together39_aunroll_x_in_c0_eni1205_1_tpl_1_q <= $unsigned(in_c0_eni1205_1_tpl);
        end
    end

    // c_i32_024(CONSTANT,28)
    assign c_i32_024_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3(BLACKBOX,38)@2
    // out out_feedback_stall_out_23@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i11_082_pop23_0 thei_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3 (
        .in_data_in(c_i32_024_q),
        .in_dir(redist2_sync_together39_aunroll_x_in_c0_eni1205_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i11_082_push23_kernel_2mm15_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,14)@3
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist1_i_llvm_fpga_pop_i32_i11_082_pop23_kernel_2mm3_out_data_out_1_q;
    assign out_c0_exi4_2_tpl = i_mul_add26_kernel_2mm6_vt_join_q;
    assign out_c0_exi4_3_tpl = redist0_i_exitcond15_kernel_2mm8_cmp_nsign_q_2_q;
    assign out_c0_exi4_4_tpl = i_notcmp72_kernel_2mm10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11(BLACKBOX,40)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond75_0 thei_llvm_fpga_push_i1_notexitcond75_kernel_2mm11 (
        .in_data_in(i_exitcond15_kernel_2mm8_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going74_kernel_2mm2(BLACKBOX,37)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going74_0 thei_llvm_fpga_pipeline_keep_going74_kernel_2mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond75_kernel_2mm11_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_out_pipeline_valid_out;

endmodule
