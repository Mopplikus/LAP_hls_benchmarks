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

// SystemVerilog created from bb_kernel_3mm_B3_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B3_stall_region (
    input wire [63:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked123,
    input wire [31:0] in_i_0104_pop27180,
    input wire [0:0] in_notcmp138179,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount,
    input wire [63:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    input wire [63:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    input wire [63:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount,
    input wire [63:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata,
    output wire [7:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_1_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_2_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_3_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_4_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_5_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_burstcount,
    input wire [31:0] in_memdep_6_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_burstcount,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_8_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_10_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_13_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_14_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_15_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_18_tpl;
    wire [0:0] kernel_3mm_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [448:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
    wire [63:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [448:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [448:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_b;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [898:0] bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_i;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_k;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_n;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_o;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_r;
    wire [33:0] bubble_join_kernel_3mm_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_d;
    wire [448:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [448:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg7;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg8;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V8;
    wire [0:0] SE_out_kernel_3mm_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg4;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg5;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg6;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V6;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and5;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and6;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,145)
    assign bubble_join_stall_entry_q = {in_notcmp138179, in_i_0104_pop27180, in_forked123};

    // bubble_select_stall_entry(BITSELECT,146)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // SE_stall_entry(STALLENABLE,189)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kernel_3mm_B3_merge_reg_aunroll_x(BLACKBOX,97)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    kernel_3mm_B3_merge_reg thekernel_3mm_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kernel_3mm_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .out_stall_out(kernel_3mm_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kernel_3mm_B3_merge_reg_aunroll_x(BITJOIN,152)
    assign bubble_join_kernel_3mm_B3_merge_reg_aunroll_x_q = {kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_3mm_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_3mm_B3_merge_reg_aunroll_x(BITSELECT,153)
    assign bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_3mm_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_3mm_B3_merge_reg_aunroll_x_q[33:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kernel_3mm_B3_merge_reg_aunroll_x(STALLENABLE,194)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B3_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B3_merge_reg_aunroll_x_wireValid = kernel_3mm_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x(BITJOIN,149)
    assign bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_18_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_17_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_16_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_15_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_14_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_13_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_12_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_11_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_10_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_9_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_8_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_7_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_6_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_5_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_4_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_3_tpl, i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x(BITSELECT,150)
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[320:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[384:321]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[448:385]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[512:449]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[576:513]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[640:577]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[704:641]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[768:705]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[832:769]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[896:833]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[897:897]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q[898:898]);

    // join_for_coalesced_delay_1(BITJOIN,112)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4(BITJOIN,127)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_q = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4(BITSELECT,128)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_q[31:0]);

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3(STALLENABLE,176)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_backStall = i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_wireValid = SE_out_coalesced_delay_0_fifo_V6 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9(STALLENABLE,188)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_backStall = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_wireValid = SE_out_coalesced_delay_0_fifo_V5 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8(STALLENABLE,186)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_backStall = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_wireValid = SE_out_coalesced_delay_0_fifo_V4 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7(STALLENABLE,184)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_backStall = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_wireValid = SE_out_coalesced_delay_0_fifo_V3 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6(STALLENABLE,182)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_backStall = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_wireValid = SE_out_coalesced_delay_0_fifo_V2 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_and0;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5(STALLENABLE,180)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_backStall = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_wireValid = SE_out_coalesced_delay_0_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg4 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg5 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_0_fifo_fromReg3 <= SE_out_coalesced_delay_0_fifo_toReg3;
            // Successor 4
            SE_out_coalesced_delay_0_fifo_fromReg4 <= SE_out_coalesced_delay_0_fifo_toReg4;
            // Successor 5
            SE_out_coalesced_delay_0_fifo_fromReg5 <= SE_out_coalesced_delay_0_fifo_toReg5;
            // Successor 6
            SE_out_coalesced_delay_0_fifo_fromReg6 <= SE_out_coalesced_delay_0_fifo_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    assign SE_out_coalesced_delay_0_fifo_consumed4 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg4;
    assign SE_out_coalesced_delay_0_fifo_consumed5 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg5;
    assign SE_out_coalesced_delay_0_fifo_consumed6 = (~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg6;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    assign SE_out_coalesced_delay_0_fifo_toReg4 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed4;
    assign SE_out_coalesced_delay_0_fifo_toReg5 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed5;
    assign SE_out_coalesced_delay_0_fifo_toReg6 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed6;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_or3 = SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2;
    assign SE_out_coalesced_delay_0_fifo_or4 = SE_out_coalesced_delay_0_fifo_consumed4 & SE_out_coalesced_delay_0_fifo_or3;
    assign SE_out_coalesced_delay_0_fifo_or5 = SE_out_coalesced_delay_0_fifo_consumed5 & SE_out_coalesced_delay_0_fifo_or4;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed6 & SE_out_coalesced_delay_0_fifo_or5);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    assign SE_out_coalesced_delay_0_fifo_V4 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg4);
    assign SE_out_coalesced_delay_0_fifo_V5 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg5);
    assign SE_out_coalesced_delay_0_fifo_V6 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4(STALLENABLE,178)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_V0 = SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_backStall = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_and0 = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,156)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,157)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[448:0]);

    // sel_for_coalesced_delay_0(BITSELECT,110)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[447:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[448:448]);

    // i_llvm_fpga_mem_memdep_1_kernel_3mm11(BLACKBOX,7)@36
    // in in_i_stall@20000000
    // out out_memdep_1_kernel_3mm_avm_address@20000000
    // out out_memdep_1_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_1_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_1_kernel_3mm_avm_enable@20000000
    // out out_memdep_1_kernel_3mm_avm_read@20000000
    // out out_memdep_1_kernel_3mm_avm_write@20000000
    // out out_memdep_1_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_kernel_3mm11 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_b),
        .in_memdep_1_kernel_3mm_avm_readdata(in_memdep_1_kernel_3mm_avm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(in_memdep_1_kernel_3mm_avm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(in_memdep_1_kernel_3mm_avm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(in_memdep_1_kernel_3mm_avm_writeack),
        .out_memdep_1_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5(BITJOIN,130)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_q = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5(BITSELECT,131)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_q[31:0]);

    // i_llvm_fpga_mem_memdep_2_kernel_3mm12(BLACKBOX,8)@36
    // in in_i_stall@20000000
    // out out_memdep_2_kernel_3mm_avm_address@20000000
    // out out_memdep_2_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_2_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_2_kernel_3mm_avm_enable@20000000
    // out out_memdep_2_kernel_3mm_avm_read@20000000
    // out out_memdep_2_kernel_3mm_avm_write@20000000
    // out out_memdep_2_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_kernel_3mm12 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_d),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_b),
        .in_memdep_2_kernel_3mm_avm_readdata(in_memdep_2_kernel_3mm_avm_readdata),
        .in_memdep_2_kernel_3mm_avm_readdatavalid(in_memdep_2_kernel_3mm_avm_readdatavalid),
        .in_memdep_2_kernel_3mm_avm_waitrequest(in_memdep_2_kernel_3mm_avm_waitrequest),
        .in_memdep_2_kernel_3mm_avm_writeack(in_memdep_2_kernel_3mm_avm_writeack),
        .out_memdep_2_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_address),
        .out_memdep_2_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_burstcount),
        .out_memdep_2_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_byteenable),
        .out_memdep_2_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_enable),
        .out_memdep_2_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_read),
        .out_memdep_2_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_write),
        .out_memdep_2_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6(BITJOIN,133)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_q = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6(BITSELECT,134)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_q[31:0]);

    // i_llvm_fpga_mem_memdep_3_kernel_3mm13(BLACKBOX,9)@36
    // in in_i_stall@20000000
    // out out_memdep_3_kernel_3mm_avm_address@20000000
    // out out_memdep_3_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_3_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_3_kernel_3mm_avm_enable@20000000
    // out out_memdep_3_kernel_3mm_avm_read@20000000
    // out out_memdep_3_kernel_3mm_avm_write@20000000
    // out out_memdep_3_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_kernel_3mm13 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_e),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_b),
        .in_memdep_3_kernel_3mm_avm_readdata(in_memdep_3_kernel_3mm_avm_readdata),
        .in_memdep_3_kernel_3mm_avm_readdatavalid(in_memdep_3_kernel_3mm_avm_readdatavalid),
        .in_memdep_3_kernel_3mm_avm_waitrequest(in_memdep_3_kernel_3mm_avm_waitrequest),
        .in_memdep_3_kernel_3mm_avm_writeack(in_memdep_3_kernel_3mm_avm_writeack),
        .out_memdep_3_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_address),
        .out_memdep_3_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_burstcount),
        .out_memdep_3_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_byteenable),
        .out_memdep_3_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_enable),
        .out_memdep_3_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_read),
        .out_memdep_3_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_write),
        .out_memdep_3_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7(BITJOIN,136)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_q = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7(BITSELECT,137)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_q[31:0]);

    // i_llvm_fpga_mem_memdep_4_kernel_3mm14(BLACKBOX,10)@36
    // in in_i_stall@20000000
    // out out_memdep_4_kernel_3mm_avm_address@20000000
    // out out_memdep_4_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_4_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_4_kernel_3mm_avm_enable@20000000
    // out out_memdep_4_kernel_3mm_avm_read@20000000
    // out out_memdep_4_kernel_3mm_avm_write@20000000
    // out out_memdep_4_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_kernel_3mm14 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_f),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_b),
        .in_memdep_4_kernel_3mm_avm_readdata(in_memdep_4_kernel_3mm_avm_readdata),
        .in_memdep_4_kernel_3mm_avm_readdatavalid(in_memdep_4_kernel_3mm_avm_readdatavalid),
        .in_memdep_4_kernel_3mm_avm_waitrequest(in_memdep_4_kernel_3mm_avm_waitrequest),
        .in_memdep_4_kernel_3mm_avm_writeack(in_memdep_4_kernel_3mm_avm_writeack),
        .out_memdep_4_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_address),
        .out_memdep_4_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_burstcount),
        .out_memdep_4_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_byteenable),
        .out_memdep_4_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_enable),
        .out_memdep_4_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_read),
        .out_memdep_4_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_write),
        .out_memdep_4_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8(BITJOIN,139)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_q = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8(BITSELECT,140)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_q[31:0]);

    // i_llvm_fpga_mem_memdep_5_kernel_3mm15(BLACKBOX,11)@36
    // in in_i_stall@20000000
    // out out_memdep_5_kernel_3mm_avm_address@20000000
    // out out_memdep_5_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_5_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_5_kernel_3mm_avm_enable@20000000
    // out out_memdep_5_kernel_3mm_avm_read@20000000
    // out out_memdep_5_kernel_3mm_avm_write@20000000
    // out out_memdep_5_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_kernel_3mm15 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_g),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_b),
        .in_memdep_5_kernel_3mm_avm_readdata(in_memdep_5_kernel_3mm_avm_readdata),
        .in_memdep_5_kernel_3mm_avm_readdatavalid(in_memdep_5_kernel_3mm_avm_readdatavalid),
        .in_memdep_5_kernel_3mm_avm_waitrequest(in_memdep_5_kernel_3mm_avm_waitrequest),
        .in_memdep_5_kernel_3mm_avm_writeack(in_memdep_5_kernel_3mm_avm_writeack),
        .out_memdep_5_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_address),
        .out_memdep_5_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_burstcount),
        .out_memdep_5_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_byteenable),
        .out_memdep_5_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_enable),
        .out_memdep_5_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_read),
        .out_memdep_5_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_write),
        .out_memdep_5_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9(BITJOIN,142)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_q = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9(BITSELECT,143)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_q[31:0]);

    // i_llvm_fpga_mem_memdep_6_kernel_3mm16(BLACKBOX,12)@36
    // in in_i_stall@20000000
    // out out_memdep_6_kernel_3mm_avm_address@20000000
    // out out_memdep_6_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_6_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_6_kernel_3mm_avm_enable@20000000
    // out out_memdep_6_kernel_3mm_avm_read@20000000
    // out out_memdep_6_kernel_3mm_avm_write@20000000
    // out out_memdep_6_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_kernel_3mm16 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_h),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_b),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .out_memdep_6_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_q = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_q[31:0]);

    // i_llvm_fpga_mem_memdep_kernel_3mm10(BLACKBOX,13)@36
    // in in_i_stall@20000000
    // out out_memdep_kernel_3mm_avm_address@20000000
    // out out_memdep_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_kernel_3mm_avm_enable@20000000
    // out out_memdep_kernel_3mm_avm_read@20000000
    // out out_memdep_kernel_3mm_avm_write@20000000
    // out out_memdep_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    kernel_3mm_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_kernel_3mm10 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_i),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_b),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .out_memdep_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,202)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_llvm_fpga_mem_memdep_kernel_3mm10_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_o_valid & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_and4 = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_o_valid & SE_out_coalesced_delay_1_fifo_and3;
    assign SE_out_coalesced_delay_1_fifo_and5 = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_o_valid & SE_out_coalesced_delay_1_fifo_and4;
    assign SE_out_coalesced_delay_1_fifo_and6 = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_o_valid & SE_out_coalesced_delay_1_fifo_and5;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_o_valid & SE_out_coalesced_delay_1_fifo_and6;

    // coalesced_delay_1_fifo(STALLFIFO,115)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V8;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,109)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,114)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V7;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(449),
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

    // i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9(BLACKBOX,20)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_16_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_o),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V6),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_valid),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8(BLACKBOX,19)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_15_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_m),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V5),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_valid),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7(BLACKBOX,18)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_14_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_k),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V4),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_valid),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6(BLACKBOX,17)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_13_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_i),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V3),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_valid),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5(BLACKBOX,16)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_12_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_g),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V2),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_valid),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4(BLACKBOX,15)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_11_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V1),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_valid),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3(BLACKBOX,14)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_10_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_c),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V0),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_valid),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x(STALLENABLE,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg6 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg7 <= '0;
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg7 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg8 <= SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed4 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed5 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed6 = (~ (i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg6;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed7 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg7;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed8 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg8;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed6;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg7 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed7;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_toReg8 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed8;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or6 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or5;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or7 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed7 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or6;
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_consumed8 & SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_or7);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg6);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V7 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg7);
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_V8 = SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x(BLACKBOX,96)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit246_0_tpl@4
    // out out_c0_exit246_1_tpl@4
    // out out_c0_exit246_2_tpl@4
    // out out_c0_exit246_3_tpl@4
    // out out_c0_exit246_4_tpl@4
    // out out_c0_exit246_5_tpl@4
    // out out_c0_exit246_6_tpl@4
    // out out_c0_exit246_7_tpl@4
    // out out_c0_exit246_8_tpl@4
    // out out_c0_exit246_9_tpl@4
    // out out_c0_exit246_10_tpl@4
    // out out_c0_exit246_11_tpl@4
    // out out_c0_exit246_12_tpl@4
    // out out_c0_exit246_13_tpl@4
    // out out_c0_exit246_14_tpl@4
    // out out_c0_exit246_15_tpl@4
    // out out_c0_exit246_16_tpl@4
    // out out_c0_exit246_17_tpl@4
    // out out_c0_exit246_18_tpl@4
    kernel_3mm_i_sfc_s_c0_in_for_body10_s_c0_enter24127_kernel_3mm1 thei_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_d),
        .in_c0_eni3_3_tpl(bubble_select_kernel_3mm_B3_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit246_0_tpl(),
        .out_c0_exit246_1_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_1_tpl),
        .out_c0_exit246_2_tpl(),
        .out_c0_exit246_3_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_3_tpl),
        .out_c0_exit246_4_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_4_tpl),
        .out_c0_exit246_5_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_5_tpl),
        .out_c0_exit246_6_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_6_tpl),
        .out_c0_exit246_7_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_7_tpl),
        .out_c0_exit246_8_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_8_tpl),
        .out_c0_exit246_9_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_9_tpl),
        .out_c0_exit246_10_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_10_tpl),
        .out_c0_exit246_11_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_11_tpl),
        .out_c0_exit246_12_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_12_tpl),
        .out_c0_exit246_13_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_13_tpl),
        .out_c0_exit246_14_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_14_tpl),
        .out_c0_exit246_15_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_15_tpl),
        .out_c0_exit246_16_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_16_tpl),
        .out_c0_exit246_17_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_17_tpl),
        .out_c0_exit246_18_tpl(i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_c0_exit246_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,54)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,66)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,69)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,159)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,160)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,113)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,70)@37
    assign out_c0_exe17 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe18 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,72)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm11_kernel_3mm4_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,74)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm12_kernel_3mm5_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,76)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm13_kernel_3mm6_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,78)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm14_kernel_3mm7_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,80)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm15_kernel_3mm8_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,82)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm16_kernel_3mm9_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,84)
    assign out_memdep_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_address;
    assign out_memdep_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_enable;
    assign out_memdep_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_read;
    assign out_memdep_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_write;
    assign out_memdep_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_writedata;
    assign out_memdep_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_byteenable;
    assign out_memdep_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_kernel_3mm10_out_memdep_kernel_3mm_avm_burstcount;

    // dupName_8_ext_sig_sync_out_x(GPOUT,86)
    assign out_memdep_1_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_address;
    assign out_memdep_1_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_enable;
    assign out_memdep_1_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_read;
    assign out_memdep_1_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_write;
    assign out_memdep_1_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_writedata;
    assign out_memdep_1_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_byteenable;
    assign out_memdep_1_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_1_kernel_3mm11_out_memdep_1_kernel_3mm_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,88)
    assign out_memdep_2_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_address;
    assign out_memdep_2_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_enable;
    assign out_memdep_2_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_read;
    assign out_memdep_2_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_write;
    assign out_memdep_2_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_writedata;
    assign out_memdep_2_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_byteenable;
    assign out_memdep_2_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_2_kernel_3mm12_out_memdep_2_kernel_3mm_avm_burstcount;

    // dupName_10_ext_sig_sync_out_x(GPOUT,90)
    assign out_memdep_3_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_address;
    assign out_memdep_3_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_enable;
    assign out_memdep_3_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_read;
    assign out_memdep_3_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_write;
    assign out_memdep_3_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_writedata;
    assign out_memdep_3_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_byteenable;
    assign out_memdep_3_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_3_kernel_3mm13_out_memdep_3_kernel_3mm_avm_burstcount;

    // dupName_11_ext_sig_sync_out_x(GPOUT,92)
    assign out_memdep_4_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_address;
    assign out_memdep_4_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_enable;
    assign out_memdep_4_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_read;
    assign out_memdep_4_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_write;
    assign out_memdep_4_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_writedata;
    assign out_memdep_4_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_byteenable;
    assign out_memdep_4_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_4_kernel_3mm14_out_memdep_4_kernel_3mm_avm_burstcount;

    // dupName_12_ext_sig_sync_out_x(GPOUT,94)
    assign out_memdep_5_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_address;
    assign out_memdep_5_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_enable;
    assign out_memdep_5_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_read;
    assign out_memdep_5_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_write;
    assign out_memdep_5_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_writedata;
    assign out_memdep_5_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_byteenable;
    assign out_memdep_5_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_5_kernel_3mm15_out_memdep_5_kernel_3mm_avm_burstcount;

    // dupName_13_ext_sig_sync_out_x(GPOUT,95)
    assign out_memdep_6_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_address;
    assign out_memdep_6_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_enable;
    assign out_memdep_6_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_read;
    assign out_memdep_6_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_write;
    assign out_memdep_6_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_writedata;
    assign out_memdep_6_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_byteenable;
    assign out_memdep_6_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_6_kernel_3mm16_out_memdep_6_kernel_3mm_avm_burstcount;

endmodule
