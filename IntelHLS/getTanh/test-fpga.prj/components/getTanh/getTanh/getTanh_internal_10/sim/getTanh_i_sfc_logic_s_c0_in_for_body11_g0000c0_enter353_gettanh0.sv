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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body11_gettanhs_c0_enter353_gettanh0
// Created for function/kernel getTanh
// SystemVerilog created on Tue Apr  4 23:44:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_i_sfc_logic_s_c0_in_for_body11_g0000c0_enter353_gettanh0 (
    input wire [31:0] in_unnamed_getTanh4_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [31:0] in_unnamed_getTanh5_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh4_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh4_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh4_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_burstcount,
    input wire [31:0] in_memdep_3_getTanh_avm_readdata,
    input wire [0:0] in_memdep_3_getTanh_avm_writeack,
    input wire [0:0] in_memdep_3_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_3_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh5_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_burstcount,
    output wire [31:0] out_memdep_3_getTanh_avm_address,
    output wire [0:0] out_memdep_3_getTanh_avm_enable,
    output wire [0:0] out_memdep_3_getTanh_avm_read,
    output wire [0:0] out_memdep_3_getTanh_avm_write,
    output wire [31:0] out_memdep_3_getTanh_avm_writedata,
    output wire [3:0] out_memdep_3_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_3_getTanh_avm_burstcount,
    output wire [0:0] out_c0_exi238_0_tpl,
    output wire [0:0] out_c0_exi238_1_tpl,
    output wire [0:0] out_c0_exi238_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_getTanh1,
    input wire [0:0] in_c0_eni134_0_tpl,
    input wire [0:0] in_c0_eni134_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0x400DA35A4000000066_q;
    wire [31:0] c_float_0x403386186000000065_q;
    wire [31:0] c_float_1_000000e_0064_q;
    wire [63:0] c_getTanh_A_pmem_q;
    wire [63:0] c_getTanh_addr_pmem_q;
    wire [10:0] c_i11_170_q;
    wire [10:0] c_i11_99868_q;
    wire [31:0] c_i32_063_q;
    wire [31:0] c_i32_167_q;
    wire [3:0] c_i4_760_q;
    wire [0:0] i_acl_gettanh25_s;
    reg [31:0] i_acl_gettanh25_q;
    wire [1:0] i_arrayidx133_gettanh14_vt_const_1_q;
    wire [63:0] i_arrayidx133_gettanh14_vt_join_q;
    wire [61:0] i_arrayidx133_gettanh14_vt_select_63_b;
    wire [63:0] i_arrayidx154_gettanh17_vt_join_q;
    wire [61:0] i_arrayidx154_gettanh17_vt_select_63_b;
    wire [3:0] i_cleanups_shl_gettanh5_vt_join_q;
    wire [2:0] i_cleanups_shl_gettanh5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_gettanh4_q;
    wire [11:0] i_fpga_indvars_iv_next5_gettanh38_a;
    wire [11:0] i_fpga_indvars_iv_next5_gettanh38_b;
    logic [11:0] i_fpga_indvars_iv_next5_gettanh38_o;
    wire [11:0] i_fpga_indvars_iv_next5_gettanh38_q;
    wire [63:0] i_idxprom12_gettanh13_vt_join_q;
    wire [31:0] i_idxprom12_gettanh13_vt_select_31_b;
    wire [32:0] i_inc26_gettanh28_a;
    wire [32:0] i_inc26_gettanh28_b;
    logic [32:0] i_inc26_gettanh28_o;
    wire [32:0] i_inc26_gettanh28_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh40_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add29_gettanh23_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_gettanh21_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_gettanh26_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_feedback_stall_out_16;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_feedback_stall_out_15;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_valid_out_15;
    wire [0:0] i_masked_gettanh41_qi;
    reg [0:0] i_masked_gettanh41_q;
    wire [31:0] i_mul18_gettanh22_out_primWireOut;
    wire [31:0] i_mul21_gettanh24_out_primWireOut;
    wire [0:0] i_next_cleanups_gettanh36_s;
    reg [3:0] i_next_cleanups_gettanh36_q;
    wire [3:0] i_next_initerations_gettanh8_vt_join_q;
    wire [2:0] i_next_initerations_gettanh8_vt_select_2_b;
    wire [0:0] i_notcmp_gettanh33_q;
    wire [0:0] i_or_gettanh35_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next5_gettanh38_sel_x_b;
    wire [31:0] bgTrunc_i_inc26_gettanh28_sel_x_b;
    wire [12:0] i_arrayidx133_gettanh0_add_x_a;
    wire [12:0] i_arrayidx133_gettanh0_add_x_b;
    logic [12:0] i_arrayidx133_gettanh0_add_x_o;
    wire [12:0] i_arrayidx133_gettanh0_add_x_q;
    wire [63:0] i_arrayidx133_gettanh0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx133_gettanh0_narrow_x_b;
    wire [11:0] i_arrayidx133_gettanh0_shift_join_x_q;
    wire [11:0] i_arrayidx133_gettanh0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx133_gettanh0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx154_gettanh0_add_x_a;
    wire [12:0] i_arrayidx154_gettanh0_add_x_b;
    logic [12:0] i_arrayidx154_gettanh0_add_x_o;
    wire [12:0] i_arrayidx154_gettanh0_add_x_q;
    wire [63:0] i_arrayidx154_gettanh0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx154_gettanh0_narrow_x_b;
    wire [11:0] i_arrayidx154_gettanh0_shift_join_x_q;
    wire [11:0] i_arrayidx154_gettanh0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx154_gettanh0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_gettanh3_sel_x_b;
    wire [63:0] i_idxprom12_gettanh13_sel_x_b;
    wire [63:0] i_idxprom14_gettanh16_sel_x_b;
    wire [0:0] i_last_initeration_gettanh10_sel_x_b;
    wire [7:0] cstAllOWE_uid140_i_cmp16_gettanh20_q;
    wire [22:0] cstZeroWF_uid141_i_cmp16_gettanh20_q;
    wire [7:0] cstAllZWE_uid142_i_cmp16_gettanh20_q;
    wire [7:0] exp_x_uid143_i_cmp16_gettanh20_b;
    wire [22:0] frac_x_uid144_i_cmp16_gettanh20_b;
    wire [0:0] expXIsZero_uid145_i_cmp16_gettanh20_q;
    wire [0:0] expXIsMax_uid146_i_cmp16_gettanh20_q;
    wire [0:0] fracXIsZero_uid147_i_cmp16_gettanh20_q;
    wire [0:0] fracXIsNotZero_uid148_i_cmp16_gettanh20_q;
    wire [0:0] excZ_x_uid149_i_cmp16_gettanh20_q;
    wire [0:0] excN_x_uid151_i_cmp16_gettanh20_q;
    wire [7:0] exp_y_uid160_i_cmp16_gettanh20_b;
    wire [22:0] frac_y_uid161_i_cmp16_gettanh20_b;
    wire [0:0] expXIsZero_uid162_i_cmp16_gettanh20_q;
    wire [0:0] expXIsMax_uid163_i_cmp16_gettanh20_q;
    wire [0:0] fracXIsZero_uid164_i_cmp16_gettanh20_q;
    wire [0:0] fracXIsNotZero_uid165_i_cmp16_gettanh20_q;
    wire [0:0] excZ_y_uid166_i_cmp16_gettanh20_q;
    wire [0:0] excN_y_uid168_i_cmp16_gettanh20_q;
    wire [0:0] oneIsNaN_uid174_i_cmp16_gettanh20_qi;
    reg [0:0] oneIsNaN_uid174_i_cmp16_gettanh20_q;
    wire [30:0] expFracX_uid179_i_cmp16_gettanh20_q;
    wire [30:0] expFracY_uid181_i_cmp16_gettanh20_q;
    wire [32:0] efxGTefy_uid183_i_cmp16_gettanh20_a;
    wire [32:0] efxGTefy_uid183_i_cmp16_gettanh20_b;
    logic [32:0] efxGTefy_uid183_i_cmp16_gettanh20_o;
    wire [0:0] efxGTefy_uid183_i_cmp16_gettanh20_c;
    wire [32:0] efxLTefy_uid184_i_cmp16_gettanh20_a;
    wire [32:0] efxLTefy_uid184_i_cmp16_gettanh20_b;
    logic [32:0] efxLTefy_uid184_i_cmp16_gettanh20_o;
    wire [0:0] efxLTefy_uid184_i_cmp16_gettanh20_c;
    wire [0:0] signX_uid188_i_cmp16_gettanh20_b;
    wire [0:0] signY_uid189_i_cmp16_gettanh20_b;
    wire [1:0] two_uid190_i_cmp16_gettanh20_q;
    wire [1:0] concSXSY_uid191_i_cmp16_gettanh20_q;
    wire [0:0] sxLTsy_uid192_i_cmp16_gettanh20_q;
    wire [0:0] xorSigns_uid193_i_cmp16_gettanh20_q;
    wire [0:0] sxEQsy_uid194_i_cmp16_gettanh20_q;
    wire [0:0] expFracCompMux_uid195_i_cmp16_gettanh20_s;
    reg [0:0] expFracCompMux_uid195_i_cmp16_gettanh20_q;
    wire [0:0] invExcYZ_uid196_i_cmp16_gettanh20_q;
    wire [0:0] invExcXZ_uid197_i_cmp16_gettanh20_q;
    wire [0:0] oneNonZero_uid198_i_cmp16_gettanh20_q;
    wire [0:0] rc2_uid199_i_cmp16_gettanh20_q;
    wire [0:0] sxEQsyExpFracCompMux_uid200_i_cmp16_gettanh20_q;
    wire [0:0] r_uid201_i_cmp16_gettanh20_qi;
    reg [0:0] r_uid201_i_cmp16_gettanh20_q;
    wire [0:0] rPostExc_uid202_i_cmp16_gettanh20_qi;
    reg [0:0] rPostExc_uid202_i_cmp16_gettanh20_q;
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
    wire [0:0] i_exitcond6_gettanh31_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid230_i_cleanups_shl_gettanh0_shift_x_q;
    wire [0:0] leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_s;
    reg [3:0] leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid236_i_next_initerations_gettanh0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid238_i_next_initerations_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_s;
    reg [3:0] rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_q;
    wire [51:0] i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_rPostExc_uid202_i_cmp16_gettanh20_q_2_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_q;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_0;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_1;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_2;
    reg [0:0] redist3_sync_together87_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist4_sync_together87_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist5_sync_together87_aunroll_x_in_i_valid_18_q;
    reg [0:0] redist5_sync_together87_aunroll_x_in_i_valid_18_delay_0;
    reg [0:0] redist5_sync_together87_aunroll_x_in_i_valid_18_delay_1;
    reg [0:0] redist6_sync_together87_aunroll_x_in_i_valid_33_q;
    reg [0:0] redist7_sync_together87_aunroll_x_in_i_valid_34_q;
    reg [0:0] redist8_i_masked_gettanh41_q_20_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20_q;
    reg [0:0] redist13_i_first_cleanup_xor_gettanh4_q_4_q;
    reg [0:0] redist13_i_first_cleanup_xor_gettanh4_q_4_delay_0;
    reg [0:0] redist13_i_first_cleanup_xor_gettanh4_q_4_delay_1;
    reg [0:0] redist13_i_first_cleanup_xor_gettanh4_q_4_delay_2;
    reg [0:0] redist14_i_first_cleanup_xor_gettanh4_q_19_q;
    reg [31:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_inputreg0_q;
    wire redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_reset0;
    wire [31:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ia;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_aa;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ab;
    wire [31:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_iq;
    wire [31:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_q;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_q;
    (* preserve *) reg [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_i;
    reg [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_cmpReg_q;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_notEnable_q;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena_q;
    wire [0:0] redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_enaAnd_q;
    wire redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_reset0;
    wire [31:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ia;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_aa;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ab;
    wire [31:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_iq;
    wire [31:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_q;
    (* preserve *) reg [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_i;
    reg [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_wraddr_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_cmpReg_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_notEnable_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_nor_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_enaAnd_q;
    wire redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_reset0;
    wire [31:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ia;
    wire [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_aa;
    wire [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ab;
    wire [31:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_iq;
    wire [31:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q;
    wire [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_q;
    (* preserve *) reg [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i;
    (* preserve *) reg redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_eq;
    reg [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_wraddr_q;
    wire [1:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_last_q;
    wire [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmp_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmpReg_q;
    wire [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_notEnable_q;
    wire [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_nor_q;
    (* dont_merge *) reg [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena_q;
    wire [0:0] redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_enaAnd_q;
    reg [63:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_inputreg0_q;
    wire redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_reset0;
    wire [63:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ia;
    wire [3:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_aa;
    wire [3:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ab;
    wire [63:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_iq;
    wire [63:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_q;
    wire [3:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_q;
    (* preserve *) reg [3:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i;
    (* preserve *) reg redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_eq;
    reg [3:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_wraddr_q;
    wire [4:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_last_q;
    wire [4:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_b;
    wire [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_q;
    (* dont_merge *) reg [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmpReg_q;
    wire [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_notEnable_q;
    wire [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_nor_q;
    (* dont_merge *) reg [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena_q;
    wire [0:0] redist15_i_arrayidx154_gettanh17_vt_join_q_15_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together87_aunroll_x_in_i_valid_14(DELAY,246)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together87_aunroll_x_in_i_valid_14 ( .xin(in_i_valid), .xout(redist3_sync_together87_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together87_aunroll_x_in_i_valid_15(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together87_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist4_sync_together87_aunroll_x_in_i_valid_15_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x(BITSELECT,228)@16
    assign leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_b = leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid230_i_cleanups_shl_gettanh0_shift_x(BITJOIN,229)@16
    assign leftShiftStage0Idx1_uid230_i_cleanups_shl_gettanh0_shift_x_q = {leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl_gettanh0_shift_x_b, GND_q};

    // leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x(MUX,231)@16
    assign leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out or leftShiftStage0Idx1_uid230_i_cleanups_shl_gettanh0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_s)
            1'b0 : leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out;
            1'b1 : leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_q = leftShiftStage0Idx1_uid230_i_cleanups_shl_gettanh0_shift_x_q;
            default : leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_gettanh5_vt_select_3(BITSELECT,44)@16
    assign i_cleanups_shl_gettanh5_vt_select_3_b = leftShiftStage0_uid232_i_cleanups_shl_gettanh0_shift_x_q[3:1];

    // i_cleanups_shl_gettanh5_vt_join(BITJOIN,43)@16
    assign i_cleanups_shl_gettanh5_vt_join_q = {i_cleanups_shl_gettanh5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_gettanh4(LOGICAL,48)@16
    assign i_first_cleanup_xor_gettanh4_q = i_first_cleanup_gettanh3_sel_x_b ^ VCC_q;

    // i_notcmp_gettanh33(LOGICAL,84)@16
    assign i_notcmp_gettanh33_q = i_exitcond6_gettanh31_cmp_nsign_q ^ VCC_q;

    // i_or_gettanh35(LOGICAL,85)@16
    assign i_or_gettanh35_q = i_notcmp_gettanh33_q | i_first_cleanup_xor_gettanh4_q;

    // i_next_cleanups_gettanh36(MUX,80)@16
    assign i_next_cleanups_gettanh36_s = i_or_gettanh35_q;
    always @(i_next_cleanups_gettanh36_s or i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out or i_cleanups_shl_gettanh5_vt_join_q)
    begin
        unique case (i_next_cleanups_gettanh36_s)
            1'b0 : i_next_cleanups_gettanh36_q = i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out;
            1'b1 : i_next_cleanups_gettanh36_q = i_cleanups_shl_gettanh5_vt_join_q;
            default : i_next_cleanups_gettanh36_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push16_gettanh37(BLACKBOX,75)@16
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    getTanh_i_llvm_fpga_push_i4_cleanups_push16_gettanh0 thei_llvm_fpga_push_i4_cleanups_push16_gettanh37 (
        .in_data_in(i_next_cleanups_gettanh36_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_feedback_stall_out_16),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_760(CONSTANT,32)
    assign c_i4_760_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2(BLACKBOX,68)@16
    // out out_feedback_stall_out_16@20000000
    getTanh_i_llvm_fpga_pop_i4_cleanups_pop16_gettanh0 thei_llvm_fpga_pop_i4_cleanups_pop16_gettanh2 (
        .in_data_in(c_i4_760_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q),
        .in_feedback_in_16(i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i4_cleanups_push16_gettanh37_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_gettanh3_sel_x(BITSELECT,129)@16
    assign i_first_cleanup_gettanh3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop16_gettanh2_out_data_out[0:0];

    // c_i11_170(CONSTANT,9)
    assign c_i11_170_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next5_gettanh38(ADD,49)@16
    assign i_fpga_indvars_iv_next5_gettanh38_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_data_out};
    assign i_fpga_indvars_iv_next5_gettanh38_b = {1'b0, c_i11_170_q};
    assign i_fpga_indvars_iv_next5_gettanh38_o = $unsigned(i_fpga_indvars_iv_next5_gettanh38_a) + $unsigned(i_fpga_indvars_iv_next5_gettanh38_b);
    assign i_fpga_indvars_iv_next5_gettanh38_q = i_fpga_indvars_iv_next5_gettanh38_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next5_gettanh38_sel_x(BITSELECT,93)@16
    assign bgTrunc_i_fpga_indvars_iv_next5_gettanh38_sel_x_b = i_fpga_indvars_iv_next5_gettanh38_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39(BLACKBOX,70)@16
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh0 thei_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_gettanh38_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_feedback_stall_out_12),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_99868(CONSTANT,10)
    assign c_i11_99868_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30(BLACKBOX,65)@16
    // out out_feedback_stall_out_12@20000000
    getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh0 thei_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30 (
        .in_data_in(c_i11_99868_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q),
        .in_feedback_in_12(i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i11_fpga_indvars_iv4_push12_gettanh39_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_gettanh31_cmp_nsign(LOGICAL,224)@16
    assign i_exitcond6_gettanh31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv4_pop12_gettanh30_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_gettanh34(BLACKBOX,73)@16
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0 thei_llvm_fpga_push_i1_notexitcond_gettanh34 (
        .in_data_in(i_exitcond6_gettanh31_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_gettanh3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,206)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid236_i_next_initerations_gettanh0_shift_x(BITSELECT,235)@16
    assign rightShiftStage0Idx1Rng1_uid236_i_next_initerations_gettanh0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid238_i_next_initerations_gettanh0_shift_x(BITJOIN,237)@16
    assign rightShiftStage0Idx1_uid238_i_next_initerations_gettanh0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid236_i_next_initerations_gettanh0_shift_x_b};

    // valid_fanout_reg1(REG,204)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg2(REG,205)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push15_gettanh9(BLACKBOX,76)@16
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    getTanh_i_llvm_fpga_push_i4_initerations_push15_gettanh0 thei_llvm_fpga_push_i4_initerations_push15_gettanh9 (
        .in_data_in(i_next_initerations_gettanh8_vt_join_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_feedback_stall_out_15),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop15_gettanh7(BLACKBOX,69)@16
    // out out_feedback_stall_out_15@20000000
    getTanh_i_llvm_fpga_pop_i4_initerations_pop15_gettanh0 thei_llvm_fpga_pop_i4_initerations_pop15_gettanh7 (
        .in_data_in(c_i4_760_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q),
        .in_feedback_in_15(i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i4_initerations_push15_gettanh9_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x(MUX,239)@16
    assign rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_data_out or rightShiftStage0Idx1_uid238_i_next_initerations_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_s)
            1'b0 : rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop15_gettanh7_out_data_out;
            1'b1 : rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_q = rightShiftStage0Idx1_uid238_i_next_initerations_gettanh0_shift_x_q;
            default : rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_gettanh8_vt_select_2(BITSELECT,83)@16
    assign i_next_initerations_gettanh8_vt_select_2_b = rightShiftStage0_uid240_i_next_initerations_gettanh0_shift_x_q[2:0];

    // i_next_initerations_gettanh8_vt_join(BITJOIN,82)@16
    assign i_next_initerations_gettanh8_vt_join_q = {GND_q, i_next_initerations_gettanh8_vt_select_2_b};

    // i_last_initeration_gettanh10_sel_x(BITSELECT,132)@16
    assign i_last_initeration_gettanh10_sel_x_b = i_next_initerations_gettanh8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_gettanh11(BLACKBOX,71)@16
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0 thei_llvm_fpga_push_i1_lastiniteration_gettanh11 (
        .in_data_in(i_last_initeration_gettanh10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gettanh6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15(DELAY,244)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15 ( .xin(in_c0_eni134_1_tpl), .xout(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_gettanh6(BLACKBOX,64)@16
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0 thei_llvm_fpga_pipeline_keep_going_gettanh6 (
        .in_data_in(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gettanh11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gettanh34_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_15_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,89)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh6_out_pipeline_valid_out;

    // redist5_sync_together87_aunroll_x_in_i_valid_18(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together87_aunroll_x_in_i_valid_18_delay_0 <= '0;
            redist5_sync_together87_aunroll_x_in_i_valid_18_delay_1 <= '0;
            redist5_sync_together87_aunroll_x_in_i_valid_18_q <= '0;
        end
        else
        begin
            redist5_sync_together87_aunroll_x_in_i_valid_18_delay_0 <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_15_q);
            redist5_sync_together87_aunroll_x_in_i_valid_18_delay_1 <= redist5_sync_together87_aunroll_x_in_i_valid_18_delay_0;
            redist5_sync_together87_aunroll_x_in_i_valid_18_q <= redist5_sync_together87_aunroll_x_in_i_valid_18_delay_1;
        end
    end

    // redist6_sync_together87_aunroll_x_in_i_valid_33(DELAY,249)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together87_aunroll_x_in_i_valid_33 ( .xin(redist5_sync_together87_aunroll_x_in_i_valid_18_q), .xout(redist6_sync_together87_aunroll_x_in_i_valid_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,214)@34 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together87_aunroll_x_in_i_valid_33_q);
        end
    end

    // c_float_0x400DA35A4000000066(FLOATCONSTANT,4)
    assign c_float_0x400DA35A4000000066_q = $unsigned(32'b01000000011011010001101011010010);

    // c_float_0x403386186000000065(FLOATCONSTANT,5)
    assign c_float_0x403386186000000065_q = $unsigned(32'b01000001100111000011000011000011);

    // valid_fanout_reg7(REG,210)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_18_q);
        end
    end

    // redist13_i_first_cleanup_xor_gettanh4_q_4(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_0 <= '0;
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_1 <= '0;
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_2 <= '0;
            redist13_i_first_cleanup_xor_gettanh4_q_4_q <= '0;
        end
        else
        begin
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_gettanh4_q);
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_1 <= redist13_i_first_cleanup_xor_gettanh4_q_4_delay_0;
            redist13_i_first_cleanup_xor_gettanh4_q_4_delay_2 <= redist13_i_first_cleanup_xor_gettanh4_q_4_delay_1;
            redist13_i_first_cleanup_xor_gettanh4_q_4_q <= redist13_i_first_cleanup_xor_gettanh4_q_4_delay_2;
        end
    end

    // valid_fanout_reg6(REG,209)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_18_q);
        end
    end

    // redist7_sync_together87_aunroll_x_in_i_valid_34(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together87_aunroll_x_in_i_valid_34_q <= '0;
        end
        else
        begin
            redist7_sync_together87_aunroll_x_in_i_valid_34_q <= $unsigned(redist6_sync_together87_aunroll_x_in_i_valid_33_q);
        end
    end

    // valid_fanout_reg9(REG,212)@35 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together87_aunroll_x_in_i_valid_34_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20(DELAY,252)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20 ( .xin(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out), .xout(redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,211)@34 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together87_aunroll_x_in_i_valid_33_q);
        end
    end

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_notEnable(LOGICAL,293)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_nor(LOGICAL,294)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_nor_q = ~ (redist15_i_arrayidx154_gettanh17_vt_join_q_15_notEnable_q | redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena_q);

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_last(CONSTANT,290)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_last_q = $unsigned(5'b01011);

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp(LOGICAL,291)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_b = {1'b0, redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_q};
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_q = $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_last_q == redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_b ? 1'b1 : 1'b0);

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmpReg(REG,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmpReg_q <= $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmp_q);
        end
    end

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena(REG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_i_arrayidx154_gettanh17_vt_join_q_15_nor_q == 1'b1)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena_q <= $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_cmpReg_q);
        end
    end

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_enaAnd(LOGICAL,296)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_enaAnd_q = redist15_i_arrayidx154_gettanh17_vt_join_q_15_sticky_ena_q & VCC_q;

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt(COUNTER,288)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i <= 4'd0;
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i == 4'd11)
            begin
                redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_eq <= 1'b0;
            end
            if (redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_eq == 1'b1)
            begin
                redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i <= $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i <= $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_q = redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_i[3:0];

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_inputreg0(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_inputreg0_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_inputreg0_q <= $unsigned(i_arrayidx154_gettanh17_vt_join_q);
        end
    end

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_wraddr(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist15_i_arrayidx154_gettanh17_vt_join_q_15_wraddr_q <= $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_q);
        end
    end

    // redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem(DUALMEM,287)
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ia = $unsigned(redist15_i_arrayidx154_gettanh17_vt_join_q_15_inputreg0_q);
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_aa = redist15_i_arrayidx154_gettanh17_vt_join_q_15_wraddr_q;
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ab = redist15_i_arrayidx154_gettanh17_vt_join_q_15_rdcnt_q;
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(13),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(13),
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
    ) redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_dmem (
        .clocken1(redist15_i_arrayidx154_gettanh17_vt_join_q_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_reset0),
        .clock1(clock),
        .address_a(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_aa),
        .data_a(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_ab),
        .q_b(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_iq),
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
    assign redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_q = redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_3_gettanh26(BLACKBOX,61)@35
    // out out_memdep_3_getTanh_avm_address@20000000
    // out out_memdep_3_getTanh_avm_burstcount@20000000
    // out out_memdep_3_getTanh_avm_byteenable@20000000
    // out out_memdep_3_getTanh_avm_enable@20000000
    // out out_memdep_3_getTanh_avm_read@20000000
    // out out_memdep_3_getTanh_avm_write@20000000
    // out out_memdep_3_getTanh_avm_writedata@20000000
    // out out_o_stall@36
    // out out_o_valid@36
    // out out_o_writeack@36
    getTanh_i_llvm_fpga_mem_memdep_3_gettanh0 thei_llvm_fpga_mem_memdep_3_gettanh26 (
        .in_flush(in_flush),
        .in_i_address(redist15_i_arrayidx154_gettanh17_vt_join_q_15_mem_q),
        .in_i_predicate(redist14_i_first_cleanup_xor_gettanh4_q_19_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_i_writedata(i_acl_gettanh25_q),
        .in_memdep_3_getTanh_avm_readdata(in_memdep_3_getTanh_avm_readdata),
        .in_memdep_3_getTanh_avm_readdatavalid(in_memdep_3_getTanh_avm_readdatavalid),
        .in_memdep_3_getTanh_avm_waitrequest(in_memdep_3_getTanh_avm_waitrequest),
        .in_memdep_3_getTanh_avm_writeack(in_memdep_3_getTanh_avm_writeack),
        .out_memdep_3_getTanh_avm_address(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_address),
        .out_memdep_3_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_burstcount),
        .out_memdep_3_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_byteenable),
        .out_memdep_3_getTanh_avm_enable(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_enable),
        .out_memdep_3_getTanh_avm_read(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_read),
        .out_memdep_3_getTanh_avm_write(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_write),
        .out_memdep_3_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_3_gettanh26_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27(BLACKBOX,72)@36
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    getTanh_i_llvm_fpga_push_i1_memdep_phi_push14_gettanh0 thei_llvm_fpga_push_i1_memdep_phi_push14_gettanh27 (
        .in_data_in(i_llvm_fpga_mem_memdep_3_gettanh26_out_o_writeack),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_feedback_stall_out_14),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_0 <= '0;
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_1 <= '0;
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_2 <= '0;
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_q <= '0;
        end
        else
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_0 <= $unsigned(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q);
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_1 <= redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_0;
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_2 <= redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_1;
            redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_q <= redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18(BLACKBOX,66)@20
    // out out_feedback_stall_out_14@20000000
    getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh0 thei_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18 (
        .in_data_in(GND_q),
        .in_dir(redist2_sync_together87_aunroll_x_in_c0_eni134_1_tpl_19_q),
        .in_feedback_in_14(i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i1_memdep_phi_push14_gettanh27_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_getTanh_A_pmem(CONSTANT,7)
    assign c_getTanh_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,241)@20
    assign i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_A_pmem_q[63:12];
    assign i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_A_pmem_q[11:0];

    // valid_fanout_reg5(REG,208)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // c_getTanh_addr_pmem(CONSTANT,8)
    assign c_getTanh_addr_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,242)@16
    assign i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_addr_pmem_q[63:12];
    assign i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_addr_pmem_q[11:0];

    // c_i32_063(CONSTANT,29)
    assign c_i32_063_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,207)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg10(REG,213)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together87_aunroll_x_in_i_valid_14_q);
        end
    end

    // c_i32_167(CONSTANT,30)
    assign c_i32_167_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc26_gettanh28(ADD,56)@16
    assign i_inc26_gettanh28_a = {1'b0, i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_data_out};
    assign i_inc26_gettanh28_b = {1'b0, c_i32_167_q};
    assign i_inc26_gettanh28_o = $unsigned(i_inc26_gettanh28_a) + $unsigned(i_inc26_gettanh28_b);
    assign i_inc26_gettanh28_q = i_inc26_gettanh28_o[32:0];

    // bgTrunc_i_inc26_gettanh28_sel_x(BITSELECT,94)@16
    assign bgTrunc_i_inc26_gettanh28_sel_x_b = i_inc26_gettanh28_q[31:0];

    // i_llvm_fpga_push_i32_i_023_push13_gettanh29(BLACKBOX,74)@16
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    getTanh_i_llvm_fpga_push_i32_i_023_push13_gettanh0 thei_llvm_fpga_push_i32_i_023_push13_gettanh29 (
        .in_data_in(bgTrunc_i_inc26_gettanh28_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_feedback_stall_out_13),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_023_pop13_gettanh12(BLACKBOX,67)@16
    // out out_feedback_stall_out_13@20000000
    getTanh_i_llvm_fpga_pop_i32_i_023_pop13_gettanh0 thei_llvm_fpga_pop_i32_i_023_pop13_gettanh12 (
        .in_data_in(c_i32_063_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni134_1_tpl_15_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_i_023_push13_gettanh29_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom12_gettanh13_sel_x(BITSELECT,130)@16
    assign i_idxprom12_gettanh13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_023_pop13_gettanh12_out_data_out[31:0]};

    // i_idxprom12_gettanh13_vt_select_31(BITSELECT,53)@16
    assign i_idxprom12_gettanh13_vt_select_31_b = i_idxprom12_gettanh13_sel_x_b[31:0];

    // i_idxprom12_gettanh13_vt_join(BITJOIN,52)@16
    assign i_idxprom12_gettanh13_vt_join_q = {c_i32_063_q, i_idxprom12_gettanh13_vt_select_31_b};

    // i_arrayidx133_gettanh0_dupName_0_trunc_sel_x(BITSELECT,111)@16
    assign i_arrayidx133_gettanh0_dupName_0_trunc_sel_x_b = i_idxprom12_gettanh13_vt_join_q[11:0];

    // i_arrayidx133_gettanh0_narrow_x(BITSELECT,104)@16
    assign i_arrayidx133_gettanh0_narrow_x_b = i_arrayidx133_gettanh0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx133_gettanh0_shift_join_x(BITJOIN,105)@16
    assign i_arrayidx133_gettanh0_shift_join_x_q = {i_arrayidx133_gettanh0_narrow_x_b, i_arrayidx133_gettanh14_vt_const_1_q};

    // i_arrayidx133_gettanh0_add_x(ADD,101)@16
    assign i_arrayidx133_gettanh0_add_x_a = {1'b0, i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx133_gettanh0_add_x_b = {1'b0, i_arrayidx133_gettanh0_shift_join_x_q};
    assign i_arrayidx133_gettanh0_add_x_o = $unsigned(i_arrayidx133_gettanh0_add_x_a) + $unsigned(i_arrayidx133_gettanh0_add_x_b);
    assign i_arrayidx133_gettanh0_add_x_q = i_arrayidx133_gettanh0_add_x_o[12:0];

    // i_arrayidx133_gettanh0_dupName_2_trunc_sel_x(BITSELECT,112)@16
    assign i_arrayidx133_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx133_gettanh0_add_x_q[11:0];

    // i_arrayidx133_gettanh0_append_upper_bits_x(BITJOIN,102)@16
    assign i_arrayidx133_gettanh0_append_upper_bits_x_q = {i_arrayidx133_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx133_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx133_gettanh14_vt_select_63(BITSELECT,38)@16
    assign i_arrayidx133_gettanh14_vt_select_63_b = i_arrayidx133_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx133_gettanh14_vt_join(BITJOIN,37)@16
    assign i_arrayidx133_gettanh14_vt_join_q = {i_arrayidx133_gettanh14_vt_select_63_b, i_arrayidx133_gettanh14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_gettanh4_gettanh15(BLACKBOX,62)@16
    // in in_i_stall@20000000
    // out out_o_readdata@20
    // out out_o_stall@19
    // out out_o_valid@20
    // out out_unnamed_getTanh4_getTanh_avm_address@20000000
    // out out_unnamed_getTanh4_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh4_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh4_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh4_getTanh_avm_read@20000000
    // out out_unnamed_getTanh4_getTanh_avm_write@20000000
    // out out_unnamed_getTanh4_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh4_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh4_gettanh15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx133_gettanh14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_gettanh4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_getTanh4_getTanh_avm_readdata(in_unnamed_getTanh4_getTanh_avm_readdata),
        .in_unnamed_getTanh4_getTanh_avm_readdatavalid(in_unnamed_getTanh4_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh4_getTanh_avm_waitrequest(in_unnamed_getTanh4_getTanh_avm_waitrequest),
        .in_unnamed_getTanh4_getTanh_avm_writeack(in_unnamed_getTanh4_getTanh_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_getTanh4_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_address),
        .out_unnamed_getTanh4_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_burstcount),
        .out_unnamed_getTanh4_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_byteenable),
        .out_unnamed_getTanh4_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_enable),
        .out_unnamed_getTanh4_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_read),
        .out_unnamed_getTanh4_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_write),
        .out_unnamed_getTanh4_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom14_gettanh16_sel_x(BITSELECT,131)@20
    assign i_idxprom14_gettanh16_sel_x_b = $unsigned({{32{i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_o_readdata[31]}}, i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_o_readdata[31:0]});

    // i_arrayidx154_gettanh0_dupName_0_trunc_sel_x(BITSELECT,123)@20
    assign i_arrayidx154_gettanh0_dupName_0_trunc_sel_x_b = i_idxprom14_gettanh16_sel_x_b[11:0];

    // i_arrayidx154_gettanh0_narrow_x(BITSELECT,116)@20
    assign i_arrayidx154_gettanh0_narrow_x_b = i_arrayidx154_gettanh0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx154_gettanh0_shift_join_x(BITJOIN,117)@20
    assign i_arrayidx154_gettanh0_shift_join_x_q = {i_arrayidx154_gettanh0_narrow_x_b, i_arrayidx133_gettanh14_vt_const_1_q};

    // i_arrayidx154_gettanh0_add_x(ADD,113)@20
    assign i_arrayidx154_gettanh0_add_x_a = {1'b0, i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx154_gettanh0_add_x_b = {1'b0, i_arrayidx154_gettanh0_shift_join_x_q};
    assign i_arrayidx154_gettanh0_add_x_o = $unsigned(i_arrayidx154_gettanh0_add_x_a) + $unsigned(i_arrayidx154_gettanh0_add_x_b);
    assign i_arrayidx154_gettanh0_add_x_q = i_arrayidx154_gettanh0_add_x_o[12:0];

    // i_arrayidx154_gettanh0_dupName_2_trunc_sel_x(BITSELECT,124)@20
    assign i_arrayidx154_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx154_gettanh0_add_x_q[11:0];

    // i_arrayidx154_gettanh0_append_upper_bits_x(BITJOIN,114)@20
    assign i_arrayidx154_gettanh0_append_upper_bits_x_q = {i_arrayidx154_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx154_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx154_gettanh17_vt_select_63(BITSELECT,41)@20
    assign i_arrayidx154_gettanh17_vt_select_63_b = i_arrayidx154_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx133_gettanh14_vt_const_1(CONSTANT,36)
    assign i_arrayidx133_gettanh14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx154_gettanh17_vt_join(BITJOIN,40)@20
    assign i_arrayidx154_gettanh17_vt_join_q = {i_arrayidx154_gettanh17_vt_select_63_b, i_arrayidx133_gettanh14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_gettanh5_gettanh19(BLACKBOX,63)@20
    // in in_i_stall@20000000
    // out out_o_readdata@21
    // out out_o_stall@21
    // out out_o_valid@21
    // out out_unnamed_getTanh5_getTanh_avm_address@20000000
    // out out_unnamed_getTanh5_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh5_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_read@20000000
    // out out_unnamed_getTanh5_getTanh_avm_write@20000000
    // out out_unnamed_getTanh5_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh5_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh5_gettanh19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx154_gettanh17_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop14_gettanh18_out_data_out),
        .in_i_predicate(redist13_i_first_cleanup_xor_gettanh4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_getTanh5_getTanh_avm_readdata(in_unnamed_getTanh5_getTanh_avm_readdata),
        .in_unnamed_getTanh5_getTanh_avm_readdatavalid(in_unnamed_getTanh5_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh5_getTanh_avm_waitrequest(in_unnamed_getTanh5_getTanh_avm_waitrequest),
        .in_unnamed_getTanh5_getTanh_avm_writeack(in_unnamed_getTanh5_getTanh_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_getTanh5_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_address),
        .out_unnamed_getTanh5_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_burstcount),
        .out_unnamed_getTanh5_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_byteenable),
        .out_unnamed_getTanh5_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_enable),
        .out_unnamed_getTanh5_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_read),
        .out_unnamed_getTanh5_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_write),
        .out_unnamed_getTanh5_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fp_multadd_mult_add_gettanh21(BLACKBOX,60)@21
    // out out_primWireOut@25
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_gettanh21 (
        .in_0(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata),
        .in_1(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata),
        .in_2(c_float_0x403386186000000065_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_gettanh21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_notEnable(LOGICAL,264)
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_nor(LOGICAL,265)
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_nor_q = ~ (redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_notEnable_q | redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena_q);

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_cmpReg(REG,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena(REG,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_nor_q == 1'b1)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena_q <= $unsigned(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_cmpReg_q);
        end
    end

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_enaAnd(LOGICAL,267)
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_enaAnd_q = redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_sticky_ena_q & VCC_q;

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt(COUNTER,261)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_q = redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_i[0:0];

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_inputreg0(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_inputreg0_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata);
        end
    end

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_wraddr(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_wraddr_q <= $unsigned(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_q);
        end
    end

    // redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem(DUALMEM,260)
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ia = $unsigned(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_inputreg0_q);
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_aa = redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_wraddr_q;
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ab = redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_rdcnt_q;
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
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
    ) redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_dmem (
        .clocken1(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_aa),
        .data_a(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_ab),
        .q_b(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_iq),
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
    assign redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_q = redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_iq[31:0];

    // i_mul18_gettanh22(BLACKBOX,78)@25
    // out out_primWireOut@28
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y thei_mul18_gettanh22 (
        .in_0(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_q),
        .in_1(i_llvm_fpga_fp_multadd_mult_add_gettanh21_out_primWireOut),
        .out_primWireOut(i_mul18_gettanh22_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_notEnable(LOGICAL,272)
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_nor(LOGICAL,273)
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_nor_q = ~ (redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_notEnable_q | redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena_q);

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_cmpReg(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena(REG,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_nor_q == 1'b1)
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena_q <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_cmpReg_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_enaAnd(LOGICAL,275)
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_enaAnd_q = redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_sticky_ena_q & VCC_q;

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt(COUNTER,269)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_q = redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_i[0:0];

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_wraddr(REG,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_wraddr_q <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem(DUALMEM,268)
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ia = $unsigned(redist10_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_4_mem_q);
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_aa = redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_wraddr_q;
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ab = redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_rdcnt_q;
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
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
    ) redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_dmem (
        .clocken1(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_reset0),
        .clock1(clock),
        .address_a(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_aa),
        .data_a(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_ab),
        .q_b(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_iq),
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
    assign redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_q = redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_iq[31:0];

    // i_llvm_fpga_fp_multadd_mult_add29_gettanh23(BLACKBOX,59)@28
    // out out_primWireOut@32
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add29_gettanh23 (
        .in_0(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_q),
        .in_1(i_mul18_gettanh22_out_primWireOut),
        .in_2(c_float_0x400DA35A4000000066_q),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add29_gettanh23_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_notEnable(LOGICAL,282)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_nor(LOGICAL,283)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_nor_q = ~ (redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_notEnable_q | redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena_q);

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_last(CONSTANT,279)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_last_q = $unsigned(2'b01);

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmp(LOGICAL,280)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmp_q = $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_last_q == redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmpReg(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmpReg_q <= $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmp_q);
        end
    end

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_nor_q == 1'b1)
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena_q <= $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_cmpReg_q);
        end
    end

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_enaAnd(LOGICAL,285)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_enaAnd_q = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_sticky_ena_q & VCC_q;

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt(COUNTER,277)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i <= 2'd0;
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i == 2'd1)
            begin
                redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_eq <= 1'b0;
            end
            if (redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_eq == 1'b1)
            begin
                redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i <= $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i <= $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_q = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_i[1:0];

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_wraddr(REG,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_wraddr_q <= $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_q);
        end
    end

    // redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem(DUALMEM,276)
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ia = $unsigned(redist11_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_7_mem_q);
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_aa = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_wraddr_q;
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ab = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_rdcnt_q;
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_dmem (
        .clocken1(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_reset0),
        .clock1(clock),
        .address_a(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_aa),
        .data_a(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_ab),
        .q_b(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_iq),
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
    assign redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_iq[31:0];

    // i_mul21_gettanh24(BLACKBOX,79)@32
    // out out_primWireOut@35
    getTanh_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y thei_mul21_gettanh24 (
        .in_0(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q),
        .in_1(i_llvm_fpga_fp_multadd_mult_add29_gettanh23_out_primWireOut),
        .out_primWireOut(i_mul21_gettanh24_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_1_000000e_0064(FLOATCONSTANT,6)
    assign c_float_1_000000e_0064_q = $unsigned(32'b00111111100000000000000000000000);

    // frac_y_uid161_i_cmp16_gettanh20(BITSELECT,160)@32
    assign frac_y_uid161_i_cmp16_gettanh20_b = c_float_1_000000e_0064_q[22:0];

    // cstZeroWF_uid141_i_cmp16_gettanh20(CONSTANT,140)
    assign cstZeroWF_uid141_i_cmp16_gettanh20_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid164_i_cmp16_gettanh20(LOGICAL,163)@32
    assign fracXIsZero_uid164_i_cmp16_gettanh20_q = $unsigned(cstZeroWF_uid141_i_cmp16_gettanh20_q == frac_y_uid161_i_cmp16_gettanh20_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid165_i_cmp16_gettanh20(LOGICAL,164)@32
    assign fracXIsNotZero_uid165_i_cmp16_gettanh20_q = ~ (fracXIsZero_uid164_i_cmp16_gettanh20_q);

    // cstAllOWE_uid140_i_cmp16_gettanh20(CONSTANT,139)
    assign cstAllOWE_uid140_i_cmp16_gettanh20_q = $unsigned(8'b11111111);

    // exp_y_uid160_i_cmp16_gettanh20(BITSELECT,159)@32
    assign exp_y_uid160_i_cmp16_gettanh20_b = c_float_1_000000e_0064_q[30:23];

    // expXIsMax_uid163_i_cmp16_gettanh20(LOGICAL,162)@32
    assign expXIsMax_uid163_i_cmp16_gettanh20_q = $unsigned(exp_y_uid160_i_cmp16_gettanh20_b == cstAllOWE_uid140_i_cmp16_gettanh20_q ? 1'b1 : 1'b0);

    // excN_y_uid168_i_cmp16_gettanh20(LOGICAL,167)@32
    assign excN_y_uid168_i_cmp16_gettanh20_q = expXIsMax_uid163_i_cmp16_gettanh20_q & fracXIsNotZero_uid165_i_cmp16_gettanh20_q;

    // frac_x_uid144_i_cmp16_gettanh20(BITSELECT,143)@32
    assign frac_x_uid144_i_cmp16_gettanh20_b = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q[22:0];

    // fracXIsZero_uid147_i_cmp16_gettanh20(LOGICAL,146)@32
    assign fracXIsZero_uid147_i_cmp16_gettanh20_q = $unsigned(cstZeroWF_uid141_i_cmp16_gettanh20_q == frac_x_uid144_i_cmp16_gettanh20_b ? 1'b1 : 1'b0);

    // fracXIsNotZero_uid148_i_cmp16_gettanh20(LOGICAL,147)@32
    assign fracXIsNotZero_uid148_i_cmp16_gettanh20_q = ~ (fracXIsZero_uid147_i_cmp16_gettanh20_q);

    // exp_x_uid143_i_cmp16_gettanh20(BITSELECT,142)@32
    assign exp_x_uid143_i_cmp16_gettanh20_b = redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q[30:23];

    // expXIsMax_uid146_i_cmp16_gettanh20(LOGICAL,145)@32
    assign expXIsMax_uid146_i_cmp16_gettanh20_q = $unsigned(exp_x_uid143_i_cmp16_gettanh20_b == cstAllOWE_uid140_i_cmp16_gettanh20_q ? 1'b1 : 1'b0);

    // excN_x_uid151_i_cmp16_gettanh20(LOGICAL,150)@32
    assign excN_x_uid151_i_cmp16_gettanh20_q = expXIsMax_uid146_i_cmp16_gettanh20_q & fracXIsNotZero_uid148_i_cmp16_gettanh20_q;

    // oneIsNaN_uid174_i_cmp16_gettanh20(LOGICAL,173)@32 + 1
    assign oneIsNaN_uid174_i_cmp16_gettanh20_qi = excN_x_uid151_i_cmp16_gettanh20_q | excN_y_uid168_i_cmp16_gettanh20_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid174_i_cmp16_gettanh20_delay ( .xin(oneIsNaN_uid174_i_cmp16_gettanh20_qi), .xout(oneIsNaN_uid174_i_cmp16_gettanh20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid142_i_cmp16_gettanh20(CONSTANT,141)
    assign cstAllZWE_uid142_i_cmp16_gettanh20_q = $unsigned(8'b00000000);

    // expXIsZero_uid162_i_cmp16_gettanh20(LOGICAL,161)@32
    assign expXIsZero_uid162_i_cmp16_gettanh20_q = $unsigned(exp_y_uid160_i_cmp16_gettanh20_b == cstAllZWE_uid142_i_cmp16_gettanh20_q ? 1'b1 : 1'b0);

    // excZ_y_uid166_i_cmp16_gettanh20(LOGICAL,165)@32
    assign excZ_y_uid166_i_cmp16_gettanh20_q = expXIsZero_uid162_i_cmp16_gettanh20_q & fracXIsZero_uid164_i_cmp16_gettanh20_q;

    // invExcYZ_uid196_i_cmp16_gettanh20(LOGICAL,195)@32
    assign invExcYZ_uid196_i_cmp16_gettanh20_q = ~ (excZ_y_uid166_i_cmp16_gettanh20_q);

    // expXIsZero_uid145_i_cmp16_gettanh20(LOGICAL,144)@32
    assign expXIsZero_uid145_i_cmp16_gettanh20_q = $unsigned(exp_x_uid143_i_cmp16_gettanh20_b == cstAllZWE_uid142_i_cmp16_gettanh20_q ? 1'b1 : 1'b0);

    // excZ_x_uid149_i_cmp16_gettanh20(LOGICAL,148)@32
    assign excZ_x_uid149_i_cmp16_gettanh20_q = expXIsZero_uid145_i_cmp16_gettanh20_q & fracXIsZero_uid147_i_cmp16_gettanh20_q;

    // invExcXZ_uid197_i_cmp16_gettanh20(LOGICAL,196)@32
    assign invExcXZ_uid197_i_cmp16_gettanh20_q = ~ (excZ_x_uid149_i_cmp16_gettanh20_q);

    // oneNonZero_uid198_i_cmp16_gettanh20(LOGICAL,197)@32
    assign oneNonZero_uid198_i_cmp16_gettanh20_q = invExcXZ_uid197_i_cmp16_gettanh20_q | invExcYZ_uid196_i_cmp16_gettanh20_q;

    // two_uid190_i_cmp16_gettanh20(CONSTANT,189)
    assign two_uid190_i_cmp16_gettanh20_q = $unsigned(2'b10);

    // signX_uid188_i_cmp16_gettanh20(BITSELECT,187)@32
    assign signX_uid188_i_cmp16_gettanh20_b = $unsigned(redist12_i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_o_readdata_11_mem_q[31:31]);

    // signY_uid189_i_cmp16_gettanh20(BITSELECT,188)@32
    assign signY_uid189_i_cmp16_gettanh20_b = $unsigned(c_float_1_000000e_0064_q[31:31]);

    // concSXSY_uid191_i_cmp16_gettanh20(BITJOIN,190)@32
    assign concSXSY_uid191_i_cmp16_gettanh20_q = {signX_uid188_i_cmp16_gettanh20_b, signY_uid189_i_cmp16_gettanh20_b};

    // sxLTsy_uid192_i_cmp16_gettanh20(LOGICAL,191)@32
    assign sxLTsy_uid192_i_cmp16_gettanh20_q = $unsigned(concSXSY_uid191_i_cmp16_gettanh20_q == two_uid190_i_cmp16_gettanh20_q ? 1'b1 : 1'b0);

    // rc2_uid199_i_cmp16_gettanh20(LOGICAL,198)@32
    assign rc2_uid199_i_cmp16_gettanh20_q = sxLTsy_uid192_i_cmp16_gettanh20_q & oneNonZero_uid198_i_cmp16_gettanh20_q;

    // expFracX_uid179_i_cmp16_gettanh20(BITJOIN,178)@32
    assign expFracX_uid179_i_cmp16_gettanh20_q = {exp_x_uid143_i_cmp16_gettanh20_b, frac_x_uid144_i_cmp16_gettanh20_b};

    // expFracY_uid181_i_cmp16_gettanh20(BITJOIN,180)@32
    assign expFracY_uid181_i_cmp16_gettanh20_q = {exp_y_uid160_i_cmp16_gettanh20_b, frac_y_uid161_i_cmp16_gettanh20_b};

    // efxGTefy_uid183_i_cmp16_gettanh20(COMPARE,182)@32
    assign efxGTefy_uid183_i_cmp16_gettanh20_a = {2'b00, expFracY_uid181_i_cmp16_gettanh20_q};
    assign efxGTefy_uid183_i_cmp16_gettanh20_b = {2'b00, expFracX_uid179_i_cmp16_gettanh20_q};
    assign efxGTefy_uid183_i_cmp16_gettanh20_o = $unsigned(efxGTefy_uid183_i_cmp16_gettanh20_a) - $unsigned(efxGTefy_uid183_i_cmp16_gettanh20_b);
    assign efxGTefy_uid183_i_cmp16_gettanh20_c[0] = efxGTefy_uid183_i_cmp16_gettanh20_o[32];

    // efxLTefy_uid184_i_cmp16_gettanh20(COMPARE,183)@32
    assign efxLTefy_uid184_i_cmp16_gettanh20_a = {2'b00, expFracX_uid179_i_cmp16_gettanh20_q};
    assign efxLTefy_uid184_i_cmp16_gettanh20_b = {2'b00, expFracY_uid181_i_cmp16_gettanh20_q};
    assign efxLTefy_uid184_i_cmp16_gettanh20_o = $unsigned(efxLTefy_uid184_i_cmp16_gettanh20_a) - $unsigned(efxLTefy_uid184_i_cmp16_gettanh20_b);
    assign efxLTefy_uid184_i_cmp16_gettanh20_c[0] = efxLTefy_uid184_i_cmp16_gettanh20_o[32];

    // expFracCompMux_uid195_i_cmp16_gettanh20(MUX,194)@32
    assign expFracCompMux_uid195_i_cmp16_gettanh20_s = signX_uid188_i_cmp16_gettanh20_b;
    always @(expFracCompMux_uid195_i_cmp16_gettanh20_s or efxLTefy_uid184_i_cmp16_gettanh20_c or efxGTefy_uid183_i_cmp16_gettanh20_c)
    begin
        unique case (expFracCompMux_uid195_i_cmp16_gettanh20_s)
            1'b0 : expFracCompMux_uid195_i_cmp16_gettanh20_q = efxLTefy_uid184_i_cmp16_gettanh20_c;
            1'b1 : expFracCompMux_uid195_i_cmp16_gettanh20_q = efxGTefy_uid183_i_cmp16_gettanh20_c;
            default : expFracCompMux_uid195_i_cmp16_gettanh20_q = 1'b0;
        endcase
    end

    // xorSigns_uid193_i_cmp16_gettanh20(LOGICAL,192)@32
    assign xorSigns_uid193_i_cmp16_gettanh20_q = signX_uid188_i_cmp16_gettanh20_b ^ signY_uid189_i_cmp16_gettanh20_b;

    // sxEQsy_uid194_i_cmp16_gettanh20(LOGICAL,193)@32
    assign sxEQsy_uid194_i_cmp16_gettanh20_q = ~ (xorSigns_uid193_i_cmp16_gettanh20_q);

    // sxEQsyExpFracCompMux_uid200_i_cmp16_gettanh20(LOGICAL,199)@32
    assign sxEQsyExpFracCompMux_uid200_i_cmp16_gettanh20_q = sxEQsy_uid194_i_cmp16_gettanh20_q & expFracCompMux_uid195_i_cmp16_gettanh20_q;

    // r_uid201_i_cmp16_gettanh20(LOGICAL,200)@32 + 1
    assign r_uid201_i_cmp16_gettanh20_qi = sxEQsyExpFracCompMux_uid200_i_cmp16_gettanh20_q | rc2_uid199_i_cmp16_gettanh20_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid201_i_cmp16_gettanh20_delay ( .xin(r_uid201_i_cmp16_gettanh20_qi), .xout(r_uid201_i_cmp16_gettanh20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid202_i_cmp16_gettanh20(LOGICAL,201)@33 + 1
    assign rPostExc_uid202_i_cmp16_gettanh20_qi = r_uid201_i_cmp16_gettanh20_q | oneIsNaN_uid174_i_cmp16_gettanh20_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rPostExc_uid202_i_cmp16_gettanh20_delay ( .xin(rPostExc_uid202_i_cmp16_gettanh20_qi), .xout(rPostExc_uid202_i_cmp16_gettanh20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_rPostExc_uid202_i_cmp16_gettanh20_q_2(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rPostExc_uid202_i_cmp16_gettanh20_q_2_q <= '0;
        end
        else
        begin
            redist0_rPostExc_uid202_i_cmp16_gettanh20_q_2_q <= $unsigned(rPostExc_uid202_i_cmp16_gettanh20_q);
        end
    end

    // i_acl_gettanh25(MUX,35)@35
    assign i_acl_gettanh25_s = redist0_rPostExc_uid202_i_cmp16_gettanh20_q_2_q;
    always @(i_acl_gettanh25_s or c_float_1_000000e_0064_q or i_mul21_gettanh24_out_primWireOut)
    begin
        unique case (i_acl_gettanh25_s)
            1'b0 : i_acl_gettanh25_q = c_float_1_000000e_0064_q;
            1'b1 : i_acl_gettanh25_q = i_mul21_gettanh24_out_primWireOut;
            default : i_acl_gettanh25_q = 32'b0;
        endcase
    end

    // redist14_i_first_cleanup_xor_gettanh4_q_19(DELAY,257)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_first_cleanup_xor_gettanh4_q_19 ( .xin(redist13_i_first_cleanup_xor_gettanh4_q_4_q), .xout(redist14_i_first_cleanup_xor_gettanh4_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh40(BLACKBOX,58)@35
    // out out_intel_reserved_ffwd_0_0@20000000
    getTanh_i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh0 thei_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh40 (
        .in_predicate_in(redist14_i_first_cleanup_xor_gettanh4_q_19_q),
        .in_src_data_in_0_0(i_acl_gettanh25_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh40_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,91)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_f32_unnamed_gettanh6_gettanh40_out_intel_reserved_ffwd_0_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,97)
    assign out_unnamed_getTanh4_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_address;
    assign out_unnamed_getTanh4_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_enable;
    assign out_unnamed_getTanh4_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_read;
    assign out_unnamed_getTanh4_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_write;
    assign out_unnamed_getTanh4_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_writedata;
    assign out_unnamed_getTanh4_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_byteenable;
    assign out_unnamed_getTanh4_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh4_gettanh15_out_unnamed_getTanh4_getTanh_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,99)
    assign out_unnamed_getTanh5_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_address;
    assign out_unnamed_getTanh5_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_enable;
    assign out_unnamed_getTanh5_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_read;
    assign out_unnamed_getTanh5_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_write;
    assign out_unnamed_getTanh5_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_writedata;
    assign out_unnamed_getTanh5_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_byteenable;
    assign out_unnamed_getTanh5_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh5_gettanh19_out_unnamed_getTanh5_getTanh_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,100)
    assign out_memdep_3_getTanh_avm_address = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_address;
    assign out_memdep_3_getTanh_avm_enable = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_enable;
    assign out_memdep_3_getTanh_avm_read = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_read;
    assign out_memdep_3_getTanh_avm_write = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_write;
    assign out_memdep_3_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_writedata;
    assign out_memdep_3_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_byteenable;
    assign out_memdep_3_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_3_gettanh26_out_memdep_3_getTanh_avm_burstcount;

    // valid_fanout_reg0(REG,203)@35 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together87_aunroll_x_in_i_valid_34_q);
        end
    end

    // i_masked_gettanh41(LOGICAL,77)@16 + 1
    assign i_masked_gettanh41_qi = i_notcmp_gettanh33_q & i_first_cleanup_gettanh3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gettanh41_delay ( .xin(i_masked_gettanh41_qi), .xout(i_masked_gettanh41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_masked_gettanh41_q_20(DELAY,251)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_masked_gettanh41_q_20 ( .xin(i_masked_gettanh41_q), .xout(redist8_i_masked_gettanh41_q_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,137)@36
    assign out_c0_exi238_0_tpl = GND_q;
    assign out_c0_exi238_1_tpl = redist9_i_llvm_fpga_pipeline_keep_going_gettanh6_out_data_out_20_q;
    assign out_c0_exi238_2_tpl = redist8_i_masked_gettanh41_q_20_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_getTanh1 = GND_q;

endmodule
