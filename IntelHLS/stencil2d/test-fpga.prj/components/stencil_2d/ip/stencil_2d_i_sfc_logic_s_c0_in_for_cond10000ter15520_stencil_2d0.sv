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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond1_preheader_stencil_2ds_c0_enter15520_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond10000ter15520_stencil_2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [31:0] out_c0_exi5_1_tpl,
    output wire [31:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_022_q;
    wire [31:0] c_i32_127_q;
    wire [5:0] c_i6_126_q;
    wire [5:0] c_i6_2624_q;
    wire [6:0] i_fpga_indvars_iv_next10_stencil_2d10_a;
    wire [6:0] i_fpga_indvars_iv_next10_stencil_2d10_b;
    logic [6:0] i_fpga_indvars_iv_next10_stencil_2d10_o;
    wire [6:0] i_fpga_indvars_iv_next10_stencil_2d10_q;
    wire [32:0] i_inc33_stencil_2d12_a;
    wire [32:0] i_inc33_stencil_2d12_b;
    logic [32:0] i_inc33_stencil_2d12_o;
    wire [32:0] i_inc33_stencil_2d12_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_feedback_stall_out_13;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_valid_out_12;
    wire [31:0] i_mul25_stencil_2d4_vt_join_q;
    wire [30:0] i_mul25_stencil_2d4_vt_select_31_b;
    wire [0:0] i_notcmp29_stencil_2d8_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next10_stencil_2d10_sel_x_b;
    wire [31:0] bgTrunc_i_inc33_stencil_2d12_sel_x_b;
    wire [31:0] bgTrunc_i_mul25_stencil_2d4_sel_x_b;
    wire [63:0] i_mul25_stencil_2d4_extender_x_q;
    wire [26:0] i_mul25_stencil_2d4_multconst_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond11_stencil_2d6_cmp_nsign_q;
    wire [36:0] i_mul25_stencil_2d4_sums_align_1_q;
    wire [36:0] i_mul25_stencil_2d4_sums_align_1_qint;
    wire [37:0] i_mul25_stencil_2d4_sums_result_add_0_0_a;
    wire [37:0] i_mul25_stencil_2d4_sums_result_add_0_0_b;
    logic [37:0] i_mul25_stencil_2d4_sums_result_add_0_0_o;
    wire [37:0] i_mul25_stencil_2d4_sums_result_add_0_0_q;
    wire [14:0] xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0_q;
    wire [3:0] padACst_uid94_i_mul25_stencil_2d4_im0_q;
    wire [18:0] aPostPad_uid95_i_mul25_stencil_2d4_im0_q;
    wire [19:0] sub_uid96_i_mul25_stencil_2d4_im0_a;
    wire [19:0] sub_uid96_i_mul25_stencil_2d4_im0_b;
    logic [19:0] sub_uid96_i_mul25_stencil_2d4_im0_o;
    wire [19:0] sub_uid96_i_mul25_stencil_2d4_im0_q;
    wire [17:0] sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_in;
    wire [17:0] sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_b;
    wire [18:0] sR_mergedSignalTM_uid101_i_mul25_stencil_2d4_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3_q;
    wire [22:0] aPostPad_uid151_i_mul25_stencil_2d4_im3_q;
    wire [23:0] sub_uid152_i_mul25_stencil_2d4_im3_a;
    wire [23:0] sub_uid152_i_mul25_stencil_2d4_im3_b;
    logic [23:0] sub_uid152_i_mul25_stencil_2d4_im3_o;
    wire [23:0] sub_uid152_i_mul25_stencil_2d4_im3_q;
    wire [21:0] sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_in;
    wire [21:0] sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_b;
    wire [22:0] sR_mergedSignalTM_uid157_i_mul25_stencil_2d4_im3_q;
    wire [13:0] i_mul25_stencil_2d4_bs1_merged_bit_select_b;
    wire [17:0] i_mul25_stencil_2d4_bs1_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q;
    reg [0:0] redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_delay_0;
    reg [0:0] redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist2_sync_together37_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist3_sync_together37_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q;


    // c_i6_126(CONSTANT,17)
    assign c_i6_126_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next10_stencil_2d10(ADD,21)@1
    assign i_fpga_indvars_iv_next10_stencil_2d10_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_data_out};
    assign i_fpga_indvars_iv_next10_stencil_2d10_b = {1'b0, c_i6_126_q};
    assign i_fpga_indvars_iv_next10_stencil_2d10_o = $unsigned(i_fpga_indvars_iv_next10_stencil_2d10_a) + $unsigned(i_fpga_indvars_iv_next10_stencil_2d10_b);
    assign i_fpga_indvars_iv_next10_stencil_2d10_q = i_fpga_indvars_iv_next10_stencil_2d10_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next10_stencil_2d10_sel_x(BITSELECT,38)@1
    assign bgTrunc_i_fpga_indvars_iv_next10_stencil_2d10_sel_x_b = i_fpga_indvars_iv_next10_stencil_2d10_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11(BLACKBOX,28)@1
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    stencil_2d_i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_0 thei_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next10_stencil_2d10_sel_x_b),
        .in_exitcond11(i_exitcond11_stencil_2d6_cmp_nsign_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2624(CONSTANT,18)
    assign c_i6_2624_q = $unsigned(6'b011010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5(BLACKBOX,25)@1
    // out out_feedback_stall_out_12@20000000
    stencil_2d_i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5 (
        .in_data_in(c_i6_2624_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv9_push12_stencil_2d11_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond11_stencil_2d6_cmp_nsign(LOGICAL,54)@1
    assign i_exitcond11_stencil_2d6_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv9_pop12_stencil_2d5_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond32_stencil_2d9(BLACKBOX,26)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond32_0 thei_llvm_fpga_push_i1_notexitcond32_stencil_2d9 (
        .in_data_in(i_exitcond11_stencil_2d6_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going31_stencil_2d2(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going31_0 thei_llvm_fpga_pipeline_keep_going31_stencil_2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond32_stencil_2d9_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going31_stencil_2d2_out_pipeline_valid_out;

    // redist3_sync_together37_aunroll_x_in_i_valid_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together37_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together37_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,47)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together37_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist2_sync_together37_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together37_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together37_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // i_notcmp29_stencil_2d8(LOGICAL,33)@3
    assign i_notcmp29_stencil_2d8_q = redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q ^ VCC_q;

    // redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_delay_0 <= '0;
            redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond11_stencil_2d6_cmp_nsign_q);
            redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q <= redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_delay_0;
        end
    end

    // i_mul25_stencil_2d4_multconst_x(CONSTANT,44)
    assign i_mul25_stencil_2d4_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // i_mul25_stencil_2d4_bs1_merged_bit_select(BITSELECT,183)@3
    assign i_mul25_stencil_2d4_bs1_merged_bit_select_b = redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q[31:18];
    assign i_mul25_stencil_2d4_bs1_merged_bit_select_c = redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q[17:0];

    // xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0(BITJOIN,89)@3
    assign xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0_q = {GND_q, i_mul25_stencil_2d4_bs1_merged_bit_select_b};

    // padACst_uid94_i_mul25_stencil_2d4_im0(CONSTANT,93)
    assign padACst_uid94_i_mul25_stencil_2d4_im0_q = $unsigned(4'b0000);

    // aPostPad_uid95_i_mul25_stencil_2d4_im0(BITJOIN,94)@3
    assign aPostPad_uid95_i_mul25_stencil_2d4_im0_q = {xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0_q, padACst_uid94_i_mul25_stencil_2d4_im0_q};

    // sub_uid96_i_mul25_stencil_2d4_im0(SUB,95)@3
    assign sub_uid96_i_mul25_stencil_2d4_im0_a = $unsigned({{1{aPostPad_uid95_i_mul25_stencil_2d4_im0_q[18]}}, aPostPad_uid95_i_mul25_stencil_2d4_im0_q});
    assign sub_uid96_i_mul25_stencil_2d4_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0_q[14]}}, xIfSign_mergedSignalTM_uid90_i_mul25_stencil_2d4_im0_q});
    assign sub_uid96_i_mul25_stencil_2d4_im0_o = $unsigned($signed(sub_uid96_i_mul25_stencil_2d4_im0_a) - $signed(sub_uid96_i_mul25_stencil_2d4_im0_b));
    assign sub_uid96_i_mul25_stencil_2d4_im0_q = sub_uid96_i_mul25_stencil_2d4_im0_o[19:0];

    // sR_bottomRange_uid100_i_mul25_stencil_2d4_im0(BITSELECT,99)@3
    assign sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_in = $unsigned(sub_uid96_i_mul25_stencil_2d4_im0_q[17:0]);
    assign sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_b = $unsigned(sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_in[17:0]);

    // sR_mergedSignalTM_uid101_i_mul25_stencil_2d4_im0(BITJOIN,100)@3
    assign sR_mergedSignalTM_uid101_i_mul25_stencil_2d4_im0_q = {sR_bottomRange_uid100_i_mul25_stencil_2d4_im0_b, GND_q};

    // i_mul25_stencil_2d4_sums_align_1(BITSHIFT,62)@3
    assign i_mul25_stencil_2d4_sums_align_1_qint = { sR_mergedSignalTM_uid101_i_mul25_stencil_2d4_im0_q, 18'b000000000000000000 };
    assign i_mul25_stencil_2d4_sums_align_1_q = i_mul25_stencil_2d4_sums_align_1_qint[36:0];

    // xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3(BITJOIN,145)@3
    assign xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3_q = {GND_q, i_mul25_stencil_2d4_bs1_merged_bit_select_c};

    // aPostPad_uid151_i_mul25_stencil_2d4_im3(BITJOIN,150)@3
    assign aPostPad_uid151_i_mul25_stencil_2d4_im3_q = {xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3_q, padACst_uid94_i_mul25_stencil_2d4_im0_q};

    // sub_uid152_i_mul25_stencil_2d4_im3(SUB,151)@3
    assign sub_uid152_i_mul25_stencil_2d4_im3_a = $unsigned({{1{aPostPad_uid151_i_mul25_stencil_2d4_im3_q[22]}}, aPostPad_uid151_i_mul25_stencil_2d4_im3_q});
    assign sub_uid152_i_mul25_stencil_2d4_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3_q[18]}}, xIfSign_mergedSignalTM_uid146_i_mul25_stencil_2d4_im3_q});
    assign sub_uid152_i_mul25_stencil_2d4_im3_o = $unsigned($signed(sub_uid152_i_mul25_stencil_2d4_im3_a) - $signed(sub_uid152_i_mul25_stencil_2d4_im3_b));
    assign sub_uid152_i_mul25_stencil_2d4_im3_q = sub_uid152_i_mul25_stencil_2d4_im3_o[23:0];

    // sR_bottomRange_uid156_i_mul25_stencil_2d4_im3(BITSELECT,155)@3
    assign sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_in = $unsigned(sub_uid152_i_mul25_stencil_2d4_im3_q[21:0]);
    assign sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_b = $unsigned(sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_in[21:0]);

    // sR_mergedSignalTM_uid157_i_mul25_stencil_2d4_im3(BITJOIN,156)@3
    assign sR_mergedSignalTM_uid157_i_mul25_stencil_2d4_im3_q = {sR_bottomRange_uid156_i_mul25_stencil_2d4_im3_b, GND_q};

    // i_mul25_stencil_2d4_sums_result_add_0_0(ADD,64)@3
    assign i_mul25_stencil_2d4_sums_result_add_0_0_a = {15'b000000000000000, sR_mergedSignalTM_uid157_i_mul25_stencil_2d4_im3_q};
    assign i_mul25_stencil_2d4_sums_result_add_0_0_b = {1'b0, i_mul25_stencil_2d4_sums_align_1_q};
    assign i_mul25_stencil_2d4_sums_result_add_0_0_o = $unsigned(i_mul25_stencil_2d4_sums_result_add_0_0_a) + $unsigned(i_mul25_stencil_2d4_sums_result_add_0_0_b);
    assign i_mul25_stencil_2d4_sums_result_add_0_0_q = i_mul25_stencil_2d4_sums_result_add_0_0_o[37:0];

    // i_mul25_stencil_2d4_extender_x(BITJOIN,43)@3
    assign i_mul25_stencil_2d4_extender_x_q = {i_mul25_stencil_2d4_multconst_x_q, i_mul25_stencil_2d4_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_mul25_stencil_2d4_sel_x(BITSELECT,40)@3
    assign bgTrunc_i_mul25_stencil_2d4_sel_x_b = i_mul25_stencil_2d4_extender_x_q[31:0];

    // i_mul25_stencil_2d4_vt_select_31(BITSELECT,32)@3
    assign i_mul25_stencil_2d4_vt_select_31_b = bgTrunc_i_mul25_stencil_2d4_sel_x_b[31:1];

    // i_mul25_stencil_2d4_vt_join(BITJOIN,31)@3
    assign i_mul25_stencil_2d4_vt_join_q = {i_mul25_stencil_2d4_vt_select_31_b, GND_q};

    // valid_fanout_reg1(REG,48)@1 + 1
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

    // valid_fanout_reg2(REG,49)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together37_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_127(CONSTANT,15)
    assign c_i32_127_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc33_stencil_2d12(ADD,22)@3
    assign i_inc33_stencil_2d12_a = {1'b0, redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q};
    assign i_inc33_stencil_2d12_b = {1'b0, c_i32_127_q};
    assign i_inc33_stencil_2d12_o = $unsigned(i_inc33_stencil_2d12_a) + $unsigned(i_inc33_stencil_2d12_b);
    assign i_inc33_stencil_2d12_q = i_inc33_stencil_2d12_o[32:0];

    // bgTrunc_i_inc33_stencil_2d12_sel_x(BITSELECT,39)@3
    assign bgTrunc_i_inc33_stencil_2d12_sel_x_b = i_inc33_stencil_2d12_q[31:0];

    // i_llvm_fpga_push_i32_r_026_push13_stencil_2d13(BLACKBOX,27)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_026_push13_0 thei_llvm_fpga_push_i32_r_026_push13_stencil_2d13 (
        .in_data_in(bgTrunc_i_inc33_stencil_2d12_sel_x_b),
        .in_exitcond11(redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_022(CONSTANT,14)
    assign c_i32_022_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3(BLACKBOX,24)@2
    // out out_feedback_stall_out_13@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_026_pop13_0 thei_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3 (
        .in_data_in(c_i32_022_q),
        .in_dir(redist1_sync_together37_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_r_026_push13_stencil_2d13_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out);
        end
    end

    // sync_out_aunroll_x(GPOUT,45)@3
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist4_i_llvm_fpga_pop_i32_r_026_pop13_stencil_2d3_out_data_out_1_q;
    assign out_c0_exi5_2_tpl = i_mul25_stencil_2d4_vt_join_q;
    assign out_c0_exi5_3_tpl = redist0_i_exitcond11_stencil_2d6_cmp_nsign_q_2_q;
    assign out_c0_exi5_4_tpl = i_notcmp29_stencil_2d8_q;
    assign out_c0_exi5_5_tpl = redist2_sync_together37_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
