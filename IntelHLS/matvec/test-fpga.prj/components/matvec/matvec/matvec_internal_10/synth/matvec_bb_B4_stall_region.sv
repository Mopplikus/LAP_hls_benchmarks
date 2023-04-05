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

// SystemVerilog created from bb_matvec_B4_stall_region
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B4_stall_region (
    input wire [63:0] in_unnamed_matvec7_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_readdatavalid,
    output wire [63:0] out_unnamed_matvec7_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_write,
    output wire [63:0] out_unnamed_matvec7_matvec_avm_writedata,
    output wire [7:0] out_unnamed_matvec7_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe3951,
    input wire [0:0] in_c0_exe72,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_1_matvec_avm_readdata,
    input wire [0:0] in_memdep_1_matvec_avm_writeack,
    input wire [0:0] in_memdep_1_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_1_matvec_avm_readdatavalid,
    output wire [31:0] out_memdep_1_matvec_avm_address,
    output wire [0:0] out_memdep_1_matvec_avm_enable,
    output wire [0:0] out_memdep_1_matvec_avm_read,
    output wire [0:0] out_memdep_1_matvec_avm_write,
    output wire [31:0] out_memdep_1_matvec_avm_writedata,
    output wire [3:0] out_memdep_1_matvec_avm_byteenable,
    output wire [0:0] out_memdep_1_matvec_avm_burstcount,
    output wire [0:0] out_c0_exe72,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_matvec8_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_readdatavalid,
    output wire [63:0] out_unnamed_matvec8_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_write,
    output wire [63:0] out_unnamed_matvec8_matvec_avm_writedata,
    output wire [7:0] out_unnamed_matvec8_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_burstcount,
    input wire [31:0] in_memdep_2_matvec_avm_readdata,
    input wire [0:0] in_memdep_2_matvec_avm_writeack,
    input wire [0:0] in_memdep_2_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_2_matvec_avm_readdatavalid,
    output wire [31:0] out_memdep_2_matvec_avm_address,
    output wire [0:0] out_memdep_2_matvec_avm_enable,
    output wire [0:0] out_memdep_2_matvec_avm_read,
    output wire [0:0] out_memdep_2_matvec_avm_write,
    output wire [31:0] out_memdep_2_matvec_avm_writedata,
    output wire [3:0] out_memdep_2_matvec_avm_byteenable,
    output wire [0:0] out_memdep_2_matvec_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_matvec_Out_local_pmem_q;
    wire [63:0] c_matvec_V_local_pmem_q;
    wire [1:0] i_arrayidx162_matvec3_vt_const_1_q;
    wire [63:0] i_arrayidx162_matvec3_vt_join_q;
    wire [61:0] i_arrayidx162_matvec3_vt_select_63_b;
    wire [63:0] i_arrayidx203_matvec8_vt_join_q;
    wire [61:0] i_arrayidx203_matvec8_vt_select_63_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_matvec4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_2_matvec9_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_writedata;
    wire [64:0] i_arrayidx14_matvec0_add_x_a;
    wire [64:0] i_arrayidx14_matvec0_add_x_b;
    logic [64:0] i_arrayidx14_matvec0_add_x_o;
    wire [64:0] i_arrayidx14_matvec0_add_x_q;
    wire [61:0] i_arrayidx14_matvec0_narrow_x_b;
    wire [63:0] i_arrayidx14_matvec0_shift_join_x_q;
    wire [63:0] i_arrayidx14_matvec0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx162_matvec0_add_x_a;
    wire [7:0] i_arrayidx162_matvec0_add_x_b;
    logic [7:0] i_arrayidx162_matvec0_add_x_o;
    wire [7:0] i_arrayidx162_matvec0_add_x_q;
    wire [63:0] i_arrayidx162_matvec0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx162_matvec0_narrow_x_b;
    wire [6:0] i_arrayidx162_matvec0_shift_join_x_q;
    wire [6:0] i_arrayidx162_matvec0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx162_matvec0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx18_matvec0_add_x_a;
    wire [64:0] i_arrayidx18_matvec0_add_x_b;
    logic [64:0] i_arrayidx18_matvec0_add_x_o;
    wire [64:0] i_arrayidx18_matvec0_add_x_q;
    wire [63:0] i_arrayidx18_matvec0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx203_matvec0_add_x_a;
    wire [7:0] i_arrayidx203_matvec0_add_x_b;
    logic [7:0] i_arrayidx203_matvec0_add_x_o;
    wire [7:0] i_arrayidx203_matvec0_add_x_q;
    wire [63:0] i_arrayidx203_matvec0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx203_matvec0_dupName_2_trunc_sel_x_b;
    wire [56:0] i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_c;
    wire [0:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in;
    wire redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in;
    wire redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [4:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_data_in;
    wire [0:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out;
    wire redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out;
    wire redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [4:0] redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_data_out;
    reg [63:0] redist1_stall_entry_o4_1_0_q;
    wire [0:0] redist2_stall_entry_o5_34_fifo_valid_in;
    wire redist2_stall_entry_o5_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o5_34_fifo_stall_in;
    wire redist2_stall_entry_o5_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o5_34_fifo_data_in;
    wire [0:0] redist2_stall_entry_o5_34_fifo_valid_out;
    wire redist2_stall_entry_o5_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o5_34_fifo_stall_out;
    wire redist2_stall_entry_o5_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o5_34_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_matvec7_matvec2_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_matvec7_matvec2_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_matvec8_matvec7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_matvec8_matvec7_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [4:0] bubble_join_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_q;
    wire [4:0] bubble_select_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_b;
    wire [0:0] bubble_join_redist2_stall_entry_o5_34_fifo_q;
    wire [0:0] bubble_select_redist2_stall_entry_o5_34_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_V0;
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
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V1;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_1;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V2;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_wireValid;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and0;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and1;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_backStall;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,107)
    assign bubble_join_stall_entry_q = {in_c0_exe72, in_c0_exe3951};

    // bubble_select_stall_entry(BITSELECT,108)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);

    // redist1_stall_entry_o4_1_0(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // i_arrayidx162_matvec0_dupName_0_trunc_sel_x(BITSELECT,64)@1
    assign i_arrayidx162_matvec0_dupName_0_trunc_sel_x_b = redist1_stall_entry_o4_1_0_q[6:0];

    // i_arrayidx162_matvec0_narrow_x(BITSELECT,57)@1
    assign i_arrayidx162_matvec0_narrow_x_b = i_arrayidx162_matvec0_dupName_0_trunc_sel_x_b[4:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_matvec8_matvec7(BITJOIN,104)
    assign bubble_join_i_llvm_fpga_mem_unnamed_matvec8_matvec7_q = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_matvec8_matvec7(BITSELECT,105)
    assign bubble_select_i_llvm_fpga_mem_unnamed_matvec8_matvec7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_matvec8_matvec7_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_matvec7_matvec2(BITJOIN,101)
    assign bubble_join_i_llvm_fpga_mem_unnamed_matvec7_matvec2_q = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_matvec7_matvec2(BITSELECT,102)
    assign bubble_select_i_llvm_fpga_mem_unnamed_matvec7_matvec2_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_matvec7_matvec2_q[31:0]);

    // c_matvec_V_local_pmem(CONSTANT,4)
    assign c_matvec_V_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx162_matvec0_upper_bits_x_merged_bit_select(BITSELECT,85)@33
    assign i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_V_local_pmem_q[63:7];
    assign i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_V_local_pmem_q[6:0];

    // bubble_join_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo(BITJOIN,112)
    assign bubble_join_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_q = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_data_out;

    // bubble_select_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo(BITSELECT,113)
    assign bubble_select_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_q[4:0]);

    // i_arrayidx162_matvec0_shift_join_x(BITJOIN,58)@33
    assign i_arrayidx162_matvec0_shift_join_x_q = {bubble_select_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_b, i_arrayidx162_matvec3_vt_const_1_q};

    // i_arrayidx162_matvec0_add_x(ADD,54)@33
    assign i_arrayidx162_matvec0_add_x_a = {1'b0, i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx162_matvec0_add_x_b = {1'b0, i_arrayidx162_matvec0_shift_join_x_q};
    assign i_arrayidx162_matvec0_add_x_o = $unsigned(i_arrayidx162_matvec0_add_x_a) + $unsigned(i_arrayidx162_matvec0_add_x_b);
    assign i_arrayidx162_matvec0_add_x_q = i_arrayidx162_matvec0_add_x_o[7:0];

    // i_arrayidx162_matvec0_dupName_2_trunc_sel_x(BITSELECT,65)@33
    assign i_arrayidx162_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx162_matvec0_add_x_q[6:0];

    // i_arrayidx162_matvec0_append_upper_bits_x(BITJOIN,55)@33
    assign i_arrayidx162_matvec0_append_upper_bits_x_q = {i_arrayidx162_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx162_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx162_matvec3_vt_select_63(BITSELECT,11)@33
    assign i_arrayidx162_matvec3_vt_select_63_b = i_arrayidx162_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx162_matvec3_vt_const_1(CONSTANT,9)
    assign i_arrayidx162_matvec3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx162_matvec3_vt_join(BITJOIN,10)@33
    assign i_arrayidx162_matvec3_vt_join_q = {i_arrayidx162_matvec3_vt_select_63_b, i_arrayidx162_matvec3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_1_matvec4(BLACKBOX,17)@33
    // in in_i_stall@20000000
    // out out_memdep_1_matvec_avm_address@20000000
    // out out_memdep_1_matvec_avm_burstcount@20000000
    // out out_memdep_1_matvec_avm_byteenable@20000000
    // out out_memdep_1_matvec_avm_enable@20000000
    // out out_memdep_1_matvec_avm_read@20000000
    // out out_memdep_1_matvec_avm_write@20000000
    // out out_memdep_1_matvec_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    matvec_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_matvec4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx162_matvec3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_matvec7_matvec2_b),
        .in_memdep_1_matvec_avm_readdata(in_memdep_1_matvec_avm_readdata),
        .in_memdep_1_matvec_avm_readdatavalid(in_memdep_1_matvec_avm_readdatavalid),
        .in_memdep_1_matvec_avm_waitrequest(in_memdep_1_matvec_avm_waitrequest),
        .in_memdep_1_matvec_avm_writeack(in_memdep_1_matvec_avm_writeack),
        .out_memdep_1_matvec_avm_address(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_address),
        .out_memdep_1_matvec_avm_burstcount(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_burstcount),
        .out_memdep_1_matvec_avm_byteenable(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_byteenable),
        .out_memdep_1_matvec_avm_enable(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_enable),
        .out_memdep_1_matvec_avm_read(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_read),
        .out_memdep_1_matvec_avm_write(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_write),
        .out_memdep_1_matvec_avm_writedata(i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_matvec4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_matvec4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_stall_entry_o5_34_fifo(STALLFIFO,91)
    assign redist2_stall_entry_o5_34_fifo_valid_in = SE_stall_entry_V3;
    assign redist2_stall_entry_o5_34_fifo_stall_in = SE_out_redist2_stall_entry_o5_34_fifo_backStall;
    assign redist2_stall_entry_o5_34_fifo_data_in = bubble_select_stall_entry_c;
    assign redist2_stall_entry_o5_34_fifo_valid_in_bitsignaltemp = redist2_stall_entry_o5_34_fifo_valid_in[0];
    assign redist2_stall_entry_o5_34_fifo_stall_in_bitsignaltemp = redist2_stall_entry_o5_34_fifo_stall_in[0];
    assign redist2_stall_entry_o5_34_fifo_valid_out[0] = redist2_stall_entry_o5_34_fifo_valid_out_bitsignaltemp;
    assign redist2_stall_entry_o5_34_fifo_stall_out[0] = redist2_stall_entry_o5_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_stall_entry_o5_34_fifo (
        .valid_in(redist2_stall_entry_o5_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_stall_entry_o5_34_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_c),
        .valid_out(redist2_stall_entry_o5_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_stall_entry_o5_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_stall_entry_o5_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_stall_entry_o5_34_fifo(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_redist2_stall_entry_o5_34_fifo_V0 = SE_out_redist2_stall_entry_o5_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_stall_entry_o5_34_fifo_backStall = in_stall_in | ~ (SE_out_redist2_stall_entry_o5_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_stall_entry_o5_34_fifo_and0 = redist2_stall_entry_o5_34_fifo_valid_out;
    assign SE_out_redist2_stall_entry_o5_34_fifo_and1 = i_llvm_fpga_mem_memdep_2_matvec9_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and0;
    assign SE_out_redist2_stall_entry_o5_34_fifo_wireValid = i_llvm_fpga_mem_memdep_1_matvec4_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and1;

    // c_matvec_Out_local_pmem(CONSTANT,3)
    assign c_matvec_Out_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx203_matvec0_upper_bits_x_merged_bit_select(BITSELECT,84)@33
    assign i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_Out_local_pmem_q[63:7];
    assign i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_Out_local_pmem_q[6:0];

    // i_arrayidx203_matvec0_add_x(ADD,72)@33
    assign i_arrayidx203_matvec0_add_x_a = {1'b0, i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx203_matvec0_add_x_b = {1'b0, i_arrayidx162_matvec0_shift_join_x_q};
    assign i_arrayidx203_matvec0_add_x_o = $unsigned(i_arrayidx203_matvec0_add_x_a) + $unsigned(i_arrayidx203_matvec0_add_x_b);
    assign i_arrayidx203_matvec0_add_x_q = i_arrayidx203_matvec0_add_x_o[7:0];

    // i_arrayidx203_matvec0_dupName_2_trunc_sel_x(BITSELECT,83)@33
    assign i_arrayidx203_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx203_matvec0_add_x_q[6:0];

    // i_arrayidx203_matvec0_append_upper_bits_x(BITJOIN,73)@33
    assign i_arrayidx203_matvec0_append_upper_bits_x_q = {i_arrayidx203_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx203_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx203_matvec8_vt_select_63(BITSELECT,14)@33
    assign i_arrayidx203_matvec8_vt_select_63_b = i_arrayidx203_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx203_matvec8_vt_join(BITJOIN,13)@33
    assign i_arrayidx203_matvec8_vt_join_q = {i_arrayidx203_matvec8_vt_select_63_b, i_arrayidx162_matvec3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_2_matvec9(BLACKBOX,18)@33
    // in in_i_stall@20000000
    // out out_memdep_2_matvec_avm_address@20000000
    // out out_memdep_2_matvec_avm_burstcount@20000000
    // out out_memdep_2_matvec_avm_byteenable@20000000
    // out out_memdep_2_matvec_avm_enable@20000000
    // out out_memdep_2_matvec_avm_read@20000000
    // out out_memdep_2_matvec_avm_write@20000000
    // out out_memdep_2_matvec_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    matvec_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_matvec9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx203_matvec8_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_matvec8_matvec7_b),
        .in_memdep_2_matvec_avm_readdata(in_memdep_2_matvec_avm_readdata),
        .in_memdep_2_matvec_avm_readdatavalid(in_memdep_2_matvec_avm_readdatavalid),
        .in_memdep_2_matvec_avm_waitrequest(in_memdep_2_matvec_avm_waitrequest),
        .in_memdep_2_matvec_avm_writeack(in_memdep_2_matvec_avm_writeack),
        .out_memdep_2_matvec_avm_address(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_address),
        .out_memdep_2_matvec_avm_burstcount(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_burstcount),
        .out_memdep_2_matvec_avm_byteenable(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_byteenable),
        .out_memdep_2_matvec_avm_enable(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_enable),
        .out_memdep_2_matvec_avm_read(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_read),
        .out_memdep_2_matvec_avm_write(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_write),
        .out_memdep_2_matvec_avm_writedata(i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_2_matvec9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_2_matvec9_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx14_matvec0_narrow_x(BITSELECT,50)@1
    assign i_arrayidx14_matvec0_narrow_x_b = redist1_stall_entry_o4_1_0_q[61:0];

    // i_arrayidx14_matvec0_shift_join_x(BITJOIN,51)@1
    assign i_arrayidx14_matvec0_shift_join_x_q = {i_arrayidx14_matvec0_narrow_x_b, i_arrayidx162_matvec3_vt_const_1_q};

    // i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    matvec_i_llvm_fpga_ffwd_dest_p1024i32_out03620_0 thei_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5(BITJOIN,93)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_q = i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5(BITSELECT,94)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_q[63:0]);

    // i_arrayidx18_matvec0_add_x(ADD,66)@1
    assign i_arrayidx18_matvec0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_b};
    assign i_arrayidx18_matvec0_add_x_b = {1'b0, i_arrayidx14_matvec0_shift_join_x_q};
    assign i_arrayidx18_matvec0_add_x_o = $unsigned(i_arrayidx18_matvec0_add_x_a) + $unsigned(i_arrayidx18_matvec0_add_x_b);
    assign i_arrayidx18_matvec0_add_x_q = i_arrayidx18_matvec0_add_x_o[64:0];

    // i_arrayidx18_matvec0_dupName_0_trunc_sel_x(BITSELECT,71)@1
    assign i_arrayidx18_matvec0_dupName_0_trunc_sel_x_b = i_arrayidx18_matvec0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_matvec8_matvec7(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_matvec8_matvec_avm_address@20000000
    // out out_unnamed_matvec8_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec8_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec8_matvec_avm_enable@20000000
    // out out_unnamed_matvec8_matvec_avm_read@20000000
    // out out_unnamed_matvec8_matvec_avm_write@20000000
    // out out_unnamed_matvec8_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_8_matvec0 thei_llvm_fpga_mem_unnamed_matvec8_matvec7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx18_matvec0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_V0),
        .in_unnamed_matvec8_matvec_avm_readdata(in_unnamed_matvec8_matvec_avm_readdata),
        .in_unnamed_matvec8_matvec_avm_readdatavalid(in_unnamed_matvec8_matvec_avm_readdatavalid),
        .in_unnamed_matvec8_matvec_avm_waitrequest(in_unnamed_matvec8_matvec_avm_waitrequest),
        .in_unnamed_matvec8_matvec_avm_writeack(in_unnamed_matvec8_matvec_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_valid),
        .out_unnamed_matvec8_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_address),
        .out_unnamed_matvec8_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_burstcount),
        .out_unnamed_matvec8_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_byteenable),
        .out_unnamed_matvec8_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_enable),
        .out_unnamed_matvec8_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_read),
        .out_unnamed_matvec8_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_write),
        .out_unnamed_matvec8_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7(STALLENABLE,132)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_V0 = SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_backStall = i_llvm_fpga_mem_memdep_2_matvec9_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_and0 = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_wireValid = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_and0;

    // SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo(STALLENABLE,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg0 <= SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg1 <= SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_matvec8_matvec7_backStall) & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg0;
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_backStall) & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_StallValid = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_backStall & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid;
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg0 = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_toReg1 = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_or0 = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireStall = ~ (SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_consumed1 & SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_or0);
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_backStall = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V0 = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg0);
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V1 = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_wireValid = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out;

    // redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo(STALLFIFO,89)
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in = SE_redist1_stall_entry_o4_1_0_V2;
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_backStall;
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_data_in = i_arrayidx162_matvec0_narrow_x_b;
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in[0];
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in[0];
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out[0] = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out[0] = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(5),
        .IMPL("ram")
    ) theredist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo (
        .valid_in(redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx162_matvec0_narrow_x_b),
        .valid_out(redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5(STALLENABLE,122)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_backStall = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_and0 = i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_wireValid = SE_redist1_stall_entry_o4_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_and0;

    // SE_stall_entry(STALLENABLE,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_redist1_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (redist2_stall_entry_o5_34_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist1_stall_entry_o4_1_0(STALLENABLE,154)
    // Valid signal propagation
    assign SE_redist1_stall_entry_o4_1_0_V0 = SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_V1 = SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_V2 = SE_redist1_stall_entry_o4_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_backStall & SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_out03620_matvec5_backStall & SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_2 = redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_stall_out & SE_redist1_stall_entry_o4_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_stall_entry_o4_1_0_or0 = SE_redist1_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist1_stall_entry_o4_1_0_or1 = SE_redist1_stall_entry_o4_1_0_s_tv_1 | SE_redist1_stall_entry_o4_1_0_or0;
    assign SE_redist1_stall_entry_o4_1_0_backEN = ~ (SE_redist1_stall_entry_o4_1_0_s_tv_2 | SE_redist1_stall_entry_o4_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_stall_entry_o4_1_0_v_s_0 = SE_redist1_stall_entry_o4_1_0_backEN & SE_stall_entry_V2;
    // Backward Stall generation
    assign SE_redist1_stall_entry_o4_1_0_backStall = ~ (SE_redist1_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_1 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_R_v_0 & SE_redist1_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_R_v_1 & SE_redist1_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_2 <= SE_redist1_stall_entry_o4_1_0_R_v_2 & SE_redist1_stall_entry_o4_1_0_s_tv_2;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_2 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    matvec_i_llvm_fpga_ffwd_dest_p1024i32_v3518_0 thei_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0(STALLENABLE,124)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_backStall = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_and0 = i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_wireValid = SE_redist1_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2(STALLENABLE,130)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_V0 = SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_backStall = i_llvm_fpga_mem_memdep_1_matvec4_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_and0 = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_wireValid = SE_out_redist0_i_arrayidx162_matvec0_narrow_x_b_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0(BITJOIN,96)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_q = i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0(BITSELECT,97)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_q[63:0]);

    // i_arrayidx14_matvec0_add_x(ADD,48)@1
    assign i_arrayidx14_matvec0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_b};
    assign i_arrayidx14_matvec0_add_x_b = {1'b0, i_arrayidx14_matvec0_shift_join_x_q};
    assign i_arrayidx14_matvec0_add_x_o = $unsigned(i_arrayidx14_matvec0_add_x_a) + $unsigned(i_arrayidx14_matvec0_add_x_b);
    assign i_arrayidx14_matvec0_add_x_q = i_arrayidx14_matvec0_add_x_o[64:0];

    // i_arrayidx14_matvec0_dupName_0_trunc_sel_x(BITSELECT,53)@1
    assign i_arrayidx14_matvec0_dupName_0_trunc_sel_x_b = i_arrayidx14_matvec0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_matvec7_matvec2(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_matvec7_matvec_avm_address@20000000
    // out out_unnamed_matvec7_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec7_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec7_matvec_avm_enable@20000000
    // out out_unnamed_matvec7_matvec_avm_read@20000000
    // out out_unnamed_matvec7_matvec_avm_write@20000000
    // out out_unnamed_matvec7_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_7_matvec0 thei_llvm_fpga_mem_unnamed_matvec7_matvec2 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx14_matvec0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_matvec7_matvec2_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v3518_matvec0_V0),
        .in_unnamed_matvec7_matvec_avm_readdata(in_unnamed_matvec7_matvec_avm_readdata),
        .in_unnamed_matvec7_matvec_avm_readdatavalid(in_unnamed_matvec7_matvec_avm_readdatavalid),
        .in_unnamed_matvec7_matvec_avm_waitrequest(in_unnamed_matvec7_matvec_avm_waitrequest),
        .in_unnamed_matvec7_matvec_avm_writeack(in_unnamed_matvec7_matvec_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_o_valid),
        .out_unnamed_matvec7_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_address),
        .out_unnamed_matvec7_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_burstcount),
        .out_unnamed_matvec7_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_byteenable),
        .out_unnamed_matvec7_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_enable),
        .out_unnamed_matvec7_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_read),
        .out_unnamed_matvec7_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_write),
        .out_unnamed_matvec7_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_unnamed_matvec7_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_address;
    assign out_unnamed_matvec7_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_enable;
    assign out_unnamed_matvec7_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_read;
    assign out_unnamed_matvec7_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_write;
    assign out_unnamed_matvec7_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_writedata;
    assign out_unnamed_matvec7_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_byteenable;
    assign out_unnamed_matvec7_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec7_matvec2_out_unnamed_matvec7_matvec_avm_burstcount;

    // sync_out(GPOUT,39)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,42)
    assign out_memdep_1_matvec_avm_address = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_address;
    assign out_memdep_1_matvec_avm_enable = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_enable;
    assign out_memdep_1_matvec_avm_read = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_read;
    assign out_memdep_1_matvec_avm_write = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_write;
    assign out_memdep_1_matvec_avm_writedata = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_writedata;
    assign out_memdep_1_matvec_avm_byteenable = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_byteenable;
    assign out_memdep_1_matvec_avm_burstcount = i_llvm_fpga_mem_memdep_1_matvec4_out_memdep_1_matvec_avm_burstcount;

    // bubble_join_redist2_stall_entry_o5_34_fifo(BITJOIN,115)
    assign bubble_join_redist2_stall_entry_o5_34_fifo_q = redist2_stall_entry_o5_34_fifo_data_out;

    // bubble_select_redist2_stall_entry_o5_34_fifo(BITSELECT,116)
    assign bubble_select_redist2_stall_entry_o5_34_fifo_b = $unsigned(bubble_join_redist2_stall_entry_o5_34_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,43)@34
    assign out_c0_exe72 = bubble_select_redist2_stall_entry_o5_34_fifo_b;
    assign out_valid_out = SE_out_redist2_stall_entry_o5_34_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,45)
    assign out_unnamed_matvec8_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_address;
    assign out_unnamed_matvec8_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_enable;
    assign out_unnamed_matvec8_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_read;
    assign out_unnamed_matvec8_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_write;
    assign out_unnamed_matvec8_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_writedata;
    assign out_unnamed_matvec8_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_byteenable;
    assign out_unnamed_matvec8_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec8_matvec7_out_unnamed_matvec8_matvec_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,47)
    assign out_memdep_2_matvec_avm_address = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_address;
    assign out_memdep_2_matvec_avm_enable = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_enable;
    assign out_memdep_2_matvec_avm_read = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_read;
    assign out_memdep_2_matvec_avm_write = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_write;
    assign out_memdep_2_matvec_avm_writedata = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_writedata;
    assign out_memdep_2_matvec_avm_byteenable = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_byteenable;
    assign out_memdep_2_matvec_avm_burstcount = i_llvm_fpga_mem_memdep_2_matvec9_out_memdep_2_matvec_avm_burstcount;

endmodule
