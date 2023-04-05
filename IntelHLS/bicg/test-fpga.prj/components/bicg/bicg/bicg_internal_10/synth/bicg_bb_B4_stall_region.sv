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

// SystemVerilog created from bb_bicg_B4_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B4_stall_region (
    input wire [63:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [7:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe31081,
    input wire [0:0] in_c0_exe72,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [0:0] out_c0_exe72,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_bicg9_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_readdatavalid,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_writedata,
    output wire [7:0] out_unnamed_bicg9_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_burstcount,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    input wire [63:0] in_unnamed_bicg10_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_readdatavalid,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_writedata,
    output wire [7:0] out_unnamed_bicg10_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_burstcount,
    input wire [31:0] in_memdep_2_bicg_avm_readdata,
    input wire [0:0] in_memdep_2_bicg_avm_writeack,
    input wire [0:0] in_memdep_2_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_2_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_2_bicg_avm_address,
    output wire [0:0] out_memdep_2_bicg_avm_enable,
    output wire [0:0] out_memdep_2_bicg_avm_read,
    output wire [0:0] out_memdep_2_bicg_avm_write,
    output wire [31:0] out_memdep_2_bicg_avm_writedata,
    output wire [3:0] out_memdep_2_bicg_avm_byteenable,
    output wire [0:0] out_memdep_2_bicg_avm_burstcount,
    input wire [63:0] in_unnamed_bicg11_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_readdatavalid,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_writedata,
    output wire [7:0] out_unnamed_bicg11_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_burstcount,
    input wire [31:0] in_memdep_3_bicg_avm_readdata,
    input wire [0:0] in_memdep_3_bicg_avm_writeack,
    input wire [0:0] in_memdep_3_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_3_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_3_bicg_avm_address,
    output wire [0:0] out_memdep_3_bicg_avm_enable,
    output wire [0:0] out_memdep_3_bicg_avm_read,
    output wire [0:0] out_memdep_3_bicg_avm_write,
    output wire [31:0] out_memdep_3_bicg_avm_writedata,
    output wire [3:0] out_memdep_3_bicg_avm_byteenable,
    output wire [0:0] out_memdep_3_bicg_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_bicg_p_local_pmem_q;
    wire [63:0] c_bicg_q_local_pmem_q;
    wire [63:0] c_bicg_r_local_pmem_q;
    wire [63:0] c_bicg_s_local_pmem_q;
    wire [1:0] i_arrayidx192_bicg3_vt_const_1_q;
    wire [63:0] i_arrayidx192_bicg3_vt_join_q;
    wire [61:0] i_arrayidx192_bicg3_vt_select_63_b;
    wire [63:0] i_arrayidx233_bicg8_vt_join_q;
    wire [61:0] i_arrayidx233_bicg8_vt_select_63_b;
    wire [63:0] i_arrayidx274_bicg13_vt_join_q;
    wire [61:0] i_arrayidx274_bicg13_vt_select_63_b;
    wire [63:0] i_arrayidx315_bicg18_vt_join_q;
    wire [61:0] i_arrayidx315_bicg18_vt_select_63_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_bicg9_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_2_bicg14_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_3_bicg19_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_writedata;
    wire [64:0] i_arrayidx17_bicg0_add_x_a;
    wire [64:0] i_arrayidx17_bicg0_add_x_b;
    logic [64:0] i_arrayidx17_bicg0_add_x_o;
    wire [64:0] i_arrayidx17_bicg0_add_x_q;
    wire [61:0] i_arrayidx17_bicg0_narrow_x_b;
    wire [63:0] i_arrayidx17_bicg0_shift_join_x_q;
    wire [63:0] i_arrayidx17_bicg0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx192_bicg0_add_x_a;
    wire [7:0] i_arrayidx192_bicg0_add_x_b;
    logic [7:0] i_arrayidx192_bicg0_add_x_o;
    wire [7:0] i_arrayidx192_bicg0_add_x_q;
    wire [63:0] i_arrayidx192_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx192_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx192_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx192_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx192_bicg0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx21_bicg0_add_x_a;
    wire [64:0] i_arrayidx21_bicg0_add_x_b;
    logic [64:0] i_arrayidx21_bicg0_add_x_o;
    wire [64:0] i_arrayidx21_bicg0_add_x_q;
    wire [63:0] i_arrayidx21_bicg0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx233_bicg0_add_x_a;
    wire [7:0] i_arrayidx233_bicg0_add_x_b;
    logic [7:0] i_arrayidx233_bicg0_add_x_o;
    wire [7:0] i_arrayidx233_bicg0_add_x_q;
    wire [63:0] i_arrayidx233_bicg0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx233_bicg0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx25_bicg0_add_x_a;
    wire [64:0] i_arrayidx25_bicg0_add_x_b;
    logic [64:0] i_arrayidx25_bicg0_add_x_o;
    wire [64:0] i_arrayidx25_bicg0_add_x_q;
    wire [63:0] i_arrayidx25_bicg0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx274_bicg0_add_x_a;
    wire [7:0] i_arrayidx274_bicg0_add_x_b;
    logic [7:0] i_arrayidx274_bicg0_add_x_o;
    wire [7:0] i_arrayidx274_bicg0_add_x_q;
    wire [63:0] i_arrayidx274_bicg0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx274_bicg0_dupName_2_trunc_sel_x_b;
    wire [64:0] i_arrayidx29_bicg0_add_x_a;
    wire [64:0] i_arrayidx29_bicg0_add_x_b;
    logic [64:0] i_arrayidx29_bicg0_add_x_o;
    wire [64:0] i_arrayidx29_bicg0_add_x_q;
    wire [63:0] i_arrayidx29_bicg0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx315_bicg0_add_x_a;
    wire [7:0] i_arrayidx315_bicg0_add_x_b;
    logic [7:0] i_arrayidx315_bicg0_add_x_o;
    wire [7:0] i_arrayidx315_bicg0_add_x_q;
    wire [63:0] i_arrayidx315_bicg0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx315_bicg0_dupName_2_trunc_sel_x_b;
    wire [56:0] i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_c;
    wire [0:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in;
    wire redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in;
    wire redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [4:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_data_in;
    wire [0:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out;
    wire redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out;
    wire redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [4:0] redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_data_out;
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
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg10_bicg12_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg10_bicg12_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg11_bicg17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg11_bicg17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg2_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg2_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg9_bicg7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg9_bicg7_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [4:0] bubble_join_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_q;
    wire [4:0] bubble_select_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_b;
    wire [0:0] bubble_join_redist2_stall_entry_o5_34_fifo_q;
    wire [0:0] bubble_select_redist2_stall_entry_o5_34_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_V0;
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
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg2;
    reg [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg2;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed2;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg3;
    reg [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg3;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed3;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or1;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or2;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V1;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V2;
    wire [0:0] SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V3;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_1;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_2;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_3;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_4;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_3;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_4;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or3;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V2;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V3;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V4;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_wireValid;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and0;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and1;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and2;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_and3;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_backStall;
    wire [0:0] SE_out_redist2_stall_entry_o5_34_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,195)
    assign bubble_join_stall_entry_q = {in_c0_exe72, in_c0_exe31081};

    // bubble_select_stall_entry(BITSELECT,196)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);

    // redist1_stall_entry_o4_1_0(REG,164)
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

    // i_arrayidx192_bicg0_dupName_0_trunc_sel_x(BITSELECT,100)@1
    assign i_arrayidx192_bicg0_dupName_0_trunc_sel_x_b = redist1_stall_entry_o4_1_0_q[6:0];

    // i_arrayidx192_bicg0_narrow_x(BITSELECT,93)@1
    assign i_arrayidx192_bicg0_narrow_x_b = i_arrayidx192_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg11_bicg17(BITJOIN,186)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg11_bicg17_q = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg11_bicg17(BITSELECT,187)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg11_bicg17_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg11_bicg17_q[31:0]);

    // i_arrayidx17_bicg0_narrow_x(BITSELECT,86)@1
    assign i_arrayidx17_bicg0_narrow_x_b = redist1_stall_entry_o4_1_0_q[61:0];

    // i_arrayidx192_bicg3_vt_const_1(CONSTANT,11)
    assign i_arrayidx192_bicg3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx17_bicg0_shift_join_x(BITJOIN,87)@1
    assign i_arrayidx17_bicg0_shift_join_x_q = {i_arrayidx17_bicg0_narrow_x_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5(BLACKBOX,24)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_i_llvm_fpga_ffwd_dest_p1024i32_q4623_0 thei_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5(BITJOIN,170)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_q = i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5(BITSELECT,171)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_q[63:0]);

    // i_arrayidx21_bicg0_add_x(ADD,102)@1
    assign i_arrayidx21_bicg0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_b};
    assign i_arrayidx21_bicg0_add_x_b = {1'b0, i_arrayidx17_bicg0_shift_join_x_q};
    assign i_arrayidx21_bicg0_add_x_o = $unsigned(i_arrayidx21_bicg0_add_x_a) + $unsigned(i_arrayidx21_bicg0_add_x_b);
    assign i_arrayidx21_bicg0_add_x_q = i_arrayidx21_bicg0_add_x_o[64:0];

    // i_arrayidx21_bicg0_dupName_0_trunc_sel_x(BITSELECT,107)@1
    assign i_arrayidx21_bicg0_dupName_0_trunc_sel_x_b = i_arrayidx21_bicg0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_bicg9_bicg7(BLACKBOX,34)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_bicg9_bicg_avm_address@20000000
    // out out_unnamed_bicg9_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg9_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg9_bicg_avm_enable@20000000
    // out out_unnamed_bicg9_bicg_avm_read@20000000
    // out out_unnamed_bicg9_bicg_avm_write@20000000
    // out out_unnamed_bicg9_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_9_bicg0 thei_llvm_fpga_mem_unnamed_bicg9_bicg7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx21_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_V0),
        .in_unnamed_bicg9_bicg_avm_readdata(in_unnamed_bicg9_bicg_avm_readdata),
        .in_unnamed_bicg9_bicg_avm_readdatavalid(in_unnamed_bicg9_bicg_avm_readdatavalid),
        .in_unnamed_bicg9_bicg_avm_waitrequest(in_unnamed_bicg9_bicg_avm_waitrequest),
        .in_unnamed_bicg9_bicg_avm_writeack(in_unnamed_bicg9_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_valid),
        .out_unnamed_bicg9_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_address),
        .out_unnamed_bicg9_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_burstcount),
        .out_unnamed_bicg9_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_byteenable),
        .out_unnamed_bicg9_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_enable),
        .out_unnamed_bicg9_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_read),
        .out_unnamed_bicg9_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_write),
        .out_unnamed_bicg9_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg9_bicg7(BITJOIN,192)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg9_bicg7_q = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg9_bicg7(BITSELECT,193)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg9_bicg7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg9_bicg7_q[31:0]);

    // c_bicg_q_local_pmem(CONSTANT,3)
    assign c_bicg_q_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx233_bicg0_upper_bits_x_merged_bit_select(BITSELECT,157)@33
    assign i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_q_local_pmem_q[63:7];
    assign i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_q_local_pmem_q[6:0];

    // bubble_join_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo(BITJOIN,202)
    assign bubble_join_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_q = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_data_out;

    // bubble_select_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo(BITSELECT,203)
    assign bubble_select_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_q[4:0]);

    // i_arrayidx192_bicg0_shift_join_x(BITJOIN,94)@33
    assign i_arrayidx192_bicg0_shift_join_x_q = {bubble_select_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_arrayidx233_bicg0_add_x(ADD,108)@33
    assign i_arrayidx233_bicg0_add_x_a = {1'b0, i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx233_bicg0_add_x_b = {1'b0, i_arrayidx192_bicg0_shift_join_x_q};
    assign i_arrayidx233_bicg0_add_x_o = $unsigned(i_arrayidx233_bicg0_add_x_a) + $unsigned(i_arrayidx233_bicg0_add_x_b);
    assign i_arrayidx233_bicg0_add_x_q = i_arrayidx233_bicg0_add_x_o[7:0];

    // i_arrayidx233_bicg0_dupName_2_trunc_sel_x(BITSELECT,119)@33
    assign i_arrayidx233_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx233_bicg0_add_x_q[6:0];

    // i_arrayidx233_bicg0_append_upper_bits_x(BITJOIN,109)@33
    assign i_arrayidx233_bicg0_append_upper_bits_x_q = {i_arrayidx233_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx233_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx233_bicg8_vt_select_63(BITSELECT,16)@33
    assign i_arrayidx233_bicg8_vt_select_63_b = i_arrayidx233_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx233_bicg8_vt_join(BITJOIN,15)@33
    assign i_arrayidx233_bicg8_vt_join_q = {i_arrayidx233_bicg8_vt_select_63_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_1_bicg9(BLACKBOX,27)@33
    // in in_i_stall@20000000
    // out out_memdep_1_bicg_avm_address@20000000
    // out out_memdep_1_bicg_avm_burstcount@20000000
    // out out_memdep_1_bicg_avm_byteenable@20000000
    // out out_memdep_1_bicg_avm_enable@20000000
    // out out_memdep_1_bicg_avm_read@20000000
    // out out_memdep_1_bicg_avm_write@20000000
    // out out_memdep_1_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    bicg_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_bicg9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx233_bicg8_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_bicg9_bicg7_b),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .out_memdep_1_bicg_avm_address(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_bicg9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_bicg9_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_i_llvm_fpga_ffwd_dest_p1024i32_p4724_0 thei_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10(BITJOIN,167)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_q = i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10(BITSELECT,168)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_q[63:0]);

    // i_arrayidx25_bicg0_add_x(ADD,120)@1
    assign i_arrayidx25_bicg0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_b};
    assign i_arrayidx25_bicg0_add_x_b = {1'b0, i_arrayidx17_bicg0_shift_join_x_q};
    assign i_arrayidx25_bicg0_add_x_o = $unsigned(i_arrayidx25_bicg0_add_x_a) + $unsigned(i_arrayidx25_bicg0_add_x_b);
    assign i_arrayidx25_bicg0_add_x_q = i_arrayidx25_bicg0_add_x_o[64:0];

    // i_arrayidx25_bicg0_dupName_0_trunc_sel_x(BITSELECT,125)@1
    assign i_arrayidx25_bicg0_dupName_0_trunc_sel_x_b = i_arrayidx25_bicg0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_bicg10_bicg12(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_bicg10_bicg_avm_address@20000000
    // out out_unnamed_bicg10_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg10_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg10_bicg_avm_enable@20000000
    // out out_unnamed_bicg10_bicg_avm_read@20000000
    // out out_unnamed_bicg10_bicg_avm_write@20000000
    // out out_unnamed_bicg10_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_10_bicg0 thei_llvm_fpga_mem_unnamed_bicg10_bicg12 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx25_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_V0),
        .in_unnamed_bicg10_bicg_avm_readdata(in_unnamed_bicg10_bicg_avm_readdata),
        .in_unnamed_bicg10_bicg_avm_readdatavalid(in_unnamed_bicg10_bicg_avm_readdatavalid),
        .in_unnamed_bicg10_bicg_avm_waitrequest(in_unnamed_bicg10_bicg_avm_waitrequest),
        .in_unnamed_bicg10_bicg_avm_writeack(in_unnamed_bicg10_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_valid),
        .out_unnamed_bicg10_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_address),
        .out_unnamed_bicg10_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_burstcount),
        .out_unnamed_bicg10_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_byteenable),
        .out_unnamed_bicg10_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_enable),
        .out_unnamed_bicg10_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_read),
        .out_unnamed_bicg10_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_write),
        .out_unnamed_bicg10_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg10_bicg12(BITJOIN,183)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg10_bicg12_q = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg10_bicg12(BITSELECT,184)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg10_bicg12_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg10_bicg12_q[31:0]);

    // c_bicg_p_local_pmem(CONSTANT,2)
    assign c_bicg_p_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx274_bicg0_upper_bits_x_merged_bit_select(BITSELECT,156)@33
    assign i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_p_local_pmem_q[63:7];
    assign i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_p_local_pmem_q[6:0];

    // i_arrayidx274_bicg0_add_x(ADD,126)@33
    assign i_arrayidx274_bicg0_add_x_a = {1'b0, i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx274_bicg0_add_x_b = {1'b0, i_arrayidx192_bicg0_shift_join_x_q};
    assign i_arrayidx274_bicg0_add_x_o = $unsigned(i_arrayidx274_bicg0_add_x_a) + $unsigned(i_arrayidx274_bicg0_add_x_b);
    assign i_arrayidx274_bicg0_add_x_q = i_arrayidx274_bicg0_add_x_o[7:0];

    // i_arrayidx274_bicg0_dupName_2_trunc_sel_x(BITSELECT,137)@33
    assign i_arrayidx274_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx274_bicg0_add_x_q[6:0];

    // i_arrayidx274_bicg0_append_upper_bits_x(BITJOIN,127)@33
    assign i_arrayidx274_bicg0_append_upper_bits_x_q = {i_arrayidx274_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx274_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx274_bicg13_vt_select_63(BITSELECT,19)@33
    assign i_arrayidx274_bicg13_vt_select_63_b = i_arrayidx274_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx274_bicg13_vt_join(BITJOIN,18)@33
    assign i_arrayidx274_bicg13_vt_join_q = {i_arrayidx274_bicg13_vt_select_63_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_2_bicg14(BLACKBOX,28)@33
    // in in_i_stall@20000000
    // out out_memdep_2_bicg_avm_address@20000000
    // out out_memdep_2_bicg_avm_burstcount@20000000
    // out out_memdep_2_bicg_avm_byteenable@20000000
    // out out_memdep_2_bicg_avm_enable@20000000
    // out out_memdep_2_bicg_avm_read@20000000
    // out out_memdep_2_bicg_avm_write@20000000
    // out out_memdep_2_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    bicg_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_bicg14 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx274_bicg13_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_bicg10_bicg12_b),
        .in_memdep_2_bicg_avm_readdata(in_memdep_2_bicg_avm_readdata),
        .in_memdep_2_bicg_avm_readdatavalid(in_memdep_2_bicg_avm_readdatavalid),
        .in_memdep_2_bicg_avm_waitrequest(in_memdep_2_bicg_avm_waitrequest),
        .in_memdep_2_bicg_avm_writeack(in_memdep_2_bicg_avm_writeack),
        .out_memdep_2_bicg_avm_address(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_address),
        .out_memdep_2_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_burstcount),
        .out_memdep_2_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_byteenable),
        .out_memdep_2_bicg_avm_enable(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_enable),
        .out_memdep_2_bicg_avm_read(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_read),
        .out_memdep_2_bicg_avm_write(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_write),
        .out_memdep_2_bicg_avm_writedata(i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_2_bicg14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_2_bicg14_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg2(BITJOIN,189)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg2_q = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg2(BITSELECT,190)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg2_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg2_q[31:0]);

    // c_bicg_s_local_pmem(CONSTANT,5)
    assign c_bicg_s_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx192_bicg0_upper_bits_x_merged_bit_select(BITSELECT,159)@33
    assign i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_s_local_pmem_q[63:7];
    assign i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_s_local_pmem_q[6:0];

    // i_arrayidx192_bicg0_add_x(ADD,90)@33
    assign i_arrayidx192_bicg0_add_x_a = {1'b0, i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx192_bicg0_add_x_b = {1'b0, i_arrayidx192_bicg0_shift_join_x_q};
    assign i_arrayidx192_bicg0_add_x_o = $unsigned(i_arrayidx192_bicg0_add_x_a) + $unsigned(i_arrayidx192_bicg0_add_x_b);
    assign i_arrayidx192_bicg0_add_x_q = i_arrayidx192_bicg0_add_x_o[7:0];

    // i_arrayidx192_bicg0_dupName_2_trunc_sel_x(BITSELECT,101)@33
    assign i_arrayidx192_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx192_bicg0_add_x_q[6:0];

    // i_arrayidx192_bicg0_append_upper_bits_x(BITJOIN,91)@33
    assign i_arrayidx192_bicg0_append_upper_bits_x_q = {i_arrayidx192_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx192_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx192_bicg3_vt_select_63(BITSELECT,13)@33
    assign i_arrayidx192_bicg3_vt_select_63_b = i_arrayidx192_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx192_bicg3_vt_join(BITJOIN,12)@33
    assign i_arrayidx192_bicg3_vt_join_q = {i_arrayidx192_bicg3_vt_select_63_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_bicg4(BLACKBOX,30)@33
    // in in_i_stall@20000000
    // out out_memdep_bicg_avm_address@20000000
    // out out_memdep_bicg_avm_burstcount@20000000
    // out out_memdep_bicg_avm_byteenable@20000000
    // out out_memdep_bicg_avm_enable@20000000
    // out out_memdep_bicg_avm_read@20000000
    // out out_memdep_bicg_avm_write@20000000
    // out out_memdep_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    bicg_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_bicg4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx192_bicg3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg2_b),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .out_memdep_bicg_avm_address(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_bicg4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_bicg4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_stall_entry_o5_34_fifo(STALLFIFO,165)
    assign redist2_stall_entry_o5_34_fifo_valid_in = SE_stall_entry_V5;
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

    // SE_out_redist2_stall_entry_o5_34_fifo(STALLENABLE,274)
    // Valid signal propagation
    assign SE_out_redist2_stall_entry_o5_34_fifo_V0 = SE_out_redist2_stall_entry_o5_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_stall_entry_o5_34_fifo_backStall = in_stall_in | ~ (SE_out_redist2_stall_entry_o5_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_stall_entry_o5_34_fifo_and0 = redist2_stall_entry_o5_34_fifo_valid_out;
    assign SE_out_redist2_stall_entry_o5_34_fifo_and1 = i_llvm_fpga_mem_memdep_bicg4_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and0;
    assign SE_out_redist2_stall_entry_o5_34_fifo_and2 = i_llvm_fpga_mem_memdep_3_bicg19_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and1;
    assign SE_out_redist2_stall_entry_o5_34_fifo_and3 = i_llvm_fpga_mem_memdep_2_bicg14_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and2;
    assign SE_out_redist2_stall_entry_o5_34_fifo_wireValid = i_llvm_fpga_mem_memdep_1_bicg9_out_o_valid & SE_out_redist2_stall_entry_o5_34_fifo_and3;

    // c_bicg_r_local_pmem(CONSTANT,4)
    assign c_bicg_r_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx315_bicg0_upper_bits_x_merged_bit_select(BITSELECT,158)@33
    assign i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_r_local_pmem_q[63:7];
    assign i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_r_local_pmem_q[6:0];

    // i_arrayidx315_bicg0_add_x(ADD,144)@33
    assign i_arrayidx315_bicg0_add_x_a = {1'b0, i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx315_bicg0_add_x_b = {1'b0, i_arrayidx192_bicg0_shift_join_x_q};
    assign i_arrayidx315_bicg0_add_x_o = $unsigned(i_arrayidx315_bicg0_add_x_a) + $unsigned(i_arrayidx315_bicg0_add_x_b);
    assign i_arrayidx315_bicg0_add_x_q = i_arrayidx315_bicg0_add_x_o[7:0];

    // i_arrayidx315_bicg0_dupName_2_trunc_sel_x(BITSELECT,155)@33
    assign i_arrayidx315_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx315_bicg0_add_x_q[6:0];

    // i_arrayidx315_bicg0_append_upper_bits_x(BITJOIN,145)@33
    assign i_arrayidx315_bicg0_append_upper_bits_x_q = {i_arrayidx315_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx315_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx315_bicg18_vt_select_63(BITSELECT,22)@33
    assign i_arrayidx315_bicg18_vt_select_63_b = i_arrayidx315_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx315_bicg18_vt_join(BITJOIN,21)@33
    assign i_arrayidx315_bicg18_vt_join_q = {i_arrayidx315_bicg18_vt_select_63_b, i_arrayidx192_bicg3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_bicg19(BLACKBOX,29)@33
    // in in_i_stall@20000000
    // out out_memdep_3_bicg_avm_address@20000000
    // out out_memdep_3_bicg_avm_burstcount@20000000
    // out out_memdep_3_bicg_avm_byteenable@20000000
    // out out_memdep_3_bicg_avm_enable@20000000
    // out out_memdep_3_bicg_avm_read@20000000
    // out out_memdep_3_bicg_avm_write@20000000
    // out out_memdep_3_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    bicg_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_bicg19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx315_bicg18_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist2_stall_entry_o5_34_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_bicg11_bicg17_b),
        .in_memdep_3_bicg_avm_readdata(in_memdep_3_bicg_avm_readdata),
        .in_memdep_3_bicg_avm_readdatavalid(in_memdep_3_bicg_avm_readdatavalid),
        .in_memdep_3_bicg_avm_waitrequest(in_memdep_3_bicg_avm_waitrequest),
        .in_memdep_3_bicg_avm_writeack(in_memdep_3_bicg_avm_writeack),
        .out_memdep_3_bicg_avm_address(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_address),
        .out_memdep_3_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_burstcount),
        .out_memdep_3_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_byteenable),
        .out_memdep_3_bicg_avm_enable(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_enable),
        .out_memdep_3_bicg_avm_read(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_read),
        .out_memdep_3_bicg_avm_write(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_write),
        .out_memdep_3_bicg_avm_writedata(i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_3_bicg19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_3_bicg19_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_i_llvm_fpga_ffwd_dest_p1024i32_r4825_0 thei_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15(BITJOIN,173)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_q = i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15(BITSELECT,174)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_q[63:0]);

    // i_arrayidx29_bicg0_add_x(ADD,138)@1
    assign i_arrayidx29_bicg0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_b};
    assign i_arrayidx29_bicg0_add_x_b = {1'b0, i_arrayidx17_bicg0_shift_join_x_q};
    assign i_arrayidx29_bicg0_add_x_o = $unsigned(i_arrayidx29_bicg0_add_x_a) + $unsigned(i_arrayidx29_bicg0_add_x_b);
    assign i_arrayidx29_bicg0_add_x_q = i_arrayidx29_bicg0_add_x_o[64:0];

    // i_arrayidx29_bicg0_dupName_0_trunc_sel_x(BITSELECT,143)@1
    assign i_arrayidx29_bicg0_dupName_0_trunc_sel_x_b = i_arrayidx29_bicg0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_bicg11_bicg17(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_bicg11_bicg_avm_address@20000000
    // out out_unnamed_bicg11_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg11_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg11_bicg_avm_enable@20000000
    // out out_unnamed_bicg11_bicg_avm_read@20000000
    // out out_unnamed_bicg11_bicg_avm_write@20000000
    // out out_unnamed_bicg11_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_11_bicg0 thei_llvm_fpga_mem_unnamed_bicg11_bicg17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx29_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_V0),
        .in_unnamed_bicg11_bicg_avm_readdata(in_unnamed_bicg11_bicg_avm_readdata),
        .in_unnamed_bicg11_bicg_avm_readdatavalid(in_unnamed_bicg11_bicg_avm_readdatavalid),
        .in_unnamed_bicg11_bicg_avm_waitrequest(in_unnamed_bicg11_bicg_avm_waitrequest),
        .in_unnamed_bicg11_bicg_avm_writeack(in_unnamed_bicg11_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_valid),
        .out_unnamed_bicg11_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_address),
        .out_unnamed_bicg11_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_burstcount),
        .out_unnamed_bicg11_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_byteenable),
        .out_unnamed_bicg11_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_enable),
        .out_unnamed_bicg11_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_read),
        .out_unnamed_bicg11_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_write),
        .out_unnamed_bicg11_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17(STALLENABLE,234)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_backStall = i_llvm_fpga_mem_memdep_3_bicg19_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_and0 = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_wireValid = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V2 & SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7(STALLENABLE,238)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_backStall = i_llvm_fpga_mem_memdep_1_bicg9_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_and0 = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_wireValid = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12(STALLENABLE,232)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_backStall = i_llvm_fpga_mem_memdep_2_bicg14_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_and0 = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_wireValid = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_and0;

    // SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo(STALLENABLE,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg1 <= '0;
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg2 <= '0;
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg0 <= SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg1 <= SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg1;
            // Successor 2
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg2 <= SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg2;
            // Successor 3
            SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg3 <= SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_bicg10_bicg12_backStall) & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg0;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_bicg9_bicg7_backStall) & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg1;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_mem_unnamed_bicg11_bicg17_backStall) & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg2;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed3 = (~ (SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_backStall) & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid) | SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg3;
    // Consuming
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_backStall & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg0 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg1 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed1;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg2 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed2;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_toReg3 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_StallValid & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or0 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or1 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed1 & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or0;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or2 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed2 & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or1;
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireStall = ~ (SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_consumed3 & SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_or2);
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_backStall = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V0 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg0);
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V1 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg1);
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V2 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg2);
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V3 = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_wireValid = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out;

    // redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo(STALLFIFO,163)
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in = SE_redist1_stall_entry_o4_1_0_V4;
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_backStall;
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_data_in = i_arrayidx192_bicg0_narrow_x_b;
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in[0];
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in[0];
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out[0] = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out[0] = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(5),
        .IMPL("ram")
    ) theredist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo (
        .valid_in(redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx192_bicg0_narrow_x_b),
        .valid_out(redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15(STALLENABLE,220)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_backStall = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_and0 = i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_wireValid = SE_redist1_stall_entry_o4_1_0_V3 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10(STALLENABLE,216)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_backStall = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_and0 = i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_wireValid = SE_redist1_stall_entry_o4_1_0_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5(STALLENABLE,218)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_backStall = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_and0 = i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_wireValid = SE_redist1_stall_entry_o4_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_and0;

    // SE_stall_entry(STALLENABLE,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
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
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (SE_redist1_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (redist2_stall_entry_o5_34_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed5 & SE_stall_entry_or4);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist1_stall_entry_o4_1_0(STALLENABLE,272)
    // Valid signal propagation
    assign SE_redist1_stall_entry_o4_1_0_V0 = SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_V1 = SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_V2 = SE_redist1_stall_entry_o4_1_0_R_v_2;
    assign SE_redist1_stall_entry_o4_1_0_V3 = SE_redist1_stall_entry_o4_1_0_R_v_3;
    assign SE_redist1_stall_entry_o4_1_0_V4 = SE_redist1_stall_entry_o4_1_0_R_v_4;
    // Stall signal propagation
    assign SE_redist1_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_backStall & SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_q4623_bicg5_backStall & SE_redist1_stall_entry_o4_1_0_R_v_1;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_p4724_bicg10_backStall & SE_redist1_stall_entry_o4_1_0_R_v_2;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_3 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_r4825_bicg15_backStall & SE_redist1_stall_entry_o4_1_0_R_v_3;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_4 = redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_stall_out & SE_redist1_stall_entry_o4_1_0_R_v_4;
    // Backward Enable generation
    assign SE_redist1_stall_entry_o4_1_0_or0 = SE_redist1_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist1_stall_entry_o4_1_0_or1 = SE_redist1_stall_entry_o4_1_0_s_tv_1 | SE_redist1_stall_entry_o4_1_0_or0;
    assign SE_redist1_stall_entry_o4_1_0_or2 = SE_redist1_stall_entry_o4_1_0_s_tv_2 | SE_redist1_stall_entry_o4_1_0_or1;
    assign SE_redist1_stall_entry_o4_1_0_or3 = SE_redist1_stall_entry_o4_1_0_s_tv_3 | SE_redist1_stall_entry_o4_1_0_or2;
    assign SE_redist1_stall_entry_o4_1_0_backEN = ~ (SE_redist1_stall_entry_o4_1_0_s_tv_4 | SE_redist1_stall_entry_o4_1_0_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_stall_entry_o4_1_0_v_s_0 = SE_redist1_stall_entry_o4_1_0_backEN & SE_stall_entry_V4;
    // Backward Stall generation
    assign SE_redist1_stall_entry_o4_1_0_backStall = ~ (SE_redist1_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_1 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_2 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_3 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_4 <= 1'b0;
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

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_3 <= SE_redist1_stall_entry_o4_1_0_R_v_3 & SE_redist1_stall_entry_o4_1_0_s_tv_3;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_3 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_4 <= SE_redist1_stall_entry_o4_1_0_R_v_4 & SE_redist1_stall_entry_o4_1_0_s_tv_4;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_4 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_i_llvm_fpga_ffwd_dest_p1024i32_s4521_0 thei_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0(STALLENABLE,222)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_backStall = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_and0 = i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_wireValid = SE_redist1_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2(STALLENABLE,236)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_backStall = i_llvm_fpga_mem_memdep_bicg4_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_and0 = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_wireValid = SE_out_redist0_i_arrayidx192_bicg0_narrow_x_b_32_fifo_V3 & SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0(BITJOIN,176)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_q = i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0(BITSELECT,177)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_q[63:0]);

    // i_arrayidx17_bicg0_add_x(ADD,84)@1
    assign i_arrayidx17_bicg0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_b};
    assign i_arrayidx17_bicg0_add_x_b = {1'b0, i_arrayidx17_bicg0_shift_join_x_q};
    assign i_arrayidx17_bicg0_add_x_o = $unsigned(i_arrayidx17_bicg0_add_x_a) + $unsigned(i_arrayidx17_bicg0_add_x_b);
    assign i_arrayidx17_bicg0_add_x_q = i_arrayidx17_bicg0_add_x_o[64:0];

    // i_arrayidx17_bicg0_dupName_0_trunc_sel_x(BITSELECT,89)@1
    assign i_arrayidx17_bicg0_dupName_0_trunc_sel_x_b = i_arrayidx17_bicg0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_bicg8_bicg2(BLACKBOX,33)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_bicg8_bicg_avm_address@20000000
    // out out_unnamed_bicg8_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg8_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg8_bicg_avm_enable@20000000
    // out out_unnamed_bicg8_bicg_avm_read@20000000
    // out out_unnamed_bicg8_bicg_avm_write@20000000
    // out out_unnamed_bicg8_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_8_bicg0 thei_llvm_fpga_mem_unnamed_bicg8_bicg2 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx17_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg8_bicg2_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_s4521_bicg0_V0),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_o_valid),
        .out_unnamed_bicg8_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_unnamed_bicg8_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_address;
    assign out_unnamed_bicg8_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_enable;
    assign out_unnamed_bicg8_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_read;
    assign out_unnamed_bicg8_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_write;
    assign out_unnamed_bicg8_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_writedata;
    assign out_unnamed_bicg8_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_byteenable;
    assign out_unnamed_bicg8_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg8_bicg2_out_unnamed_bicg8_bicg_avm_burstcount;

    // sync_out(GPOUT,67)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,70)
    assign out_memdep_bicg_avm_address = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_address;
    assign out_memdep_bicg_avm_enable = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_enable;
    assign out_memdep_bicg_avm_read = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_read;
    assign out_memdep_bicg_avm_write = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_write;
    assign out_memdep_bicg_avm_writedata = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_writedata;
    assign out_memdep_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_byteenable;
    assign out_memdep_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_bicg4_out_memdep_bicg_avm_burstcount;

    // bubble_join_redist2_stall_entry_o5_34_fifo(BITJOIN,205)
    assign bubble_join_redist2_stall_entry_o5_34_fifo_q = redist2_stall_entry_o5_34_fifo_data_out;

    // bubble_select_redist2_stall_entry_o5_34_fifo(BITSELECT,206)
    assign bubble_select_redist2_stall_entry_o5_34_fifo_b = $unsigned(bubble_join_redist2_stall_entry_o5_34_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,71)@34
    assign out_c0_exe72 = bubble_select_redist2_stall_entry_o5_34_fifo_b;
    assign out_valid_out = SE_out_redist2_stall_entry_o5_34_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,73)
    assign out_unnamed_bicg9_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_address;
    assign out_unnamed_bicg9_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_enable;
    assign out_unnamed_bicg9_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_read;
    assign out_unnamed_bicg9_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_write;
    assign out_unnamed_bicg9_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_writedata;
    assign out_unnamed_bicg9_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_byteenable;
    assign out_unnamed_bicg9_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg9_bicg7_out_unnamed_bicg9_bicg_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,75)
    assign out_memdep_1_bicg_avm_address = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_address;
    assign out_memdep_1_bicg_avm_enable = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_enable;
    assign out_memdep_1_bicg_avm_read = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_read;
    assign out_memdep_1_bicg_avm_write = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_write;
    assign out_memdep_1_bicg_avm_writedata = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_writedata;
    assign out_memdep_1_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_byteenable;
    assign out_memdep_1_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_1_bicg9_out_memdep_1_bicg_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,77)
    assign out_unnamed_bicg10_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_address;
    assign out_unnamed_bicg10_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_enable;
    assign out_unnamed_bicg10_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_read;
    assign out_unnamed_bicg10_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_write;
    assign out_unnamed_bicg10_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_writedata;
    assign out_unnamed_bicg10_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_byteenable;
    assign out_unnamed_bicg10_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg10_bicg12_out_unnamed_bicg10_bicg_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,79)
    assign out_memdep_2_bicg_avm_address = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_address;
    assign out_memdep_2_bicg_avm_enable = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_enable;
    assign out_memdep_2_bicg_avm_read = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_read;
    assign out_memdep_2_bicg_avm_write = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_write;
    assign out_memdep_2_bicg_avm_writedata = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_writedata;
    assign out_memdep_2_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_byteenable;
    assign out_memdep_2_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_2_bicg14_out_memdep_2_bicg_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,81)
    assign out_unnamed_bicg11_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_address;
    assign out_unnamed_bicg11_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_enable;
    assign out_unnamed_bicg11_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_read;
    assign out_unnamed_bicg11_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_write;
    assign out_unnamed_bicg11_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_writedata;
    assign out_unnamed_bicg11_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_byteenable;
    assign out_unnamed_bicg11_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg11_bicg17_out_unnamed_bicg11_bicg_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,83)
    assign out_memdep_3_bicg_avm_address = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_address;
    assign out_memdep_3_bicg_avm_enable = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_enable;
    assign out_memdep_3_bicg_avm_read = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_read;
    assign out_memdep_3_bicg_avm_write = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_write;
    assign out_memdep_3_bicg_avm_writedata = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_writedata;
    assign out_memdep_3_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_byteenable;
    assign out_memdep_3_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_3_bicg19_out_memdep_3_bicg_avm_burstcount;

endmodule
