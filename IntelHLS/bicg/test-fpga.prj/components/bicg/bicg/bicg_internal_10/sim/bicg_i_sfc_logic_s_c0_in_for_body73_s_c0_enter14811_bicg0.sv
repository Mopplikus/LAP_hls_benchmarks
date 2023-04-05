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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body73_bicgs_c0_enter14811_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body73_s_c0_enter14811_bicg0 (
    input wire [31:0] in_unnamed_bicg20_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_memdep_7_bicg_avm_readdata,
    input wire [0:0] in_memdep_7_bicg_avm_writeack,
    input wire [0:0] in_memdep_7_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_7_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg20_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg20_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg20_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_burstcount,
    output wire [63:0] out_memdep_7_bicg_avm_address,
    output wire [0:0] out_memdep_7_bicg_avm_enable,
    output wire [0:0] out_memdep_7_bicg_avm_read,
    output wire [0:0] out_memdep_7_bicg_avm_write,
    output wire [63:0] out_memdep_7_bicg_avm_writedata,
    output wire [7:0] out_memdep_7_bicg_avm_byteenable,
    output wire [0:0] out_memdep_7_bicg_avm_burstcount,
    output wire [0:0] out_lsu_memdep_7_o_active,
    output wire [0:0] out_c0_exi2151_0_tpl,
    output wire [0:0] out_c0_exi2151_1_tpl,
    output wire [0:0] out_c0_exi2151_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg1,
    input wire [0:0] in_c0_eni1147_0_tpl,
    input wire [0:0] in_c0_eni1147_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_bicg_q_local_pmem_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_151_q;
    wire [3:0] c_i4_747_q;
    wire [5:0] c_i6_154_q;
    wire [5:0] c_i6_2852_q;
    wire [1:0] i_arrayidx7511_bicg14_vt_const_1_q;
    wire [63:0] i_arrayidx7511_bicg14_vt_join_q;
    wire [61:0] i_arrayidx7511_bicg14_vt_select_63_b;
    wire [3:0] i_cleanups_shl_bicg5_vt_join_q;
    wire [2:0] i_cleanups_shl_bicg5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_bicg4_q;
    wire [6:0] i_fpga_indvars_iv_next18_bicg29_a;
    wire [6:0] i_fpga_indvars_iv_next18_bicg29_b;
    logic [6:0] i_fpga_indvars_iv_next18_bicg29_o;
    wire [6:0] i_fpga_indvars_iv_next18_bicg29_q;
    wire [63:0] i_idxprom74_bicg13_vt_join_q;
    wire [31:0] i_idxprom74_bicg13_vt_select_31_b;
    wire [32:0] i_inc79_bicg19_a;
    wire [32:0] i_inc79_bicg19_b;
    logic [32:0] i_inc79_bicg19_o;
    wire [32:0] i_inc79_bicg19_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_q4622_bicg16_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_mem_memdep_7_bicg18_out_lsu_memdep_7_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_feedback_stall_out_20;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_feedback_stall_out_22;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_feedback_stall_out_21;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_valid_out_22;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_valid_out_19;
    wire [0:0] i_masked_bicg31_qi;
    reg [0:0] i_masked_bicg31_q;
    wire [0:0] i_next_cleanups_bicg27_s;
    reg [3:0] i_next_cleanups_bicg27_q;
    wire [3:0] i_next_initerations_bicg8_vt_join_q;
    wire [2:0] i_next_initerations_bicg8_vt_select_2_b;
    wire [0:0] i_notcmp_bicg24_q;
    wire [0:0] i_or_bicg26_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next18_bicg29_sel_x_b;
    wire [31:0] bgTrunc_i_inc79_bicg19_sel_x_b;
    wire [7:0] i_arrayidx7511_bicg0_add_x_a;
    wire [7:0] i_arrayidx7511_bicg0_add_x_b;
    logic [7:0] i_arrayidx7511_bicg0_add_x_o;
    wire [7:0] i_arrayidx7511_bicg0_add_x_q;
    wire [63:0] i_arrayidx7511_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx7511_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx7511_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx7511_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx7511_bicg0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx77_bicg0_add_x_a;
    wire [64:0] i_arrayidx77_bicg0_add_x_b;
    logic [64:0] i_arrayidx77_bicg0_add_x_o;
    wire [64:0] i_arrayidx77_bicg0_add_x_q;
    wire [61:0] i_arrayidx77_bicg0_narrow_x_b;
    wire [63:0] i_arrayidx77_bicg0_shift_join_x_q;
    wire [63:0] i_arrayidx77_bicg0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_bicg3_sel_x_b;
    wire [63:0] i_idxprom74_bicg13_sel_x_b;
    wire [0:0] i_last_initeration_bicg10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond19_bicg22_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid132_i_cleanups_shl_bicg0_shift_x_q;
    wire [0:0] leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_s;
    reg [3:0] leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid138_i_next_initerations_bicg0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid140_i_next_initerations_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_s;
    reg [3:0] rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_q;
    wire [56:0] i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [0:0] redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q;
    reg [0:0] redist2_sync_together70_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together70_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist3_sync_together70_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist3_sync_together70_aunroll_x_in_i_valid_4_delay_1;
    reg [61:0] redist4_i_arrayidx77_bicg0_narrow_x_b_4_q;
    reg [61:0] redist4_i_arrayidx77_bicg0_narrow_x_b_4_delay_0;
    reg [0:0] redist5_i_masked_bicg31_q_8_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_9_q;
    reg [0:0] redist8_i_first_cleanup_xor_bicg4_q_4_q;
    reg [0:0] redist8_i_first_cleanup_xor_bicg4_q_4_delay_0;
    reg [0:0] redist8_i_first_cleanup_xor_bicg4_q_4_delay_1;
    reg [0:0] redist8_i_first_cleanup_xor_bicg4_q_4_delay_2;
    reg [61:0] redist4_i_arrayidx77_bicg0_narrow_x_b_4_inputreg0_q;
    reg [61:0] redist4_i_arrayidx77_bicg0_narrow_x_b_4_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together70_aunroll_x_in_i_valid_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together70_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together70_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x(BITSELECT,130)@2
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_b = leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid132_i_cleanups_shl_bicg0_shift_x(BITJOIN,131)@2
    assign leftShiftStage0Idx1_uid132_i_cleanups_shl_bicg0_shift_x_q = {leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl_bicg0_shift_x_b, GND_q};

    // leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x(MUX,133)@2
    assign leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out or leftShiftStage0Idx1_uid132_i_cleanups_shl_bicg0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_s)
            1'b0 : leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out;
            1'b1 : leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_q = leftShiftStage0Idx1_uid132_i_cleanups_shl_bicg0_shift_x_q;
            default : leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_bicg5_vt_select_3(BITSELECT,33)@2
    assign i_cleanups_shl_bicg5_vt_select_3_b = leftShiftStage0_uid134_i_cleanups_shl_bicg0_shift_x_q[3:1];

    // i_cleanups_shl_bicg5_vt_join(BITJOIN,32)@2
    assign i_cleanups_shl_bicg5_vt_join_q = {i_cleanups_shl_bicg5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_bicg4(LOGICAL,36)@2
    assign i_first_cleanup_xor_bicg4_q = i_first_cleanup_bicg3_sel_x_b ^ VCC_q;

    // i_notcmp_bicg24(LOGICAL,63)@2
    assign i_notcmp_bicg24_q = i_exitcond19_bicg22_cmp_nsign_q ^ VCC_q;

    // i_or_bicg26(LOGICAL,64)@2
    assign i_or_bicg26_q = i_notcmp_bicg24_q | i_first_cleanup_xor_bicg4_q;

    // i_next_cleanups_bicg27(MUX,59)@2
    assign i_next_cleanups_bicg27_s = i_or_bicg26_q;
    always @(i_next_cleanups_bicg27_s or i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out or i_cleanups_shl_bicg5_vt_join_q)
    begin
        unique case (i_next_cleanups_bicg27_s)
            1'b0 : i_next_cleanups_bicg27_q = i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out;
            1'b1 : i_next_cleanups_bicg27_q = i_cleanups_shl_bicg5_vt_join_q;
            default : i_next_cleanups_bicg27_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push22_bicg28(BLACKBOX,55)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    bicg_i_llvm_fpga_push_i4_cleanups_push22_0 thei_llvm_fpga_push_i4_cleanups_push22_bicg28 (
        .in_data_in(i_next_cleanups_bicg27_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_feedback_stall_out_22),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together70_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q <= $unsigned(in_c0_eni1147_1_tpl);
        end
    end

    // c_i4_747(CONSTANT,23)
    assign c_i4_747_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop22_bicg2(BLACKBOX,49)@2
    // out out_feedback_stall_out_22@20000000
    bicg_i_llvm_fpga_pop_i4_cleanups_pop22_0 thei_llvm_fpga_pop_i4_cleanups_pop22_bicg2 (
        .in_data_in(c_i4_747_q),
        .in_dir(redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i4_cleanups_push22_bicg28_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together70_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_bicg3_sel_x(BITSELECT,100)@2
    assign i_first_cleanup_bicg3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop22_bicg2_out_data_out[0:0];

    // c_i6_154(CONSTANT,24)
    assign c_i6_154_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next18_bicg29(ADD,37)@2
    assign i_fpga_indvars_iv_next18_bicg29_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_data_out};
    assign i_fpga_indvars_iv_next18_bicg29_b = {1'b0, c_i6_154_q};
    assign i_fpga_indvars_iv_next18_bicg29_o = $unsigned(i_fpga_indvars_iv_next18_bicg29_a) + $unsigned(i_fpga_indvars_iv_next18_bicg29_b);
    assign i_fpga_indvars_iv_next18_bicg29_q = i_fpga_indvars_iv_next18_bicg29_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next18_bicg29_sel_x(BITSELECT,71)@2
    assign bgTrunc_i_fpga_indvars_iv_next18_bicg29_sel_x_b = i_fpga_indvars_iv_next18_bicg29_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30(BLACKBOX,57)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_0 thei_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_bicg29_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_feedback_stall_out_19),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together70_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2852(CONSTANT,25)
    assign c_i6_2852_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21(BLACKBOX,51)@2
    // out out_feedback_stall_out_19@20000000
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21 (
        .in_data_in(c_i6_2852_q),
        .in_dir(redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i6_fpga_indvars_iv17_push19_bicg30_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together70_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_bicg22_cmp_nsign(LOGICAL,126)@2
    assign i_exitcond19_bicg22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop19_bicg21_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_bicg25(BLACKBOX,53)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_bicg25 (
        .in_data_in(i_exitcond19_bicg22_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_bicg3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together70_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,112)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid138_i_next_initerations_bicg0_shift_x(BITSELECT,137)@2
    assign rightShiftStage0Idx1Rng1_uid138_i_next_initerations_bicg0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid140_i_next_initerations_bicg0_shift_x(BITJOIN,139)@2
    assign rightShiftStage0Idx1_uid140_i_next_initerations_bicg0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid138_i_next_initerations_bicg0_shift_x_b};

    // valid_fanout_reg1(REG,110)@1 + 1
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

    // valid_fanout_reg2(REG,111)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push21_bicg9(BLACKBOX,56)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    bicg_i_llvm_fpga_push_i4_initerations_push21_0 thei_llvm_fpga_push_i4_initerations_push21_bicg9 (
        .in_data_in(i_next_initerations_bicg8_vt_join_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_feedback_stall_out_21),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop21_bicg7(BLACKBOX,50)@2
    // out out_feedback_stall_out_21@20000000
    bicg_i_llvm_fpga_pop_i4_initerations_pop21_0 thei_llvm_fpga_pop_i4_initerations_pop21_bicg7 (
        .in_data_in(c_i4_747_q),
        .in_dir(redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_initerations_push21_bicg9_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x(MUX,141)@2
    assign rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_data_out or rightShiftStage0Idx1_uid140_i_next_initerations_bicg0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_s)
            1'b0 : rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop21_bicg7_out_data_out;
            1'b1 : rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_q = rightShiftStage0Idx1_uid140_i_next_initerations_bicg0_shift_x_q;
            default : rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_bicg8_vt_select_2(BITSELECT,62)@2
    assign i_next_initerations_bicg8_vt_select_2_b = rightShiftStage0_uid142_i_next_initerations_bicg0_shift_x_q[2:0];

    // i_next_initerations_bicg8_vt_join(BITJOIN,61)@2
    assign i_next_initerations_bicg8_vt_join_q = {GND_q, i_next_initerations_bicg8_vt_select_2_b};

    // i_last_initeration_bicg10_sel_x(BITSELECT,102)@2
    assign i_last_initeration_bicg10_sel_x_b = i_next_initerations_bicg8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_bicg11(BLACKBOX,52)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    bicg_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_bicg11 (
        .in_data_in(i_last_initeration_bicg10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6(BLACKBOX,47)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_bicg6 (
        .in_data_in(in_c0_eni1147_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_bicg11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_bicg25_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_bicg6_out_pipeline_valid_out;

    // valid_fanout_reg5(REG,114)@1 + 1
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

    // c_bicg_q_local_pmem(CONSTANT,4)
    assign c_bicg_q_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select(BITSELECT,143)@2
    assign i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_q_local_pmem_q[63:7];
    assign i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_q_local_pmem_q[6:0];

    // c_i32_050(CONSTANT,20)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,113)@1 + 1
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

    // valid_fanout_reg8(REG,117)@1 + 1
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

    // c_i32_151(CONSTANT,21)
    assign c_i32_151_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc79_bicg19(ADD,42)@2
    assign i_inc79_bicg19_a = {1'b0, i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_data_out};
    assign i_inc79_bicg19_b = {1'b0, c_i32_151_q};
    assign i_inc79_bicg19_o = $unsigned(i_inc79_bicg19_a) + $unsigned(i_inc79_bicg19_b);
    assign i_inc79_bicg19_q = i_inc79_bicg19_o[32:0];

    // bgTrunc_i_inc79_bicg19_sel_x(BITSELECT,72)@2
    assign bgTrunc_i_inc79_bicg19_sel_x_b = i_inc79_bicg19_q[31:0];

    // i_llvm_fpga_push_i32_i69_038_push20_bicg20(BLACKBOX,54)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    bicg_i_llvm_fpga_push_i32_i69_038_push20_0 thei_llvm_fpga_push_i32_i69_038_push20_bicg20 (
        .in_data_in(bgTrunc_i_inc79_bicg19_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_feedback_stall_out_20),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i69_038_pop20_bicg12(BLACKBOX,48)@2
    // out out_feedback_stall_out_20@20000000
    bicg_i_llvm_fpga_pop_i32_i69_038_pop20_0 thei_llvm_fpga_pop_i32_i69_038_pop20_bicg12 (
        .in_data_in(c_i32_050_q),
        .in_dir(redist1_sync_together70_aunroll_x_in_c0_eni1147_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i32_i69_038_push20_bicg20_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom74_bicg13_sel_x(BITSELECT,101)@2
    assign i_idxprom74_bicg13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i69_038_pop20_bicg12_out_data_out[31:0]};

    // i_idxprom74_bicg13_vt_select_31(BITSELECT,41)@2
    assign i_idxprom74_bicg13_vt_select_31_b = i_idxprom74_bicg13_sel_x_b[31:0];

    // i_idxprom74_bicg13_vt_join(BITJOIN,40)@2
    assign i_idxprom74_bicg13_vt_join_q = {c_i32_050_q, i_idxprom74_bicg13_vt_select_31_b};

    // i_arrayidx7511_bicg0_dupName_0_trunc_sel_x(BITSELECT,88)@2
    assign i_arrayidx7511_bicg0_dupName_0_trunc_sel_x_b = i_idxprom74_bicg13_vt_join_q[6:0];

    // i_arrayidx7511_bicg0_narrow_x(BITSELECT,81)@2
    assign i_arrayidx7511_bicg0_narrow_x_b = i_arrayidx7511_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx7511_bicg0_shift_join_x(BITJOIN,82)@2
    assign i_arrayidx7511_bicg0_shift_join_x_q = {i_arrayidx7511_bicg0_narrow_x_b, i_arrayidx7511_bicg14_vt_const_1_q};

    // i_arrayidx7511_bicg0_add_x(ADD,78)@2
    assign i_arrayidx7511_bicg0_add_x_a = {1'b0, i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx7511_bicg0_add_x_b = {1'b0, i_arrayidx7511_bicg0_shift_join_x_q};
    assign i_arrayidx7511_bicg0_add_x_o = $unsigned(i_arrayidx7511_bicg0_add_x_a) + $unsigned(i_arrayidx7511_bicg0_add_x_b);
    assign i_arrayidx7511_bicg0_add_x_q = i_arrayidx7511_bicg0_add_x_o[7:0];

    // i_arrayidx7511_bicg0_dupName_2_trunc_sel_x(BITSELECT,89)@2
    assign i_arrayidx7511_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx7511_bicg0_add_x_q[6:0];

    // i_arrayidx7511_bicg0_append_upper_bits_x(BITJOIN,79)@2
    assign i_arrayidx7511_bicg0_append_upper_bits_x_q = {i_arrayidx7511_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx7511_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx7511_bicg14_vt_select_63(BITSELECT,30)@2
    assign i_arrayidx7511_bicg14_vt_select_63_b = i_arrayidx7511_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx7511_bicg14_vt_const_1(CONSTANT,28)
    assign i_arrayidx7511_bicg14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx7511_bicg14_vt_join(BITJOIN,29)@2
    assign i_arrayidx7511_bicg14_vt_join_q = {i_arrayidx7511_bicg14_vt_select_63_b, i_arrayidx7511_bicg14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg20_bicg15(BLACKBOX,46)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_bicg20_bicg_avm_address@20000000
    // out out_unnamed_bicg20_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg20_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg20_bicg_avm_enable@20000000
    // out out_unnamed_bicg20_bicg_avm_read@20000000
    // out out_unnamed_bicg20_bicg_avm_write@20000000
    // out out_unnamed_bicg20_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_20_bicg0 thei_llvm_fpga_mem_unnamed_bicg20_bicg15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx7511_bicg14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_bicg4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_bicg20_bicg_avm_readdata(in_unnamed_bicg20_bicg_avm_readdata),
        .in_unnamed_bicg20_bicg_avm_readdatavalid(in_unnamed_bicg20_bicg_avm_readdatavalid),
        .in_unnamed_bicg20_bicg_avm_waitrequest(in_unnamed_bicg20_bicg_avm_waitrequest),
        .in_unnamed_bicg20_bicg_avm_writeack(in_unnamed_bicg20_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg20_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_address),
        .out_unnamed_bicg20_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_burstcount),
        .out_unnamed_bicg20_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_byteenable),
        .out_unnamed_bicg20_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_enable),
        .out_unnamed_bicg20_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_read),
        .out_unnamed_bicg20_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_write),
        .out_unnamed_bicg20_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,75)
    assign out_unnamed_bicg20_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_address;
    assign out_unnamed_bicg20_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_enable;
    assign out_unnamed_bicg20_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_read;
    assign out_unnamed_bicg20_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_write;
    assign out_unnamed_bicg20_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_writedata;
    assign out_unnamed_bicg20_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_byteenable;
    assign out_unnamed_bicg20_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_unnamed_bicg20_bicg_avm_burstcount;

    // redist3_sync_together70_aunroll_x_in_i_valid_4(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together70_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist3_sync_together70_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist3_sync_together70_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist3_sync_together70_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist2_sync_together70_aunroll_x_in_i_valid_1_q);
            redist3_sync_together70_aunroll_x_in_i_valid_4_delay_1 <= redist3_sync_together70_aunroll_x_in_i_valid_4_delay_0;
            redist3_sync_together70_aunroll_x_in_i_valid_4_q <= redist3_sync_together70_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg7(REG,116)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist8_i_first_cleanup_xor_bicg4_q_4(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_0 <= '0;
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_1 <= '0;
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_2 <= '0;
            redist8_i_first_cleanup_xor_bicg4_q_4_q <= '0;
        end
        else
        begin
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_bicg4_q);
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_1 <= redist8_i_first_cleanup_xor_bicg4_q_4_delay_0;
            redist8_i_first_cleanup_xor_bicg4_q_4_delay_2 <= redist8_i_first_cleanup_xor_bicg4_q_4_delay_1;
            redist8_i_first_cleanup_xor_bicg4_q_4_q <= redist8_i_first_cleanup_xor_bicg4_q_4_delay_2;
        end
    end

    // i_arrayidx77_bicg0_narrow_x(BITSELECT,92)@2
    assign i_arrayidx77_bicg0_narrow_x_b = i_idxprom74_bicg13_vt_join_q[61:0];

    // redist4_i_arrayidx77_bicg0_narrow_x_b_4_inputreg0(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_inputreg0_q <= $unsigned(i_arrayidx77_bicg0_narrow_x_b);
        end
    end

    // redist4_i_arrayidx77_bicg0_narrow_x_b_4(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_delay_0 <= '0;
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_delay_0 <= $unsigned(redist4_i_arrayidx77_bicg0_narrow_x_b_4_inputreg0_q);
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_q <= redist4_i_arrayidx77_bicg0_narrow_x_b_4_delay_0;
        end
    end

    // redist4_i_arrayidx77_bicg0_narrow_x_b_4_outputreg0(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist4_i_arrayidx77_bicg0_narrow_x_b_4_outputreg0_q <= $unsigned(redist4_i_arrayidx77_bicg0_narrow_x_b_4_q);
        end
    end

    // i_arrayidx77_bicg0_shift_join_x(BITJOIN,93)@6
    assign i_arrayidx77_bicg0_shift_join_x_q = {redist4_i_arrayidx77_bicg0_narrow_x_b_4_outputreg0_q, i_arrayidx7511_bicg14_vt_const_1_q};

    // valid_fanout_reg6(REG,115)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_q4622_bicg16(BLACKBOX,44)@6
    bicg_i_llvm_fpga_ffwd_dest_p1024i32_q4622_0 thei_llvm_fpga_ffwd_dest_p1024i32_q4622_bicg16 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_q4622_bicg16_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx77_bicg0_add_x(ADD,90)@6
    assign i_arrayidx77_bicg0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_q4622_bicg16_out_dest_data_out_2_0};
    assign i_arrayidx77_bicg0_add_x_b = {1'b0, i_arrayidx77_bicg0_shift_join_x_q};
    assign i_arrayidx77_bicg0_add_x_o = $unsigned(i_arrayidx77_bicg0_add_x_a) + $unsigned(i_arrayidx77_bicg0_add_x_b);
    assign i_arrayidx77_bicg0_add_x_q = i_arrayidx77_bicg0_add_x_o[64:0];

    // i_arrayidx77_bicg0_dupName_0_trunc_sel_x(BITSELECT,95)@6
    assign i_arrayidx77_bicg0_dupName_0_trunc_sel_x_b = i_arrayidx77_bicg0_add_x_q[63:0];

    // i_llvm_fpga_mem_memdep_7_bicg18(BLACKBOX,45)@6
    // out out_lsu_memdep_7_o_active@20000000
    // out out_memdep_7_bicg_avm_address@20000000
    // out out_memdep_7_bicg_avm_burstcount@20000000
    // out out_memdep_7_bicg_avm_byteenable@20000000
    // out out_memdep_7_bicg_avm_enable@20000000
    // out out_memdep_7_bicg_avm_read@20000000
    // out out_memdep_7_bicg_avm_write@20000000
    // out out_memdep_7_bicg_avm_writedata@20000000
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_o_writeack@10
    bicg_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_bicg18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx77_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist8_i_first_cleanup_xor_bicg4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_bicg20_bicg15_out_o_readdata),
        .in_memdep_7_bicg_avm_readdata(in_memdep_7_bicg_avm_readdata),
        .in_memdep_7_bicg_avm_readdatavalid(in_memdep_7_bicg_avm_readdatavalid),
        .in_memdep_7_bicg_avm_waitrequest(in_memdep_7_bicg_avm_waitrequest),
        .in_memdep_7_bicg_avm_writeack(in_memdep_7_bicg_avm_writeack),
        .out_lsu_memdep_7_o_active(i_llvm_fpga_mem_memdep_7_bicg18_out_lsu_memdep_7_o_active),
        .out_memdep_7_bicg_avm_address(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_address),
        .out_memdep_7_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_burstcount),
        .out_memdep_7_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_byteenable),
        .out_memdep_7_bicg_avm_enable(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_enable),
        .out_memdep_7_bicg_avm_read(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_read),
        .out_memdep_7_bicg_avm_write(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_write),
        .out_memdep_7_bicg_avm_writedata(i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,76)
    assign out_memdep_7_bicg_avm_address = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_address;
    assign out_memdep_7_bicg_avm_enable = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_enable;
    assign out_memdep_7_bicg_avm_read = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_read;
    assign out_memdep_7_bicg_avm_write = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_write;
    assign out_memdep_7_bicg_avm_writedata = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_writedata;
    assign out_memdep_7_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_byteenable;
    assign out_memdep_7_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_7_bicg18_out_memdep_7_bicg_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,77)
    assign out_lsu_memdep_7_o_active = i_llvm_fpga_mem_memdep_7_bicg18_out_lsu_memdep_7_o_active;

    // valid_fanout_reg0(REG,109)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist0_valid_fanout_reg0_q_4(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_4_delay_1 <= redist0_valid_fanout_reg0_q_4_delay_0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= redist0_valid_fanout_reg0_q_4_delay_1;
            redist0_valid_fanout_reg0_q_4_q <= redist0_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // i_masked_bicg31(LOGICAL,58)@2 + 1
    assign i_masked_bicg31_qi = i_notcmp_bicg24_q & i_first_cleanup_bicg3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_bicg31_delay ( .xin(i_masked_bicg31_qi), .xout(i_masked_bicg31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked_bicg31_q_8(DELAY,149)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_masked_bicg31_q_8 ( .xin(i_masked_bicg31_q), .xout(redist5_i_masked_bicg31_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_9(DELAY,151)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_9 ( .xin(redist6_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_1_q), .xout(redist7_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,107)@10
    assign out_c0_exi2151_0_tpl = GND_q;
    assign out_c0_exi2151_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going_bicg6_out_data_out_9_q;
    assign out_c0_exi2151_2_tpl = redist5_i_masked_bicg31_q_8_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_bicg1 = GND_q;

endmodule
