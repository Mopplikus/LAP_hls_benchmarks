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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body50000ter19620_kernel_2mm0 (
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi3200_0_tpl,
    output wire [0:0] out_c0_exi3200_1_tpl,
    output wire [0:0] out_c0_exi3200_2_tpl,
    output wire [0:0] out_c0_exi3200_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_2mm29_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_2mm19_sel_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx72_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx72_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx72_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx72_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx72_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx72_kernel_2mm0_mult_multconst_x_q;
    wire [9:0] i_arrayidx72_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx72_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx72_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx72_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx72_kernel_2mm0_append_upper_bits_x_q;
    wire [1:0] i_arrayidx72_kernel_2mm0_c_i2_02_x_q;
    wire [6:0] i_arrayidx72_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx72_kernel_2mm0_shift_join_x_q;
    wire [0:0] i_first_cleanup86_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom6_kernel_2mm16_sel_x_b;
    wire [63:0] i_idxprom_kernel_2mm14_sel_x_b;
    wire [0:0] i_last_initeration82_kernel_2mm10_sel_x_b;
    wire [1:0] c_i2_151_q;
    wire [31:0] c_i32_053_q;
    wire [31:0] c_i32_154_q;
    wire [4:0] c_i5_157_q;
    wire [4:0] c_i5_855_q;
    wire [63:0] c_kernel_2mm_tmp_pmem_q;
    wire [63:0] i_arrayidx72_kernel_2mm17_vt_join_q;
    wire [61:0] i_arrayidx72_kernel_2mm17_vt_select_63_b;
    wire [1:0] i_cleanups_shl85_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl85_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor87_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm29_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm29_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_2mm29_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm29_q;
    wire [63:0] i_idxprom6_kernel_2mm16_vt_join_q;
    wire [31:0] i_idxprom6_kernel_2mm16_vt_select_31_b;
    wire [63:0] i_idxprom_kernel_2mm14_vt_join_q;
    wire [31:0] i_idxprom_kernel_2mm14_vt_select_31_b;
    wire [32:0] i_inc_kernel_2mm19_a;
    wire [32:0] i_inc_kernel_2mm19_b;
    logic [32:0] i_inc_kernel_2mm19_o;
    wire [32:0] i_inc_kernel_2mm19_q;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_feedback_stall_out_31;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_feedback_stall_out_30;
    wire [1:0] i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_feedback_stall_out_28;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_valid_out_30;
    wire [7:0] i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_valid_out_27;
    wire [0:0] i_masked90_kernel_2mm31_qi;
    reg [0:0] i_masked90_kernel_2mm31_q;
    wire [0:0] i_next_cleanups89_kernel_2mm27_s;
    reg [1:0] i_next_cleanups89_kernel_2mm27_q;
    wire [1:0] i_next_initerations80_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations80_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp77_kernel_2mm24_q;
    wire [0:0] i_or88_kernel_2mm26_q;
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
    wire [9:0] addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid149_i_arrayidx72_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid154_i_arrayidx72_kernel_2mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid189_i_cleanups_shl85_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid195_i_next_initerations80_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid197_i_next_initerations80_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_q;
    wire [0:0] i_exitcond_kernel_2mm22_cmp_nsign_q;
    wire [1:0] lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_c;
    wire [8:0] i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_b;
    wire [54:0] i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_i_masked90_kernel_2mm31_q_4_q;
    reg [0:0] redist1_i_masked90_kernel_2mm31_q_4_delay_0;
    reg [0:0] redist1_i_masked90_kernel_2mm31_q_4_delay_1;
    reg [0:0] redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1_q;
    reg [0:0] redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_0;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_1;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5_q;
    reg [0:0] redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_q;
    reg [0:0] redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_0;
    reg [0:0] redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_1;
    reg [0:0] redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_q;
    reg [0:0] redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
    reg [0:0] redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
    reg [31:0] redist9_sync_together76_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_q;
    reg [0:0] redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
    reg [0:0] redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
    reg [0:0] redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
    reg [0:0] redist11_sync_together76_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist12_sync_together76_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together76_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist13_sync_together76_aunroll_x_in_i_valid_4_q;
    reg [8:0] redist14_i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist15_i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [8:0] redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q;


    // c_i32_053(CONSTANT,64)
    assign c_i32_053_q = $unsigned(32'b00000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist11_sync_together76_aunroll_x_in_i_valid_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together76_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist11_sync_together76_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist12_sync_together76_aunroll_x_in_i_valid_3(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together76_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist12_sync_together76_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist12_sync_together76_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist11_sync_together76_aunroll_x_in_i_valid_1_q);
            redist12_sync_together76_aunroll_x_in_i_valid_3_q <= redist12_sync_together76_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg7(REG,126)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i5_157(CONSTANT,66)
    assign c_i5_157_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_2mm29(ADD,80)@2
    assign i_fpga_indvars_iv_next_kernel_2mm29_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_data_out};
    assign i_fpga_indvars_iv_next_kernel_2mm29_b = {1'b0, c_i5_157_q};
    assign i_fpga_indvars_iv_next_kernel_2mm29_o = $unsigned(i_fpga_indvars_iv_next_kernel_2mm29_a) + $unsigned(i_fpga_indvars_iv_next_kernel_2mm29_b);
    assign i_fpga_indvars_iv_next_kernel_2mm29_q = i_fpga_indvars_iv_next_kernel_2mm29_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_2mm29_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_2mm29_sel_x_b = i_fpga_indvars_iv_next_kernel_2mm29_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30(BLACKBOX,106)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv_push27_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kernel_2mm29_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_feedback_stall_out_27),
        .in_keep_going81(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_855(CONSTANT,67)
    assign c_i5_855_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21(BLACKBOX,98)@2
    // out out_feedback_stall_out_27@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21 (
        .in_data_in(c_i5_855_q),
        .in_dir(redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i5_fpga_indvars_iv_push27_kernel_2mm30_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_kernel_2mm22_cmp_nsign(LOGICAL,201)@2
    assign i_exitcond_kernel_2mm22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop27_kernel_2mm21_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25(BLACKBOX,101)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond91_0 thei_llvm_fpga_push_i1_notexitcond91_kernel_2mm25 (
        .in_data_in(i_exitcond_kernel_2mm22_cmp_nsign_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup86(i_first_cleanup86_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,122)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid195_i_next_initerations80_kernel_2mm0_shift_x(BITSELECT,194)@2
    assign rightShiftStage0Idx1Rng1_uid195_i_next_initerations80_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid197_i_next_initerations80_kernel_2mm0_shift_x(BITJOIN,196)@2
    assign rightShiftStage0Idx1_uid197_i_next_initerations80_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid195_i_next_initerations80_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,120)@1 + 1
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

    // valid_fanout_reg2(REG,121)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9(BLACKBOX,103)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations79_push29_0 thei_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9 (
        .in_data_in(i_next_initerations80_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_feedback_stall_out_29),
        .in_keep_going81(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7(BLACKBOX,95)@2
    // out out_feedback_stall_out_29@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations79_pop29_0 thei_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7 (
        .in_data_in(c_i2_151_q),
        .in_dir(redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i2_initerations79_push29_kernel_2mm9_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x(MUX,198)@2
    assign rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid197_i_next_initerations80_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations79_pop29_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid197_i_next_initerations80_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations80_kernel_2mm8_vt_select_0(BITSELECT,111)@2
    assign i_next_initerations80_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid199_i_next_initerations80_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations80_kernel_2mm8_vt_join(BITJOIN,110)@2
    assign i_next_initerations80_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations80_kernel_2mm8_vt_select_0_b};

    // i_last_initeration82_kernel_2mm10_sel_x(BITSELECT,37)@2
    assign i_last_initeration82_kernel_2mm10_sel_x_b = i_next_initerations80_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11(BLACKBOX,99)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration83_0 thei_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11 (
        .in_data_in(i_last_initeration82_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going81(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going81_kernel_2mm6(BLACKBOX,92)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going81_0 thei_llvm_fpga_pipeline_keep_going81_kernel_2mm6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_out_14),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration83_kernel_2mm11_out_feedback_valid_out_14),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_out_15),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond91_kernel_2mm25_out_feedback_valid_out_15),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x(BITSELECT,187)@2
    assign leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid189_i_cleanups_shl85_kernel_2mm0_shift_x(BITJOIN,188)@2
    assign leftShiftStage0Idx1_uid189_i_cleanups_shl85_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid188_i_cleanups_shl85_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x(MUX,190)@2
    assign leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid189_i_cleanups_shl85_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid189_i_cleanups_shl85_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl85_kernel_2mm5_vt_select_1(BITSELECT,76)@2
    assign i_cleanups_shl85_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid191_i_cleanups_shl85_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl85_kernel_2mm5_vt_join(BITJOIN,75)@2
    assign i_cleanups_shl85_kernel_2mm5_vt_join_q = {i_cleanups_shl85_kernel_2mm5_vt_select_1_b, GND_q};

    // i_notcmp77_kernel_2mm24(LOGICAL,112)@2
    assign i_notcmp77_kernel_2mm24_q = i_exitcond_kernel_2mm22_cmp_nsign_q ^ VCC_q;

    // i_or88_kernel_2mm26(LOGICAL,113)@2
    assign i_or88_kernel_2mm26_q = i_notcmp77_kernel_2mm24_q | i_first_cleanup_xor87_kernel_2mm4_q;

    // i_next_cleanups89_kernel_2mm27(MUX,108)@2
    assign i_next_cleanups89_kernel_2mm27_s = i_or88_kernel_2mm26_q;
    always @(i_next_cleanups89_kernel_2mm27_s or i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out or i_cleanups_shl85_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups89_kernel_2mm27_s)
            1'b0 : i_next_cleanups89_kernel_2mm27_q = i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups89_kernel_2mm27_q = i_cleanups_shl85_kernel_2mm5_vt_join_q;
            default : i_next_cleanups89_kernel_2mm27_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28(BLACKBOX,102)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups84_push30_0 thei_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28 (
        .in_data_in(i_next_cleanups89_kernel_2mm27_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_feedback_stall_out_30),
        .in_keep_going81(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_151(CONSTANT,63)
    assign c_i2_151_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2(BLACKBOX,94)@2
    // out out_feedback_stall_out_30@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups84_pop30_0 thei_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2 (
        .in_data_in(c_i2_151_q),
        .in_dir(redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i2_cleanups84_push30_kernel_2mm28_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together76_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup86_kernel_2mm3_sel_x(BITSELECT,34)@2
    assign i_first_cleanup86_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups84_pop30_kernel_2mm2_out_data_out[0:0];

    // i_first_cleanup_xor87_kernel_2mm4(LOGICAL,79)@2
    assign i_first_cleanup_xor87_kernel_2mm4_q = i_first_cleanup86_kernel_2mm3_sel_x_b ^ VCC_q;

    // redist6_i_first_cleanup_xor87_kernel_2mm4_q_3(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_0 <= '0;
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_1 <= '0;
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_q <= '0;
        end
        else
        begin
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor87_kernel_2mm4_q);
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_1 <= redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_0;
            redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_q <= redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_delay_1;
        end
    end

    // c_kernel_2mm_tmp_pmem(CONSTANT,68)
    assign c_kernel_2mm_tmp_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select(BITSELECT,203)@4
    assign i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_b = c_kernel_2mm_tmp_pmem_q[8:0];
    assign i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c = c_kernel_2mm_tmp_pmem_q[63:9];

    // redist0_i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c);
        end
    end

    // valid_fanout_reg6(REG,125)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist12_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg8(REG,127)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist12_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_0 <= '0;
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_1 <= '0;
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_0 <= $unsigned(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q);
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_1 <= redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_0;
            redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_q <= redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_delay_1;
        end
    end

    // c_i32_154(CONSTANT,65)
    assign c_i32_154_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_2mm19(ADD,89)@5
    assign i_inc_kernel_2mm19_a = {1'b0, i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_data_out};
    assign i_inc_kernel_2mm19_b = {1'b0, c_i32_154_q};
    assign i_inc_kernel_2mm19_o = $unsigned(i_inc_kernel_2mm19_a) + $unsigned(i_inc_kernel_2mm19_b);
    assign i_inc_kernel_2mm19_q = i_inc_kernel_2mm19_o[32:0];

    // bgTrunc_i_inc_kernel_2mm19_sel_x(BITSELECT,3)@5
    assign bgTrunc_i_inc_kernel_2mm19_sel_x_b = i_inc_kernel_2mm19_q[31:0];

    // i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20(BLACKBOX,105)@5
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j_083_push28_0 thei_llvm_fpga_push_i32_j_083_push28_kernel_2mm20 (
        .in_data_in(bgTrunc_i_inc_kernel_2mm19_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_feedback_stall_out_28),
        .in_keep_going81(redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= '0;
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_1 <= '0;
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_q <= '0;
        end
        else
        begin
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= $unsigned(redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_1 <= redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
            redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_q <= redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15(BLACKBOX,97)@5
    // out out_feedback_stall_out_28@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j_083_pop28_0 thei_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15 (
        .in_data_in(c_i32_053_q),
        .in_dir(redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_j_083_push28_kernel_2mm20_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom6_kernel_2mm16_sel_x(BITSELECT,35)@5
    assign i_idxprom6_kernel_2mm16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_083_pop28_kernel_2mm15_out_data_out[31:0]};

    // i_idxprom6_kernel_2mm16_vt_select_31(BITSELECT,84)@5
    assign i_idxprom6_kernel_2mm16_vt_select_31_b = i_idxprom6_kernel_2mm16_sel_x_b[31:0];

    // i_idxprom6_kernel_2mm16_vt_join(BITJOIN,83)@5
    assign i_idxprom6_kernel_2mm16_vt_join_q = {c_i32_053_q, i_idxprom6_kernel_2mm16_vt_select_31_b};

    // i_arrayidx72_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,9)@5
    assign i_arrayidx72_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom6_kernel_2mm16_vt_join_q[8:0];

    // i_arrayidx72_kernel_2mm0_narrow_x(BITSELECT,26)@5
    assign i_arrayidx72_kernel_2mm0_narrow_x_b = i_arrayidx72_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx72_kernel_2mm0_shift_join_x(BITJOIN,27)@5
    assign i_arrayidx72_kernel_2mm0_shift_join_x_q = {i_arrayidx72_kernel_2mm0_narrow_x_b, i_arrayidx72_kernel_2mm0_c_i2_02_x_q};

    // i_arrayidx72_kernel_2mm0_mult_multconst_x(CONSTANT,19)
    assign i_arrayidx72_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg4(REG,123)@1 + 1
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

    // valid_fanout_reg5(REG,124)@1 + 1
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

    // i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13(BLACKBOX,104)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i_084_pop21106_push32_0 thei_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_feedback_stall_out_32),
        .in_keep_going81(redist3_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together76_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together76_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together76_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12(BLACKBOX,96)@2
    // out out_feedback_stall_out_32@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i_084_pop21106_pop32_0 thei_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12 (
        .in_data_in(redist9_sync_together76_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist7_sync_together76_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_i_084_pop21106_push32_kernel_2mm13_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_kernel_2mm14_sel_x(BITSELECT,36)@2
    assign i_idxprom_kernel_2mm14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_084_pop21106_pop32_kernel_2mm12_out_data_out[31:0]};

    // i_idxprom_kernel_2mm14_vt_select_31(BITSELECT,88)@2
    assign i_idxprom_kernel_2mm14_vt_select_31_b = i_idxprom_kernel_2mm14_sel_x_b[31:0];

    // i_idxprom_kernel_2mm14_vt_join(BITJOIN,87)@2
    assign i_idxprom_kernel_2mm14_vt_join_q = {c_i32_053_q, i_idxprom_kernel_2mm14_vt_select_31_b};

    // i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,6)@2
    assign i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom_kernel_2mm14_vt_join_q[8:0];

    // redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b);
        end
    end

    // addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x(ADD,147)@3
    assign addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_a = {1'b0, redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q};
    assign addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_q = addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,202)@3
    assign lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_b = redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q[1:0];
    assign lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_c = redist16_i_arrayidx72_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q[8:2];

    // add_uid149_i_arrayidx72_kernel_2mm0_mult_x(BITJOIN,148)@3
    assign add_uid149_i_arrayidx72_kernel_2mm0_mult_x_q = {addsumAHighB_uid148_i_arrayidx72_kernel_2mm0_mult_x_q, lowRangeB_uid146_i_arrayidx72_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid154_i_arrayidx72_kernel_2mm0_mult_x(BITJOIN,153)@3
    assign sR_mergedSignalTM_uid154_i_arrayidx72_kernel_2mm0_mult_x_q = {add_uid149_i_arrayidx72_kernel_2mm0_mult_x_q, i_arrayidx72_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx72_kernel_2mm0_mult_extender_x(BITJOIN,18)@3
    assign i_arrayidx72_kernel_2mm0_mult_extender_x_q = {i_arrayidx72_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid154_i_arrayidx72_kernel_2mm0_mult_x_q};

    // i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,7)@3
    assign i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx72_kernel_2mm0_mult_extender_x_q[8:0];

    // redist15_i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx72_kernel_2mm0_add_x(ADD,21)@4
    assign i_arrayidx72_kernel_2mm0_add_x_a = {1'b0, i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_b};
    assign i_arrayidx72_kernel_2mm0_add_x_b = {1'b0, redist15_i_arrayidx72_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx72_kernel_2mm0_add_x_o = $unsigned(i_arrayidx72_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx72_kernel_2mm0_add_x_b);
    assign i_arrayidx72_kernel_2mm0_add_x_q = i_arrayidx72_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,8)@4
    assign i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx72_kernel_2mm0_add_x_q[8:0];

    // redist14_i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx72_kernel_2mm0_dupName_0_add_x(ADD,12)@5
    assign i_arrayidx72_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist14_i_arrayidx72_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx72_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx72_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx72_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx72_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx72_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx72_kernel_2mm0_dupName_0_add_x_q = i_arrayidx72_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx72_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,10)@5
    assign i_arrayidx72_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx72_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx72_kernel_2mm0_append_upper_bits_x(BITJOIN,22)@5
    assign i_arrayidx72_kernel_2mm0_append_upper_bits_x_q = {redist0_i_arrayidx72_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q, i_arrayidx72_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx72_kernel_2mm17_vt_select_63(BITSELECT,73)@5
    assign i_arrayidx72_kernel_2mm17_vt_select_63_b = i_arrayidx72_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx72_kernel_2mm0_c_i2_02_x(CONSTANT,23)
    assign i_arrayidx72_kernel_2mm0_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx72_kernel_2mm17_vt_join(BITJOIN,72)@5
    assign i_arrayidx72_kernel_2mm17_vt_join_q = {i_arrayidx72_kernel_2mm17_vt_select_63_b, i_arrayidx72_kernel_2mm0_c_i2_02_x_q};

    // i_llvm_fpga_mem_memdep_kernel_2mm18(BLACKBOX,91)@5
    // out out_memdep_kernel_2mm_avm_address@20000000
    // out out_memdep_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_kernel_2mm_avm_enable@20000000
    // out out_memdep_kernel_2mm_avm_read@20000000
    // out out_memdep_kernel_2mm_avm_write@20000000
    // out out_memdep_kernel_2mm_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@6
    // out out_o_writeack@6
    kernel_2mm_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_kernel_2mm18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx72_kernel_2mm17_vt_join_q),
        .in_i_predicate(redist6_i_first_cleanup_xor87_kernel_2mm4_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(c_i32_053_q),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .out_memdep_kernel_2mm_avm_address(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,5)
    assign out_memdep_kernel_2mm_avm_address = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_address;
    assign out_memdep_kernel_2mm_avm_enable = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_enable;
    assign out_memdep_kernel_2mm_avm_read = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_read;
    assign out_memdep_kernel_2mm_avm_write = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_write;
    assign out_memdep_kernel_2mm_avm_writedata = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_writedata;
    assign out_memdep_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_byteenable;
    assign out_memdep_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_memdep_kernel_2mm18_out_memdep_kernel_2mm_avm_burstcount;

    // redist13_sync_together76_aunroll_x_in_i_valid_4(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together76_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist13_sync_together76_aunroll_x_in_i_valid_4_q <= $unsigned(redist12_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,119)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,128)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist12_sync_together76_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,129)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist13_sync_together76_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33(BLACKBOX,100)@6
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp93105_push31_0 thei_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33 (
        .in_data_in(redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_feedback_stall_out_31),
        .in_keep_going81(redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= '0;
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= '0;
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= '0;
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_q <= '0;
        end
        else
        begin
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
            redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_q <= redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32(BLACKBOX,93)@5
    // out out_feedback_stall_out_31@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp93105_pop31_0 thei_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32 (
        .in_data_in(redist10_sync_together76_aunroll_x_in_c0_eni3_3_tpl_4_q),
        .in_dir(redist8_sync_together76_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp93105_push31_kernel_2mm33_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out);
        end
    end

    // i_masked90_kernel_2mm31(LOGICAL,107)@2 + 1
    assign i_masked90_kernel_2mm31_qi = i_notcmp77_kernel_2mm24_q & i_first_cleanup86_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked90_kernel_2mm31_delay ( .xin(i_masked90_kernel_2mm31_qi), .xout(i_masked90_kernel_2mm31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_i_masked90_kernel_2mm31_q_4(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_masked90_kernel_2mm31_q_4_delay_0 <= '0;
            redist1_i_masked90_kernel_2mm31_q_4_delay_1 <= '0;
            redist1_i_masked90_kernel_2mm31_q_4_q <= '0;
        end
        else
        begin
            redist1_i_masked90_kernel_2mm31_q_4_delay_0 <= $unsigned(i_masked90_kernel_2mm31_q);
            redist1_i_masked90_kernel_2mm31_q_4_delay_1 <= redist1_i_masked90_kernel_2mm31_q_4_delay_0;
            redist1_i_masked90_kernel_2mm31_q_4_q <= redist1_i_masked90_kernel_2mm31_q_4_delay_1;
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5_q <= $unsigned(redist4_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,42)@6
    assign out_c0_exi3200_0_tpl = GND_q;
    assign out_c0_exi3200_1_tpl = redist5_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_data_out_5_q;
    assign out_c0_exi3200_2_tpl = redist1_i_masked90_kernel_2mm31_q_4_q;
    assign out_c0_exi3200_3_tpl = redist2_i_llvm_fpga_pop_i1_notcmp93105_pop31_kernel_2mm32_out_data_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // ext_sig_sync_out(GPOUT,70)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,116)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_out_pipeline_valid_out;

endmodule
