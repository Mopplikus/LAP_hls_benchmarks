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

// SystemVerilog created from bb_kernel_3mm_B5_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B5_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe103958,
    input wire [31:0] in_c0_exe113969,
    input wire [0:0] in_c0_exe1239710,
    input wire [63:0] in_c0_exe1339811,
    input wire [0:0] in_c0_exe1439912,
    input wire [0:0] in_c0_exe1540013,
    input wire [0:0] in_c0_exe1640114,
    input wire [0:0] in_c0_exe1740215,
    input wire [0:0] in_c0_exe1840316,
    input wire [0:0] in_c0_exe1940417,
    input wire [31:0] in_c0_exe2040518,
    input wire [0:0] in_c0_exe2140619,
    input wire [0:0] in_c0_exe2240720,
    input wire [0:0] in_c0_exe2340821,
    input wire [63:0] in_c0_exe23871,
    input wire [0:0] in_c0_exe2440922,
    input wire [0:0] in_c0_exe2541023,
    input wire [0:0] in_c0_exe2624,
    input wire [63:0] in_c0_exe33882,
    input wire [31:0] in_c0_exe43893,
    input wire [0:0] in_c0_exe63914,
    input wire [0:0] in_c0_exe73925,
    input wire [0:0] in_c0_exe83936,
    input wire [0:0] in_c0_exe93947,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exe103958,
    output wire [31:0] out_c0_exe113969,
    output wire [0:0] out_c0_exe1239710,
    output wire [63:0] out_c0_exe1421,
    output wire [0:0] out_c0_exe1439912,
    output wire [0:0] out_c0_exe1540013,
    output wire [0:0] out_c0_exe1640114,
    output wire [0:0] out_c0_exe1740215,
    output wire [0:0] out_c0_exe1840316,
    output wire [0:0] out_c0_exe1940417,
    output wire [31:0] out_c0_exe2040518,
    output wire [0:0] out_c0_exe2140619,
    output wire [0:0] out_c0_exe2240720,
    output wire [0:0] out_c0_exe2340821,
    output wire [63:0] out_c0_exe23871,
    output wire [31:0] out_c0_exe2422,
    output wire [0:0] out_c0_exe2440922,
    output wire [0:0] out_c0_exe2541023,
    output wire [0:0] out_c0_exe2624,
    output wire [63:0] out_c0_exe33882,
    output wire [0:0] out_c0_exe63914,
    output wire [0:0] out_c0_exe73925,
    output wire [0:0] out_c0_exe83936,
    output wire [0:0] out_c0_exe93947,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_2_tpl;
    wire [209:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] sel_for_coalesced_delay_0_v;
    wire [0:0] sel_for_coalesced_delay_0_w;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_q;
    reg [0:0] redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [209:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [209:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_kernel_3mm5_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_kernel_3mm5_b;
    wire [305:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [63:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [63:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_c;
    wire [209:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [209:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_D0;


    // bubble_join_stall_entry(BITJOIN,61)
    assign bubble_join_stall_entry_q = {in_c0_exe93947, in_c0_exe83936, in_c0_exe73925, in_c0_exe63914, in_c0_exe43893, in_c0_exe33882, in_c0_exe2624, in_c0_exe2541023, in_c0_exe2440922, in_c0_exe23871, in_c0_exe2340821, in_c0_exe2240720, in_c0_exe2140619, in_c0_exe2040518, in_c0_exe1940417, in_c0_exe1840316, in_c0_exe1740215, in_c0_exe1640114, in_c0_exe1540013, in_c0_exe1439912, in_c0_exe1339811, in_c0_exe1239710, in_c0_exe113969, in_c0_exe103958};

    // bubble_select_stall_entry(BITSELECT,62)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[102:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[103:103]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[135:104]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[136:136]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[137:137]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[138:138]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[202:139]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[203:203]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[204:204]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[205:205]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[269:206]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[301:270]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[302:302]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[303:303]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[304:304]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[305:305]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,46)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_f, bubble_select_stall_entry_g, bubble_select_stall_entry_h, bubble_select_stall_entry_i, bubble_select_stall_entry_j, bubble_select_stall_entry_k, bubble_select_stall_entry_m, bubble_select_stall_entry_n, bubble_select_stall_entry_o, bubble_select_stall_entry_q, bubble_select_stall_entry_r, bubble_select_stall_entry_s, bubble_select_stall_entry_v, bubble_select_stall_entry_w, bubble_select_stall_entry_x, bubble_select_stall_entry_b, bubble_select_stall_entry_y, bubble_select_stall_entry_l, bubble_select_stall_entry_c, bubble_select_stall_entry_p, bubble_select_stall_entry_t};

    // coalesced_delay_0_fifo(STALLFIFO,55)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(210),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_kernel_3mm5(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_mem_memdep_kernel_3mm5_q = i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_kernel_3mm5(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_mem_memdep_kernel_3mm5_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_kernel_3mm5_q[0:0]);

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_q <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_kernel_3mm5_b);
        end
    end

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_q <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_q);
        end
    end

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_q <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_q);
        end
    end

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_q <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_q);
        end
    end

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_q <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_q);
        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6(STALLENABLE,86)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_s_tv_0 = SE_out_coalesced_delay_0_fifo_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backEN & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5(STALLENABLE,85)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_s_tv_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN & SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5(STALLREG,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall & (SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid | SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_data0 <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_i_valid = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall = SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_V = SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid : SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_D0 = SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_r_data0 : redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_q;

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4(STALLENABLE,84)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_s_tv_0 = SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backEN & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3(STALLENABLE,83)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_s_tv_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_4_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backEN & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2(STALLENABLE,82)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_s_tv_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_3_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backEN & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1(STALLENABLE,81)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_s_tv_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_2_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backEN & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0(STALLENABLE,80)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_V0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_s_tv_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_1_backStall & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backEN = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_v_s_0 = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backEN & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V1;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backStall = ~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0 & SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_R_v_0 <= SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg(STALLFIFO,113)
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5(STALLENABLE,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid) | SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed1 = (~ (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_0_backStall) & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid) | SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_StallValid = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_backStall & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg0 = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_StallValid & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_toReg1 = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_StallValid & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_or0 = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_consumed1 & SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_backStall = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V0 = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_V1 = SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_wireValid = i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_valid;

    // i_llvm_fpga_mem_memdep_kernel_3mm5(BLACKBOX,7)@0
    // in in_i_stall@20000000
    // out out_memdep_kernel_3mm_avm_address@20000000
    // out out_memdep_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_kernel_3mm_avm_enable@20000000
    // out out_memdep_kernel_3mm_avm_read@20000000
    // out out_memdep_kernel_3mm_avm_write@20000000
    // out out_memdep_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_o_writeack@1
    kernel_3mm_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_kernel_3mm5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_stall_entry_e),
        .in_i_dependence(bubble_select_stall_entry_y),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_kernel_3mm5_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_i_writedata(bubble_select_stall_entry_u),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .out_memdep_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,88)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = bubble_out_i_llvm_fpga_mem_memdep_kernel_3mm5_1_reg_valid_out & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_V0 & SE_out_coalesced_delay_0_fifo_and2;

    // i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit420_0_tpl@8
    // out out_c0_exit420_1_tpl@8
    // out out_c0_exit420_2_tpl@8
    kernel_3mm_i_sfc_s_c0_in_for_end_s_c0_enter414_kernel_3mm3 thei_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack),
        .in_c0_eni3413_0_tpl(GND_q),
        .in_c0_eni3413_1_tpl(bubble_select_stall_entry_p),
        .in_c0_eni3413_2_tpl(bubble_select_stall_entry_t),
        .in_c0_eni3413_3_tpl(bubble_select_stall_entry_x),
        .out_o_stall(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_address(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_read(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_write(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata),
        .out_c0_exit420_0_tpl(),
        .out_c0_exit420_1_tpl(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_1_tpl),
        .out_c0_exit420_2_tpl(i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_address = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_read = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_write = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,19)
    assign out_memdep_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_address;
    assign out_memdep_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_enable;
    assign out_memdep_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_read;
    assign out_memdep_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_write;
    assign out_memdep_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_writedata;
    assign out_memdep_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_byteenable;
    assign out_memdep_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_kernel_3mm5_out_memdep_kernel_3mm_avm_burstcount;

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_D0);
        end
    end

    // redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_q <= $unsigned(redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_5_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x(BITJOIN,66)
    assign bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_q = {i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_2_tpl, i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_out_c0_exit420_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x(BITSELECT,67)
    assign bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_q[95:64]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,70)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,71)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[209:0]);

    // sel_for_coalesced_delay_0(BITSELECT,47)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[192:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[193:193]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[194:194]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[195:195]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[196:196]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[197:197]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[198:198]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[199:199]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[200:200]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[201:201]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[202:202]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[203:203]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[204:204]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[205:205]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[206:206]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[207:207]);
    assign sel_for_coalesced_delay_0_v = $unsigned(bubble_select_coalesced_delay_0_fifo_b[208:208]);
    assign sel_for_coalesced_delay_0_w = $unsigned(bubble_select_coalesced_delay_0_fifo_b[209:209]);

    // dupName_0_sync_out_x(GPOUT,20)@8
    assign out_c0_exe103958 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe113969 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1239710 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe1421 = bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_b;
    assign out_c0_exe1439912 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe1540013 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe1640114 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1740215 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe1840316 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe1940417 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe2040518 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe2140619 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe2240720 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe2340821 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe23871 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2422 = bubble_select_i_sfc_s_c0_in_for_end_kernel_3mms_c0_enter414_kernel_3mm3_aunroll_x_c;
    assign out_c0_exe2440922 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe2541023 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe2624 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe33882 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe63914 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe73925 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe83936 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe93947 = sel_for_coalesced_delay_0_f;
    assign out_memdep = redist22_i_llvm_fpga_mem_memdep_kernel_3mm5_out_o_writeack_7_6_q;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
