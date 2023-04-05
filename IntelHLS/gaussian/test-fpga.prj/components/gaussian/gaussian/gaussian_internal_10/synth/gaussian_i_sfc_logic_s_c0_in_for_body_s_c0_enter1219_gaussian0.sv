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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_gaussians_c0_enter1219_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body_s_c0_enter1219_gaussian0 (
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going85_gaussian2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going85_gaussian2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [63:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_c_pmem_q;
    wire [31:0] c_i32_025_q;
    wire [31:0] c_i32_126_q;
    wire [5:0] c_i6_129_q;
    wire [5:0] c_i6_1827_q;
    wire [1:0] i_arrayidx1_gaussian5_vt_const_1_q;
    wire [63:0] i_arrayidx1_gaussian5_vt_join_q;
    wire [61:0] i_arrayidx1_gaussian5_vt_select_63_b;
    wire [6:0] i_fpga_indvars_iv_next8_gaussian12_a;
    wire [6:0] i_fpga_indvars_iv_next8_gaussian12_b;
    logic [6:0] i_fpga_indvars_iv_next8_gaussian12_o;
    wire [6:0] i_fpga_indvars_iv_next8_gaussian12_q;
    wire [63:0] i_idxprom_gaussian4_vt_join_q;
    wire [31:0] i_idxprom_gaussian4_vt_select_31_b;
    wire [32:0] i_inc12_gaussian14_a;
    wire [32:0] i_inc12_gaussian14_b;
    logic [32:0] i_inc12_gaussian14_o;
    wire [32:0] i_inc12_gaussian14_q;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_feedback_stall_out_17;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_valid_out_16;
    wire [0:0] i_notcmp83_gaussian10_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_gaussian12_sel_x_b;
    wire [31:0] bgTrunc_i_inc12_gaussian14_sel_x_b;
    wire [7:0] i_arrayidx1_gaussian0_add_x_a;
    wire [7:0] i_arrayidx1_gaussian0_add_x_b;
    logic [7:0] i_arrayidx1_gaussian0_add_x_o;
    wire [7:0] i_arrayidx1_gaussian0_add_x_q;
    wire [63:0] i_arrayidx1_gaussian0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx1_gaussian0_narrow_x_b;
    wire [6:0] i_arrayidx1_gaussian0_shift_join_x_q;
    wire [6:0] i_arrayidx1_gaussian0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_gaussian0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom_gaussian4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond9_gaussian8_cmp_nsign_q;
    wire [56:0] i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond9_gaussian8_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond9_gaussian8_cmp_nsign_q_2_q;
    reg [0:0] redist2_sync_together41_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist3_sync_together41_aunroll_x_in_i_valid_1_q;
    reg [63:0] redist4_i_idxprom_gaussian4_vt_join_q_1_q;


    // c_i6_129(CONSTANT,17)
    assign c_i6_129_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_gaussian12(ADD,25)@1
    assign i_fpga_indvars_iv_next8_gaussian12_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_data_out};
    assign i_fpga_indvars_iv_next8_gaussian12_b = {1'b0, c_i6_129_q};
    assign i_fpga_indvars_iv_next8_gaussian12_o = $unsigned(i_fpga_indvars_iv_next8_gaussian12_a) + $unsigned(i_fpga_indvars_iv_next8_gaussian12_b);
    assign i_fpga_indvars_iv_next8_gaussian12_q = i_fpga_indvars_iv_next8_gaussian12_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_gaussian12_sel_x(BITSELECT,44)@1
    assign bgTrunc_i_fpga_indvars_iv_next8_gaussian12_sel_x_b = i_fpga_indvars_iv_next8_gaussian12_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13(BLACKBOX,37)@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_0 thei_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_gaussian12_sel_x_b),
        .in_exitcond9(i_exitcond9_gaussian8_cmp_nsign_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1827(CONSTANT,18)
    assign c_i6_1827_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7(BLACKBOX,34)@1
    // out out_feedback_stall_out_16@20000000
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7 (
        .in_data_in(c_i6_1827_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv7_push16_gaussian13_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond9_gaussian8_cmp_nsign(LOGICAL,71)@1
    assign i_exitcond9_gaussian8_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop16_gaussian7_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond86_gaussian11(BLACKBOX,35)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond86_0 thei_llvm_fpga_push_i1_notexitcond86_gaussian11 (
        .in_data_in(i_exitcond9_gaussian8_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going85_gaussian2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going85_gaussian2(BLACKBOX,32)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going85_0 thei_llvm_fpga_pipeline_keep_going85_gaussian2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond86_gaussian11_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going85_gaussian2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going85_gaussian2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going85_gaussian2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going85_gaussian2_out_pipeline_valid_out;

    // c_i32_126(CONSTANT,16)
    assign c_i32_126_q = $unsigned(32'b00000000000000000000000000000001);

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

    // c_gaussian_c_pmem(CONSTANT,4)
    assign c_gaussian_c_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,72)@2
    assign i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_c_pmem_q[63:7];
    assign i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_c_pmem_q[6:0];

    // c_i32_025(CONSTANT,15)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

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

    // redist0_i_exitcond9_gaussian8_cmp_nsign_q_1(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond9_gaussian8_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond9_gaussian8_cmp_nsign_q_1_q <= $unsigned(i_exitcond9_gaussian8_cmp_nsign_q);
        end
    end

    // i_inc12_gaussian14(ADD,30)@2
    assign i_inc12_gaussian14_a = {1'b0, i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_data_out};
    assign i_inc12_gaussian14_b = {1'b0, c_i32_126_q};
    assign i_inc12_gaussian14_o = $unsigned(i_inc12_gaussian14_a) + $unsigned(i_inc12_gaussian14_b);
    assign i_inc12_gaussian14_q = i_inc12_gaussian14_o[32:0];

    // bgTrunc_i_inc12_gaussian14_sel_x(BITSELECT,45)@2
    assign bgTrunc_i_inc12_gaussian14_sel_x_b = i_inc12_gaussian14_q[31:0];

    // i_llvm_fpga_push_i32_y_037_push17_gaussian15(BLACKBOX,36)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    gaussian_i_llvm_fpga_push_i32_y_037_push17_0 thei_llvm_fpga_push_i32_y_037_push17_gaussian15 (
        .in_data_in(bgTrunc_i_inc12_gaussian14_sel_x_b),
        .in_exitcond9(redist0_i_exitcond9_gaussian8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together41_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_y_037_pop17_gaussian3(BLACKBOX,33)@2
    // out out_feedback_stall_out_17@20000000
    gaussian_i_llvm_fpga_pop_i32_y_037_pop17_0 thei_llvm_fpga_pop_i32_y_037_pop17_gaussian3 (
        .in_data_in(c_i32_025_q),
        .in_dir(redist2_sync_together41_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_y_037_push17_gaussian15_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_gaussian4_sel_x(BITSELECT,60)@2
    assign i_idxprom_gaussian4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_y_037_pop17_gaussian3_out_data_out[31:0]};

    // i_idxprom_gaussian4_vt_select_31(BITSELECT,29)@2
    assign i_idxprom_gaussian4_vt_select_31_b = i_idxprom_gaussian4_sel_x_b[31:0];

    // i_idxprom_gaussian4_vt_join(BITJOIN,28)@2
    assign i_idxprom_gaussian4_vt_join_q = {c_i32_025_q, i_idxprom_gaussian4_vt_select_31_b};

    // i_arrayidx1_gaussian0_dupName_0_trunc_sel_x(BITSELECT,58)@2
    assign i_arrayidx1_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom_gaussian4_vt_join_q[6:0];

    // i_arrayidx1_gaussian0_narrow_x(BITSELECT,51)@2
    assign i_arrayidx1_gaussian0_narrow_x_b = i_arrayidx1_gaussian0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1_gaussian0_shift_join_x(BITJOIN,52)@2
    assign i_arrayidx1_gaussian0_shift_join_x_q = {i_arrayidx1_gaussian0_narrow_x_b, i_arrayidx1_gaussian5_vt_const_1_q};

    // i_arrayidx1_gaussian0_add_x(ADD,48)@2
    assign i_arrayidx1_gaussian0_add_x_a = {1'b0, i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_gaussian0_add_x_b = {1'b0, i_arrayidx1_gaussian0_shift_join_x_q};
    assign i_arrayidx1_gaussian0_add_x_o = $unsigned(i_arrayidx1_gaussian0_add_x_a) + $unsigned(i_arrayidx1_gaussian0_add_x_b);
    assign i_arrayidx1_gaussian0_add_x_q = i_arrayidx1_gaussian0_add_x_o[7:0];

    // i_arrayidx1_gaussian0_dupName_2_trunc_sel_x(BITSELECT,59)@2
    assign i_arrayidx1_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx1_gaussian0_add_x_q[6:0];

    // i_arrayidx1_gaussian0_append_upper_bits_x(BITJOIN,49)@2
    assign i_arrayidx1_gaussian0_append_upper_bits_x_q = {i_arrayidx1_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx1_gaussian0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_gaussian5_vt_select_63(BITSELECT,23)@2
    assign i_arrayidx1_gaussian5_vt_select_63_b = i_arrayidx1_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_gaussian5_vt_const_1(CONSTANT,21)
    assign i_arrayidx1_gaussian5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_gaussian5_vt_join(BITJOIN,22)@2
    assign i_arrayidx1_gaussian5_vt_join_q = {i_arrayidx1_gaussian5_vt_select_63_b, i_arrayidx1_gaussian5_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_gaussian6(BLACKBOX,31)@2
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@3
    // out out_o_valid@3
    // out out_o_writeack@3
    gaussian_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_gaussian6 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_gaussian5_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_i_writedata(c_i32_126_q),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .out_memdep_gaussian_avm_address(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,47)
    assign out_memdep_gaussian_avm_address = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_gaussian6_out_memdep_gaussian_avm_burstcount;

    // redist3_sync_together41_aunroll_x_in_i_valid_1(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together41_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together41_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,63)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together41_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_notcmp83_gaussian10(LOGICAL,38)@3
    assign i_notcmp83_gaussian10_q = redist1_i_exitcond9_gaussian8_cmp_nsign_q_2_q ^ VCC_q;

    // redist1_i_exitcond9_gaussian8_cmp_nsign_q_2(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond9_gaussian8_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond9_gaussian8_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond9_gaussian8_cmp_nsign_q_1_q);
        end
    end

    // redist4_i_idxprom_gaussian4_vt_join_q_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_idxprom_gaussian4_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist4_i_idxprom_gaussian4_vt_join_q_1_q <= $unsigned(i_idxprom_gaussian4_vt_join_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,61)@3
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist4_i_idxprom_gaussian4_vt_join_q_1_q;
    assign out_c0_exi3_2_tpl = redist1_i_exitcond9_gaussian8_cmp_nsign_q_2_q;
    assign out_c0_exi3_3_tpl = i_notcmp83_gaussian10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
