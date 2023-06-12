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

// SystemVerilog created from bb_atax_B1_start_stall_region
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B1_start_stall_region (
    input wire [255:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    input wire [0:0] in_feedback_almost_empty_in_10,
    input wire [0:0] in_feedback_data_in_10,
    input wire [0:0] in_feedback_empty_in_10,
    output wire [0:0] out_feedback_stall_out_10,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_memdep_phi_pop9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_data;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_empty;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_almost_empty;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty;
    wire redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_b;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_backStall;
    wire [0:0] merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V0;
    wire [0:0] merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V1;
    wire [0:0] merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V2;
    wire [0:0] merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_backStall;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V1;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V2;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg1_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg0_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg1_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg0_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg0_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg0_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg1_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg0(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_backStall);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg1(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg2(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg2_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg1_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_sync_balance_reg2_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg0(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg1(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,72)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x(BLACKBOX,26)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_c0_exit_0_tpl@35
    // out out_c0_exit_1_tpl@35
    // out out_c0_exit_2_tpl@35
    atax_i_sfc_s_c0_in_wt_entry_s_c0_enter17_atax1 thei_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg0(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg1(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x(BITJOIN,36)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_q = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_reg1_q;

    // bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x(BITSELECT,37)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_q[0:0]);

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg0(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_backStall);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg1(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo(STALLFIFO,28)
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V1;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_reg1_q;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_data = bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V3;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_almost_empty = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V5;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid_bitsignaltemp = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid[0];
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_bitsignaltemp = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall[0];
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid[0] = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall[0] = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty[0] = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty[0] = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(30),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(7),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo (
        .i_valid(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_b),
        .o_valid(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data),
        .o_empty(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg0(REG,127)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg1(REG,126)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo(BITJOIN,40)
    assign bubble_join_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_q = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_data_reg1_q;

    // bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo(BITSELECT,41)
    assign bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg0(REG,131)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg1(REG,130)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg0(REG,129)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg1(REG,128)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg0_q);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg0(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg0_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid);
        end
    end

    // redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg1(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg1_q <= $unsigned(redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo(STALLENABLE,74)
    assign merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_stall_out;
    assign merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V0 = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V1 = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V2 = redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_almost_empty_reg1_q;

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4(BLACKBOX,12)@42
    // in in_stall_in@20000000
    // out out_almost_empty_out@59
    // out out_data_out@59
    // out out_empty_out@59
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@59
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop9_0 thei_llvm_fpga_pop_i1_memdep_phi_pop9_atax4 (
        .in_almost_empty_in(merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V2),
        .in_data_in(GND_q),
        .in_dir_in(bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_b),
        .in_empty_in(merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V1),
        .in_feedback_almost_empty_in_10(in_feedback_almost_empty_in_10),
        .in_feedback_data_in_10(in_feedback_data_in_10),
        .in_feedback_empty_in_10(in_feedback_empty_in_10),
        .in_stall_in(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_V0),
        .out_almost_empty_out(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg0(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg1(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg0_q);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg0(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg0_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg1_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg1(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg0_q);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg0(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg1(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg1(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_valid_out_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4(STALLENABLE,75)
    // Sync
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_temp_back_stall = in_stall_in;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_fast_read = ~ ((i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_almost_empty_out_reg1_q | i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty_reg1_q));
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_slow_read = ~ ((i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_empty_out_reg1_q | i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty_reg1_q));
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_backStall = ~ (merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_forced_read);
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_no_space_for_result = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_temp_back_stall;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0 = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_forced_read;
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_no_space_for_result[0];
    assign merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg0(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_backStall);
        end
    end

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg1(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg0(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg1(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg0(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg1(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg0(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg1(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x(STALLENABLE,73)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_temp_back_stall = i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_stall | redist0_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_c0_exit_2_tpl_7_fifo_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V0 = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V2 = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V4 = i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V2;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V4;

    // i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x(BLACKBOX,25)@35
    // in in_i_stall@20000000
    // out out_iord_bl_call_atax_o_fifoalmost_full@20000000
    // out out_iord_bl_call_atax_o_fifoready@20000000
    // out out_o_almost_empty@59
    // out out_o_empty@59
    // out out_o_stall@20000000
    // out out_o_valid@59
    // out out_o_data_0_tpl@59
    // out out_o_data_1_tpl@59
    // out out_o_data_2_tpl@59
    // out out_o_data_3_tpl@59
    atax_i_iord_bl_call_unnamed_atax0_atax0 thei_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V4),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V2),
        .in_i_stall(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_wt_entry_ataxs_c0_enter17_atax1_aunroll_x_V0),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .out_iord_bl_call_atax_o_fifoalmost_full(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoready),
        .out_o_almost_empty(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_almost_empty),
        .out_o_empty(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_empty),
        .out_o_stall(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .out_o_data_2_tpl(),
        .out_o_data_3_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_atax_o_fifoready = i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoready;
    assign out_iord_bl_call_atax_o_fifoalmost_full = i_iord_bl_call_atax_unnamed_atax0_atax3_aunroll_x_out_iord_bl_call_atax_o_fifoalmost_full;

    // feedback_stall_out_10_sync(GPOUT,11)
    assign out_feedback_stall_out_10 = i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_feedback_stall_out_10;

    // stall_entry_frontStall_reg0(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,22)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg0(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg1(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg2(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg3(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg4(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg5(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg6(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg1(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4(BITJOIN,30)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_q = i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4(BITSELECT,31)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,24)@59
    assign out_almost_empty_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V2;
    assign out_empty_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V1;
    assign out_memdep_phi_pop9 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_b;
    assign out_valid_out = merged_in_SE_bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop9_atax4_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,132)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
