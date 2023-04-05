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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d0
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_i_sfc_logic_s_c0_in_for_body490000_enter965_jacobi_1d0 (
    input wire [31:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount,
    output wire [0:0] out_c0_exi8_0_tpl,
    output wire [0:0] out_c0_exi8_1_tpl,
    output wire [0:0] out_c0_exi8_2_tpl,
    output wire [31:0] out_c0_exi8_3_tpl,
    output wire [63:0] out_c0_exi8_4_tpl,
    output wire [31:0] out_c0_exi8_5_tpl,
    output wire [63:0] out_c0_exi8_6_tpl,
    output wire [0:0] out_c0_exi8_7_tpl,
    output wire [0:0] out_c0_exi8_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_jacobi_1d1,
    input wire [0:0] in_c0_eni295_0_tpl,
    input wire [0:0] in_c0_eni295_1_tpl,
    input wire [0:0] in_c0_eni295_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_042_q;
    wire [31:0] c_i32_143_q;
    wire [3:0] c_i4_739_q;
    wire [7:0] c_i8_146_q;
    wire [7:0] c_i8_9844_q;
    wire [63:0] c_jacobi_1d_A_2_local_pmem_q;
    wire [63:0] c_jacobi_1d_B_local_pmem_q;
    wire [1:0] i_arrayidx5110_jacobi_1d8_vt_const_1_q;
    wire [63:0] i_arrayidx5110_jacobi_1d8_vt_join_q;
    wire [61:0] i_arrayidx5110_jacobi_1d8_vt_select_63_b;
    wire [63:0] i_arrayidx5511_jacobi_1d12_vt_join_q;
    wire [61:0] i_arrayidx5511_jacobi_1d12_vt_select_63_b;
    wire [3:0] i_cleanups_shl_jacobi_1d5_vt_join_q;
    wire [2:0] i_cleanups_shl_jacobi_1d5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_jacobi_1d4_q;
    wire [8:0] i_fpga_indvars_iv_next15_jacobi_1d25_a;
    wire [8:0] i_fpga_indvars_iv_next15_jacobi_1d25_b;
    logic [8:0] i_fpga_indvars_iv_next15_jacobi_1d25_o;
    wire [8:0] i_fpga_indvars_iv_next15_jacobi_1d25_q;
    wire [63:0] i_idxprom50_jacobi_1d7_vt_join_q;
    wire [31:0] i_idxprom50_jacobi_1d7_vt_select_31_b;
    wire [32:0] i_inc59_jacobi_1d16_a;
    wire [32:0] i_inc59_jacobi_1d16_b;
    logic [32:0] i_inc59_jacobi_1d16_o;
    wire [32:0] i_inc59_jacobi_1d16_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_a_23520_jacobi_1d10_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b3622_jacobi_1d14_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_feedback_stall_out_18;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_feedback_stall_out_21;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_valid_out_17;
    wire [0:0] i_masked_jacobi_1d27_q;
    wire [0:0] i_next_cleanups_jacobi_1d23_s;
    reg [3:0] i_next_cleanups_jacobi_1d23_q;
    wire [0:0] i_notcmp_jacobi_1d21_q;
    wire [0:0] i_or_jacobi_1d22_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next15_jacobi_1d25_sel_x_b;
    wire [31:0] bgTrunc_i_inc59_jacobi_1d16_sel_x_b;
    wire [9:0] i_arrayidx5110_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx5110_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx5110_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx5110_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx5110_jacobi_1d0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx5110_jacobi_1d0_narrow_x_b;
    wire [8:0] i_arrayidx5110_jacobi_1d0_shift_join_x_q;
    wire [8:0] i_arrayidx5110_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx5110_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx53_jacobi_1d0_add_x_a;
    wire [64:0] i_arrayidx53_jacobi_1d0_add_x_b;
    logic [64:0] i_arrayidx53_jacobi_1d0_add_x_o;
    wire [64:0] i_arrayidx53_jacobi_1d0_add_x_q;
    wire [61:0] i_arrayidx53_jacobi_1d0_narrow_x_b;
    wire [63:0] i_arrayidx53_jacobi_1d0_shift_join_x_q;
    wire [63:0] i_arrayidx53_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [9:0] i_arrayidx5511_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx5511_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx5511_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx5511_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx5511_jacobi_1d0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx5511_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx57_jacobi_1d0_add_x_a;
    wire [64:0] i_arrayidx57_jacobi_1d0_add_x_b;
    logic [64:0] i_arrayidx57_jacobi_1d0_add_x_o;
    wire [64:0] i_arrayidx57_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx57_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_jacobi_1d3_sel_x_b;
    wire [63:0] i_idxprom50_jacobi_1d7_sel_x_b;
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
    wire [0:0] i_exitcond16_jacobi_1d19_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid134_i_cleanups_shl_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_s;
    reg [3:0] leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_q;
    wire [54:0] i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond16_jacobi_1d19_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q;
    reg [0:0] redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q;
    reg [0:0] redist3_sync_together57_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1_q;
    reg [61:0] redist5_i_arrayidx53_jacobi_1d0_narrow_x_b_1_q;
    reg [0:0] redist6_i_notcmp_jacobi_1d21_q_1_q;
    reg [0:0] redist7_i_first_cleanup_xor_jacobi_1d4_q_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,114)@64 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg1(REG,112)@64 + 1
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

    // valid_fanout_reg9(REG,120)@64 + 1
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

    // leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x(BITSELECT,132)@65
    assign leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid134_i_cleanups_shl_jacobi_1d0_shift_x(BITJOIN,133)@65
    assign leftShiftStage0Idx1_uid134_i_cleanups_shl_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x(MUX,135)@65
    assign leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out or leftShiftStage0Idx1_uid134_i_cleanups_shl_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out;
            1'b1 : leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid134_i_cleanups_shl_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_jacobi_1d5_vt_select_3(BITSELECT,33)@65
    assign i_cleanups_shl_jacobi_1d5_vt_select_3_b = leftShiftStage0_uid136_i_cleanups_shl_jacobi_1d0_shift_x_q[3:1];

    // i_cleanups_shl_jacobi_1d5_vt_join(BITJOIN,32)@65
    assign i_cleanups_shl_jacobi_1d5_vt_join_q = {i_cleanups_shl_jacobi_1d5_vt_select_3_b, GND_q};

    // valid_fanout_reg8(REG,119)@64 + 1
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

    // valid_fanout_reg10(REG,121)@64 + 1
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

    // c_i8_146(CONSTANT,19)
    assign c_i8_146_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next15_jacobi_1d25(ADD,37)@65
    assign i_fpga_indvars_iv_next15_jacobi_1d25_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_data_out};
    assign i_fpga_indvars_iv_next15_jacobi_1d25_b = {1'b0, c_i8_146_q};
    assign i_fpga_indvars_iv_next15_jacobi_1d25_o = $unsigned(i_fpga_indvars_iv_next15_jacobi_1d25_a) + $unsigned(i_fpga_indvars_iv_next15_jacobi_1d25_b);
    assign i_fpga_indvars_iv_next15_jacobi_1d25_q = i_fpga_indvars_iv_next15_jacobi_1d25_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next15_jacobi_1d25_sel_x(BITSELECT,62)@65
    assign bgTrunc_i_fpga_indvars_iv_next15_jacobi_1d25_sel_x_b = i_fpga_indvars_iv_next15_jacobi_1d25_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26(BLACKBOX,52)@65
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_0 thei_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26 (
        .in_c0_ene298(redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q),
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_jacobi_1d25_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9844(CONSTANT,20)
    assign c_i8_9844_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18(BLACKBOX,49)@65
    // out out_feedback_stall_out_17@20000000
    jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18 (
        .in_data_in(c_i8_9844_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i8_fpga_indvars_iv14_push17_jacobi_1d26_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_jacobi_1d19_cmp_nsign(LOGICAL,128)@65
    assign i_exitcond16_jacobi_1d19_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv14_pop17_jacobi_1d18_out_data_out[7:7]));

    // i_notcmp_jacobi_1d21(LOGICAL,55)@65
    assign i_notcmp_jacobi_1d21_q = i_exitcond16_jacobi_1d19_cmp_nsign_q ^ VCC_q;

    // i_or_jacobi_1d22(LOGICAL,56)@65
    assign i_or_jacobi_1d22_q = i_notcmp_jacobi_1d21_q | i_first_cleanup_xor_jacobi_1d4_q;

    // i_next_cleanups_jacobi_1d23(MUX,54)@65
    assign i_next_cleanups_jacobi_1d23_s = i_or_jacobi_1d22_q;
    always @(i_next_cleanups_jacobi_1d23_s or i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out or i_cleanups_shl_jacobi_1d5_vt_join_q)
    begin
        unique case (i_next_cleanups_jacobi_1d23_s)
            1'b0 : i_next_cleanups_jacobi_1d23_q = i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out;
            1'b1 : i_next_cleanups_jacobi_1d23_q = i_cleanups_shl_jacobi_1d5_vt_join_q;
            default : i_next_cleanups_jacobi_1d23_q = 4'b0;
        endcase
    end

    // redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q <= $unsigned(in_c0_eni295_2_tpl);
        end
    end

    // i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24(BLACKBOX,51)@65
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    jacobi_1d_i_llvm_fpga_push_i4_cleanups_push21_0 thei_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24 (
        .in_c0_ene298(redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q),
        .in_data_in(i_next_cleanups_jacobi_1d23_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1(DELAY,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q <= $unsigned(in_c0_eni295_1_tpl);
        end
    end

    // c_i4_739(CONSTANT,18)
    assign c_i4_739_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2(BLACKBOX,48)@65
    // out out_feedback_stall_out_21@20000000
    jacobi_1d_i_llvm_fpga_pop_i4_cleanups_pop21_0 thei_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2 (
        .in_data_in(c_i4_739_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_cleanups_push21_jacobi_1d24_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_jacobi_1d3_sel_x(BITSELECT,107)@65
    assign i_first_cleanup_jacobi_1d3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop21_jacobi_1d2_out_data_out[0:0];

    // i_first_cleanup_xor_jacobi_1d4(LOGICAL,36)@65
    assign i_first_cleanup_xor_jacobi_1d4_q = i_first_cleanup_jacobi_1d3_sel_x_b ^ VCC_q;

    // c_jacobi_1d_A_2_local_pmem(CONSTANT,21)
    assign c_jacobi_1d_A_2_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,137)@65
    assign i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_A_2_local_pmem_q[63:9];
    assign i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_A_2_local_pmem_q[8:0];

    // c_i32_042(CONSTANT,15)
    assign c_i32_042_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,113)@64 + 1
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

    // valid_fanout_reg7(REG,118)@64 + 1
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

    // c_i32_143(CONSTANT,16)
    assign c_i32_143_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc59_jacobi_1d16(ADD,42)@65
    assign i_inc59_jacobi_1d16_a = {1'b0, i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_data_out};
    assign i_inc59_jacobi_1d16_b = {1'b0, c_i32_143_q};
    assign i_inc59_jacobi_1d16_o = $unsigned(i_inc59_jacobi_1d16_a) + $unsigned(i_inc59_jacobi_1d16_b);
    assign i_inc59_jacobi_1d16_q = i_inc59_jacobi_1d16_o[32:0];

    // bgTrunc_i_inc59_jacobi_1d16_sel_x(BITSELECT,63)@65
    assign bgTrunc_i_inc59_jacobi_1d16_sel_x_b = i_inc59_jacobi_1d16_q[31:0];

    // i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17(BLACKBOX,50)@65
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    jacobi_1d_i_llvm_fpga_push_i32_i14_129_push18_0 thei_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17 (
        .in_c0_ene298(redist2_sync_together57_aunroll_x_in_c0_eni295_2_tpl_1_q),
        .in_data_in(bgTrunc_i_inc59_jacobi_1d16_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6(BLACKBOX,47)@65
    // out out_feedback_stall_out_18@20000000
    jacobi_1d_i_llvm_fpga_pop_i32_i14_129_pop18_0 thei_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6 (
        .in_data_in(c_i32_042_q),
        .in_dir(redist1_sync_together57_aunroll_x_in_c0_eni295_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i14_129_push18_jacobi_1d17_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom50_jacobi_1d7_sel_x(BITSELECT,108)@65
    assign i_idxprom50_jacobi_1d7_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i14_129_pop18_jacobi_1d6_out_data_out[31:0]};

    // i_idxprom50_jacobi_1d7_vt_select_31(BITSELECT,41)@65
    assign i_idxprom50_jacobi_1d7_vt_select_31_b = i_idxprom50_jacobi_1d7_sel_x_b[31:0];

    // i_idxprom50_jacobi_1d7_vt_join(BITJOIN,40)@65
    assign i_idxprom50_jacobi_1d7_vt_join_q = {c_i32_042_q, i_idxprom50_jacobi_1d7_vt_select_31_b};

    // i_arrayidx5110_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,77)@65
    assign i_arrayidx5110_jacobi_1d0_dupName_0_trunc_sel_x_b = i_idxprom50_jacobi_1d7_vt_join_q[8:0];

    // i_arrayidx5110_jacobi_1d0_narrow_x(BITSELECT,70)@65
    assign i_arrayidx5110_jacobi_1d0_narrow_x_b = i_arrayidx5110_jacobi_1d0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx5110_jacobi_1d0_shift_join_x(BITJOIN,71)@65
    assign i_arrayidx5110_jacobi_1d0_shift_join_x_q = {i_arrayidx5110_jacobi_1d0_narrow_x_b, i_arrayidx5110_jacobi_1d8_vt_const_1_q};

    // i_arrayidx5110_jacobi_1d0_add_x(ADD,67)@65
    assign i_arrayidx5110_jacobi_1d0_add_x_a = {1'b0, i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx5110_jacobi_1d0_add_x_b = {1'b0, i_arrayidx5110_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx5110_jacobi_1d0_add_x_o = $unsigned(i_arrayidx5110_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx5110_jacobi_1d0_add_x_b);
    assign i_arrayidx5110_jacobi_1d0_add_x_q = i_arrayidx5110_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx5110_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,78)@65
    assign i_arrayidx5110_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx5110_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx5110_jacobi_1d0_append_upper_bits_x(BITJOIN,68)@65
    assign i_arrayidx5110_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx5110_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx5110_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx5110_jacobi_1d8_vt_select_63(BITSELECT,27)@65
    assign i_arrayidx5110_jacobi_1d8_vt_select_63_b = i_arrayidx5110_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx5110_jacobi_1d8_vt_const_1(CONSTANT,25)
    assign i_arrayidx5110_jacobi_1d8_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx5110_jacobi_1d8_vt_join(BITJOIN,26)@65
    assign i_arrayidx5110_jacobi_1d8_vt_join_q = {i_arrayidx5110_jacobi_1d8_vt_select_63_b, i_arrayidx5110_jacobi_1d8_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9(BLACKBOX,45)@65
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@66
    // out out_o_valid@66
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_14_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5110_jacobi_1d8_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_jacobi_1d4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;

    // valid_fanout_reg5(REG,116)@64 + 1
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

    // c_jacobi_1d_B_local_pmem(CONSTANT,22)
    assign c_jacobi_1d_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,138)@65
    assign i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_B_local_pmem_q[63:9];
    assign i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_B_local_pmem_q[8:0];

    // i_arrayidx5511_jacobi_1d0_add_x(ADD,85)@65
    assign i_arrayidx5511_jacobi_1d0_add_x_a = {1'b0, i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx5511_jacobi_1d0_add_x_b = {1'b0, i_arrayidx5110_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx5511_jacobi_1d0_add_x_o = $unsigned(i_arrayidx5511_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx5511_jacobi_1d0_add_x_b);
    assign i_arrayidx5511_jacobi_1d0_add_x_q = i_arrayidx5511_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx5511_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,96)@65
    assign i_arrayidx5511_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx5511_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx5511_jacobi_1d0_append_upper_bits_x(BITJOIN,86)@65
    assign i_arrayidx5511_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx5511_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx5511_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx5511_jacobi_1d12_vt_select_63(BITSELECT,30)@65
    assign i_arrayidx5511_jacobi_1d12_vt_select_63_b = i_arrayidx5511_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx5511_jacobi_1d12_vt_join(BITJOIN,29)@65
    assign i_arrayidx5511_jacobi_1d12_vt_join_q = {i_arrayidx5511_jacobi_1d12_vt_select_63_b, i_arrayidx5110_jacobi_1d8_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13(BLACKBOX,46)@65
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@66
    // out out_o_valid@66
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_15_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5511_jacobi_1d12_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_jacobi_1d4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,66)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;

    // redist3_sync_together57_aunroll_x_in_i_valid_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together57_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together57_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,111)@65 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist6_i_notcmp_jacobi_1d21_q_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_notcmp_jacobi_1d21_q_1_q <= '0;
        end
        else
        begin
            redist6_i_notcmp_jacobi_1d21_q_1_q <= $unsigned(i_notcmp_jacobi_1d21_q);
        end
    end

    // i_masked_jacobi_1d27(LOGICAL,53)@66
    assign i_masked_jacobi_1d27_q = redist6_i_notcmp_jacobi_1d21_q_1_q & redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1_q;

    // redist0_i_exitcond16_jacobi_1d19_cmp_nsign_q_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond16_jacobi_1d19_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond16_jacobi_1d19_cmp_nsign_q_1_q <= $unsigned(i_exitcond16_jacobi_1d19_cmp_nsign_q);
        end
    end

    // i_arrayidx53_jacobi_1d0_narrow_x(BITSELECT,81)@65
    assign i_arrayidx53_jacobi_1d0_narrow_x_b = i_idxprom50_jacobi_1d7_vt_join_q[61:0];

    // redist5_i_arrayidx53_jacobi_1d0_narrow_x_b_1(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx53_jacobi_1d0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist5_i_arrayidx53_jacobi_1d0_narrow_x_b_1_q <= $unsigned(i_arrayidx53_jacobi_1d0_narrow_x_b);
        end
    end

    // i_arrayidx53_jacobi_1d0_shift_join_x(BITJOIN,82)@66
    assign i_arrayidx53_jacobi_1d0_shift_join_x_q = {redist5_i_arrayidx53_jacobi_1d0_narrow_x_b_1_q, i_arrayidx5110_jacobi_1d8_vt_const_1_q};

    // valid_fanout_reg6(REG,117)@65 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_b3622_jacobi_1d14(BLACKBOX,44)@66
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1024i32_b3622_0 thei_llvm_fpga_ffwd_dest_p1024i32_b3622_jacobi_1d14 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_b3622_jacobi_1d14_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx57_jacobi_1d0_add_x(ADD,97)@66
    assign i_arrayidx57_jacobi_1d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_b3622_jacobi_1d14_out_dest_data_out_2_0};
    assign i_arrayidx57_jacobi_1d0_add_x_b = {1'b0, i_arrayidx53_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx57_jacobi_1d0_add_x_o = $unsigned(i_arrayidx57_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx57_jacobi_1d0_add_x_b);
    assign i_arrayidx57_jacobi_1d0_add_x_q = i_arrayidx57_jacobi_1d0_add_x_o[64:0];

    // i_arrayidx57_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,102)@66
    assign i_arrayidx57_jacobi_1d0_dupName_0_trunc_sel_x_b = i_arrayidx57_jacobi_1d0_add_x_q[63:0];

    // valid_fanout_reg4(REG,115)@65 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_a_23520_jacobi_1d10(BLACKBOX,43)@66
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1024i32_a_23520_0 thei_llvm_fpga_ffwd_dest_p1024i32_a_23520_jacobi_1d10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_a_23520_jacobi_1d10_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx53_jacobi_1d0_add_x(ADD,79)@66
    assign i_arrayidx53_jacobi_1d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_a_23520_jacobi_1d10_out_dest_data_out_1_0};
    assign i_arrayidx53_jacobi_1d0_add_x_b = {1'b0, i_arrayidx53_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx53_jacobi_1d0_add_x_o = $unsigned(i_arrayidx53_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx53_jacobi_1d0_add_x_b);
    assign i_arrayidx53_jacobi_1d0_add_x_q = i_arrayidx53_jacobi_1d0_add_x_o[64:0];

    // i_arrayidx53_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,84)@66
    assign i_arrayidx53_jacobi_1d0_dupName_0_trunc_sel_x_b = i_arrayidx53_jacobi_1d0_add_x_q[63:0];

    // redist7_i_first_cleanup_xor_jacobi_1d4_q_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_first_cleanup_xor_jacobi_1d4_q_1_q <= '0;
        end
        else
        begin
            redist7_i_first_cleanup_xor_jacobi_1d4_q_1_q <= $unsigned(i_first_cleanup_xor_jacobi_1d4_q);
        end
    end

    // redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1_q <= $unsigned(i_first_cleanup_jacobi_1d3_sel_x_b);
        end
    end

    // sync_out_aunroll_x(GPOUT,109)@66
    assign out_c0_exi8_0_tpl = GND_q;
    assign out_c0_exi8_1_tpl = redist4_i_first_cleanup_jacobi_1d3_sel_x_b_1_q;
    assign out_c0_exi8_2_tpl = redist7_i_first_cleanup_xor_jacobi_1d4_q_1_q;
    assign out_c0_exi8_3_tpl = i_llvm_fpga_mem_unnamed_jacobi_1d14_jacobi_1d9_out_o_readdata;
    assign out_c0_exi8_4_tpl = i_arrayidx53_jacobi_1d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi8_5_tpl = i_llvm_fpga_mem_unnamed_jacobi_1d15_jacobi_1d13_out_o_readdata;
    assign out_c0_exi8_6_tpl = i_arrayidx57_jacobi_1d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi8_7_tpl = redist0_i_exitcond16_jacobi_1d19_cmp_nsign_q_1_q;
    assign out_c0_exi8_8_tpl = i_masked_jacobi_1d27_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_jacobi_1d1 = GND_q;

endmodule
