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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body39_bicgs_c0_enter11010_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body39_s_c0_enter11010_bicg0 (
    input wire [31:0] in_unnamed_bicg13_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg13_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_burstcount,
    output wire [0:0] out_c0_exi6117_0_tpl,
    output wire [63:0] out_c0_exi6117_1_tpl,
    output wire [63:0] out_c0_exi6117_2_tpl,
    output wire [31:0] out_c0_exi6117_3_tpl,
    output wire [0:0] out_c0_exi6117_4_tpl,
    output wire [0:0] out_c0_exi6117_5_tpl,
    output wire [0:0] out_c0_exi6117_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg1,
    input wire [0:0] in_c0_eni1109_0_tpl,
    input wire [0:0] in_c0_eni1109_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_bicg_q_local_pmem_q;
    wire [31:0] c_i32_025_q;
    wire [31:0] c_i32_129_q;
    wire [5:0] c_i6_128_q;
    wire [5:0] c_i6_2826_q;
    wire [1:0] i_arrayidx416_bicg5_vt_const_1_q;
    wire [63:0] i_arrayidx416_bicg5_vt_join_q;
    wire [61:0] i_arrayidx416_bicg5_vt_select_63_b;
    wire [6:0] i_fpga_indvars_iv_next15_bicg12_a;
    wire [6:0] i_fpga_indvars_iv_next15_bicg12_b;
    logic [6:0] i_fpga_indvars_iv_next15_bicg12_o;
    wire [6:0] i_fpga_indvars_iv_next15_bicg12_q;
    wire [63:0] i_idxprom40_bicg4_vt_join_q;
    wire [31:0] i_idxprom40_bicg4_vt_select_31_b;
    wire [32:0] i_inc67_bicg14_a;
    wire [32:0] i_inc67_bicg14_b;
    logic [32:0] i_inc67_bicg14_o;
    wire [32:0] i_inc67_bicg14_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_feedback_stall_out_17;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_valid_out_16;
    wire [0:0] i_notcmp42_bicg10_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next15_bicg12_sel_x_b;
    wire [31:0] bgTrunc_i_inc67_bicg14_sel_x_b;
    wire [7:0] i_arrayidx416_bicg0_add_x_a;
    wire [7:0] i_arrayidx416_bicg0_add_x_b;
    logic [7:0] i_arrayidx416_bicg0_add_x_o;
    wire [7:0] i_arrayidx416_bicg0_add_x_q;
    wire [63:0] i_arrayidx416_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx416_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx416_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx416_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx416_bicg0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom40_bicg4_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond16_bicg8_cmp_nsign_q;
    wire [56:0] i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond16_bicg8_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond16_bicg8_cmp_nsign_q_5_q;
    reg [0:0] redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_0;
    reg [0:0] redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_1;
    reg [0:0] redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_2;
    reg [0:0] redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1_q;
    reg [0:0] redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_q;
    reg [0:0] redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_0;
    reg [0:0] redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_1;
    reg [0:0] redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_2;
    reg [0:0] redist4_sync_together41_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_sync_together41_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist4_sync_together41_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist4_sync_together41_aunroll_x_in_i_valid_4_delay_2;
    reg [63:0] redist5_i_idxprom40_bicg4_vt_join_q_4_inputreg0_q;
    wire redist5_i_idxprom40_bicg4_vt_join_q_4_mem_reset0;
    wire [63:0] redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ia;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_mem_aa;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ab;
    wire [63:0] redist5_i_idxprom40_bicg4_vt_join_q_4_mem_iq;
    wire [63:0] redist5_i_idxprom40_bicg4_vt_join_q_4_mem_q;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_i;
    reg [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_cmpReg_q;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_notEnable_q;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist5_i_idxprom40_bicg4_vt_join_q_4_enaAnd_q;
    reg [63:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_inputreg0_q;
    wire redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_reset0;
    wire [63:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ia;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_aa;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ab;
    wire [63:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_iq;
    wire [63:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_q;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_i;
    reg [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_cmpReg_q;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_notEnable_q;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist6_i_arrayidx416_bicg5_vt_join_q_4_enaAnd_q;


    // c_i6_128(CONSTANT,17)
    assign c_i6_128_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next15_bicg12(ADD,25)@1
    assign i_fpga_indvars_iv_next15_bicg12_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_data_out};
    assign i_fpga_indvars_iv_next15_bicg12_b = {1'b0, c_i6_128_q};
    assign i_fpga_indvars_iv_next15_bicg12_o = $unsigned(i_fpga_indvars_iv_next15_bicg12_a) + $unsigned(i_fpga_indvars_iv_next15_bicg12_b);
    assign i_fpga_indvars_iv_next15_bicg12_q = i_fpga_indvars_iv_next15_bicg12_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next15_bicg12_sel_x(BITSELECT,44)@1
    assign bgTrunc_i_fpga_indvars_iv_next15_bicg12_sel_x_b = i_fpga_indvars_iv_next15_bicg12_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13(BLACKBOX,37)@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_0 thei_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_bicg12_sel_x_b),
        .in_exitcond16(i_exitcond16_bicg8_cmp_nsign_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2826(CONSTANT,18)
    assign c_i6_2826_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7(BLACKBOX,34)@1
    // out out_feedback_stall_out_16@20000000
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7 (
        .in_data_in(c_i6_2826_q),
        .in_dir(in_c0_eni1109_1_tpl),
        .in_feedback_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv14_push16_bicg13_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_bicg8_cmp_nsign(LOGICAL,71)@1
    assign i_exitcond16_bicg8_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv14_pop16_bicg7_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond45_bicg11(BLACKBOX,35)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond45_0 thei_llvm_fpga_push_i1_notexitcond45_bicg11 (
        .in_data_in(i_exitcond16_bicg8_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going44_bicg2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going44_bicg2(BLACKBOX,32)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going44_0 thei_llvm_fpga_pipeline_keep_going44_bicg2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond45_bicg11_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going44_bicg2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going44_bicg2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going44_bicg2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going44_bicg2_out_pipeline_valid_out;

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

    // c_bicg_q_local_pmem(CONSTANT,4)
    assign c_bicg_q_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx416_bicg0_upper_bits_x_merged_bit_select(BITSELECT,72)@2
    assign i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_q_local_pmem_q[63:7];
    assign i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_q_local_pmem_q[6:0];

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

    // redist0_i_exitcond16_bicg8_cmp_nsign_q_1(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond16_bicg8_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond16_bicg8_cmp_nsign_q_1_q <= $unsigned(i_exitcond16_bicg8_cmp_nsign_q);
        end
    end

    // c_i32_129(CONSTANT,16)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc67_bicg14(ADD,30)@2
    assign i_inc67_bicg14_a = {1'b0, i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_data_out};
    assign i_inc67_bicg14_b = {1'b0, c_i32_129_q};
    assign i_inc67_bicg14_o = $unsigned(i_inc67_bicg14_a) + $unsigned(i_inc67_bicg14_b);
    assign i_inc67_bicg14_q = i_inc67_bicg14_o[32:0];

    // bgTrunc_i_inc67_bicg14_sel_x(BITSELECT,45)@2
    assign bgTrunc_i_inc67_bicg14_sel_x_b = i_inc67_bicg14_q[31:0];

    // i_llvm_fpga_push_i32_i35_041_push17_bicg15(BLACKBOX,36)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    bicg_i_llvm_fpga_push_i32_i35_041_push17_0 thei_llvm_fpga_push_i32_i35_041_push17_bicg15 (
        .in_data_in(bgTrunc_i_inc67_bicg14_sel_x_b),
        .in_exitcond16(redist0_i_exitcond16_bicg8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1_q <= $unsigned(in_c0_eni1109_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i35_041_pop17_bicg3(BLACKBOX,33)@2
    // out out_feedback_stall_out_17@20000000
    bicg_i_llvm_fpga_pop_i32_i35_041_pop17_0 thei_llvm_fpga_pop_i32_i35_041_pop17_bicg3 (
        .in_data_in(c_i32_025_q),
        .in_dir(redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_i35_041_push17_bicg15_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom40_bicg4_sel_x(BITSELECT,60)@2
    assign i_idxprom40_bicg4_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i35_041_pop17_bicg3_out_data_out[31:0]};

    // i_idxprom40_bicg4_vt_select_31(BITSELECT,29)@2
    assign i_idxprom40_bicg4_vt_select_31_b = i_idxprom40_bicg4_sel_x_b[31:0];

    // i_idxprom40_bicg4_vt_join(BITJOIN,28)@2
    assign i_idxprom40_bicg4_vt_join_q = {c_i32_025_q, i_idxprom40_bicg4_vt_select_31_b};

    // i_arrayidx416_bicg0_dupName_0_trunc_sel_x(BITSELECT,58)@2
    assign i_arrayidx416_bicg0_dupName_0_trunc_sel_x_b = i_idxprom40_bicg4_vt_join_q[6:0];

    // i_arrayidx416_bicg0_narrow_x(BITSELECT,51)@2
    assign i_arrayidx416_bicg0_narrow_x_b = i_arrayidx416_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx416_bicg0_shift_join_x(BITJOIN,52)@2
    assign i_arrayidx416_bicg0_shift_join_x_q = {i_arrayidx416_bicg0_narrow_x_b, i_arrayidx416_bicg5_vt_const_1_q};

    // i_arrayidx416_bicg0_add_x(ADD,48)@2
    assign i_arrayidx416_bicg0_add_x_a = {1'b0, i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx416_bicg0_add_x_b = {1'b0, i_arrayidx416_bicg0_shift_join_x_q};
    assign i_arrayidx416_bicg0_add_x_o = $unsigned(i_arrayidx416_bicg0_add_x_a) + $unsigned(i_arrayidx416_bicg0_add_x_b);
    assign i_arrayidx416_bicg0_add_x_q = i_arrayidx416_bicg0_add_x_o[7:0];

    // i_arrayidx416_bicg0_dupName_2_trunc_sel_x(BITSELECT,59)@2
    assign i_arrayidx416_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx416_bicg0_add_x_q[6:0];

    // i_arrayidx416_bicg0_append_upper_bits_x(BITJOIN,49)@2
    assign i_arrayidx416_bicg0_append_upper_bits_x_q = {i_arrayidx416_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx416_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx416_bicg5_vt_select_63(BITSELECT,23)@2
    assign i_arrayidx416_bicg5_vt_select_63_b = i_arrayidx416_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx416_bicg5_vt_const_1(CONSTANT,21)
    assign i_arrayidx416_bicg5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx416_bicg5_vt_join(BITJOIN,22)@2
    assign i_arrayidx416_bicg5_vt_join_q = {i_arrayidx416_bicg5_vt_select_63_b, i_arrayidx416_bicg5_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg13_bicg6(BLACKBOX,31)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_bicg13_bicg_avm_address@20000000
    // out out_unnamed_bicg13_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg13_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg13_bicg_avm_enable@20000000
    // out out_unnamed_bicg13_bicg_avm_read@20000000
    // out out_unnamed_bicg13_bicg_avm_write@20000000
    // out out_unnamed_bicg13_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_13_bicg0 thei_llvm_fpga_mem_unnamed_bicg13_bicg6 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx416_bicg5_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_unnamed_bicg13_bicg_avm_readdata(in_unnamed_bicg13_bicg_avm_readdata),
        .in_unnamed_bicg13_bicg_avm_readdatavalid(in_unnamed_bicg13_bicg_avm_readdatavalid),
        .in_unnamed_bicg13_bicg_avm_waitrequest(in_unnamed_bicg13_bicg_avm_waitrequest),
        .in_unnamed_bicg13_bicg_avm_writeack(in_unnamed_bicg13_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg13_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_address),
        .out_unnamed_bicg13_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_burstcount),
        .out_unnamed_bicg13_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_byteenable),
        .out_unnamed_bicg13_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_enable),
        .out_unnamed_bicg13_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_read),
        .out_unnamed_bicg13_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_write),
        .out_unnamed_bicg13_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,47)
    assign out_unnamed_bicg13_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_address;
    assign out_unnamed_bicg13_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_enable;
    assign out_unnamed_bicg13_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_read;
    assign out_unnamed_bicg13_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_write;
    assign out_unnamed_bicg13_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_writedata;
    assign out_unnamed_bicg13_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_byteenable;
    assign out_unnamed_bicg13_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_unnamed_bicg13_bicg_avm_burstcount;

    // redist4_sync_together41_aunroll_x_in_i_valid_4(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist4_sync_together41_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_1 <= redist4_sync_together41_aunroll_x_in_i_valid_4_delay_0;
            redist4_sync_together41_aunroll_x_in_i_valid_4_delay_2 <= redist4_sync_together41_aunroll_x_in_i_valid_4_delay_1;
            redist4_sync_together41_aunroll_x_in_i_valid_4_q <= redist4_sync_together41_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,63)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together41_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_0 <= '0;
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_1 <= '0;
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_2 <= '0;
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_q <= '0;
        end
        else
        begin
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_0 <= $unsigned(redist2_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_1_q);
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_1 <= redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_0;
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_2 <= redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_1;
            redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_q <= redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_delay_2;
        end
    end

    // i_notcmp42_bicg10(LOGICAL,38)@6
    assign i_notcmp42_bicg10_q = redist1_i_exitcond16_bicg8_cmp_nsign_q_5_q ^ VCC_q;

    // redist1_i_exitcond16_bicg8_cmp_nsign_q_5(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_0 <= '0;
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_1 <= '0;
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_2 <= '0;
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_q <= '0;
        end
        else
        begin
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_0 <= $unsigned(redist0_i_exitcond16_bicg8_cmp_nsign_q_1_q);
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_1 <= redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_0;
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_2 <= redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_1;
            redist1_i_exitcond16_bicg8_cmp_nsign_q_5_q <= redist1_i_exitcond16_bicg8_cmp_nsign_q_5_delay_2;
        end
    end

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_notEnable(LOGICAL,94)
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_nor(LOGICAL,95)
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_nor_q = ~ (redist6_i_arrayidx416_bicg5_vt_join_q_4_notEnable_q | redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena_q);

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_cmpReg(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_arrayidx416_bicg5_vt_join_q_4_nor_q == 1'b1)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena_q <= $unsigned(redist6_i_arrayidx416_bicg5_vt_join_q_4_cmpReg_q);
        end
    end

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_enaAnd(LOGICAL,97)
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_enaAnd_q = redist6_i_arrayidx416_bicg5_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt(COUNTER,91)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_i <= $unsigned(redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_q = redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_i[0:0];

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_inputreg0(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx416_bicg5_vt_join_q);
        end
    end

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_wraddr(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_i_arrayidx416_bicg5_vt_join_q_4_wraddr_q <= $unsigned(redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_q);
        end
    end

    // redist6_i_arrayidx416_bicg5_vt_join_q_4_mem(DUALMEM,90)
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ia = $unsigned(redist6_i_arrayidx416_bicg5_vt_join_q_4_inputreg0_q);
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_aa = redist6_i_arrayidx416_bicg5_vt_join_q_4_wraddr_q;
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ab = redist6_i_arrayidx416_bicg5_vt_join_q_4_rdcnt_q;
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_dmem (
        .clocken1(redist6_i_arrayidx416_bicg5_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_aa),
        .data_a(redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_ab),
        .q_b(redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_iq),
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
    assign redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_q = redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_iq[63:0];

    // redist5_i_idxprom40_bicg4_vt_join_q_4_notEnable(LOGICAL,85)
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_i_idxprom40_bicg4_vt_join_q_4_nor(LOGICAL,86)
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_nor_q = ~ (redist5_i_idxprom40_bicg4_vt_join_q_4_notEnable_q | redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena_q);

    // redist5_i_idxprom40_bicg4_vt_join_q_4_cmpReg(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_i_idxprom40_bicg4_vt_join_q_4_nor_q == 1'b1)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena_q <= $unsigned(redist5_i_idxprom40_bicg4_vt_join_q_4_cmpReg_q);
        end
    end

    // redist5_i_idxprom40_bicg4_vt_join_q_4_enaAnd(LOGICAL,88)
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_enaAnd_q = redist5_i_idxprom40_bicg4_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt(COUNTER,82)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_i <= $unsigned(redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_q = redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_i[0:0];

    // redist5_i_idxprom40_bicg4_vt_join_q_4_inputreg0(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom40_bicg4_vt_join_q);
        end
    end

    // redist5_i_idxprom40_bicg4_vt_join_q_4_wraddr(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_i_idxprom40_bicg4_vt_join_q_4_wraddr_q <= $unsigned(redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_q);
        end
    end

    // redist5_i_idxprom40_bicg4_vt_join_q_4_mem(DUALMEM,81)
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ia = $unsigned(redist5_i_idxprom40_bicg4_vt_join_q_4_inputreg0_q);
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_mem_aa = redist5_i_idxprom40_bicg4_vt_join_q_4_wraddr_q;
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ab = redist5_i_idxprom40_bicg4_vt_join_q_4_rdcnt_q;
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist5_i_idxprom40_bicg4_vt_join_q_4_mem_dmem (
        .clocken1(redist5_i_idxprom40_bicg4_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_i_idxprom40_bicg4_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_i_idxprom40_bicg4_vt_join_q_4_mem_aa),
        .data_a(redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_idxprom40_bicg4_vt_join_q_4_mem_ab),
        .q_b(redist5_i_idxprom40_bicg4_vt_join_q_4_mem_iq),
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
    assign redist5_i_idxprom40_bicg4_vt_join_q_4_mem_q = redist5_i_idxprom40_bicg4_vt_join_q_4_mem_iq[63:0];

    // sync_out_aunroll_x(GPOUT,61)@6
    assign out_c0_exi6117_0_tpl = GND_q;
    assign out_c0_exi6117_1_tpl = redist5_i_idxprom40_bicg4_vt_join_q_4_mem_q;
    assign out_c0_exi6117_2_tpl = redist6_i_arrayidx416_bicg5_vt_join_q_4_mem_q;
    assign out_c0_exi6117_3_tpl = i_llvm_fpga_mem_unnamed_bicg13_bicg6_out_o_readdata;
    assign out_c0_exi6117_4_tpl = redist1_i_exitcond16_bicg8_cmp_nsign_q_5_q;
    assign out_c0_exi6117_5_tpl = i_notcmp42_bicg10_q;
    assign out_c0_exi6117_6_tpl = redist3_sync_together41_aunroll_x_in_c0_eni1109_1_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_bicg1 = GND_q;

endmodule
