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

// SystemVerilog created from bb_kernel_3mm_B3
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked123_0,
    input wire [0:0] in_forked123_1,
    input wire [31:0] in_i_0104_pop27180_0,
    input wire [31:0] in_i_0104_pop27180_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_memdep_1_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_2_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_3_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_4_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_5_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_6_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_notcmp138179_0,
    input wire [0:0] in_notcmp138179_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe17;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe18;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_stall_out;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe18;
    wire [0:0] kernel_3mm_B3_branch_out_stall_out;
    wire [0:0] kernel_3mm_B3_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B3_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B3_merge_out_forked123;
    wire [31:0] kernel_3mm_B3_merge_out_i_0104_pop27180;
    wire [0:0] kernel_3mm_B3_merge_out_notcmp138179;
    wire [0:0] kernel_3mm_B3_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B3_merge_out_stall_out_1;
    wire [0:0] kernel_3mm_B3_merge_out_valid_out;


    // kernel_3mm_B3_merge(BLACKBOX,78)
    kernel_3mm_B3_merge thekernel_3mm_B3_merge (
        .in_forked123_0(in_forked123_0),
        .in_forked123_1(in_forked123_1),
        .in_i_0104_pop27180_0(in_i_0104_pop27180_0),
        .in_i_0104_pop27180_1(in_i_0104_pop27180_1),
        .in_notcmp138179_0(in_notcmp138179_0),
        .in_notcmp138179_1(in_notcmp138179_1),
        .in_stall_in(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked123(kernel_3mm_B3_merge_out_forked123),
        .out_i_0104_pop27180(kernel_3mm_B3_merge_out_i_0104_pop27180),
        .out_notcmp138179(kernel_3mm_B3_merge_out_notcmp138179),
        .out_stall_out_0(kernel_3mm_B3_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B3_merge_out_stall_out_1),
        .out_valid_out(kernel_3mm_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B3_stall_region thebb_kernel_3mm_B3_stall_region (
        .in_flush(in_flush),
        .in_forked123(kernel_3mm_B3_merge_out_forked123),
        .in_i_0104_pop27180(kernel_3mm_B3_merge_out_i_0104_pop27180),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_memdep_1_kernel_3mm_avm_readdata(in_memdep_1_kernel_3mm_avm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(in_memdep_1_kernel_3mm_avm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(in_memdep_1_kernel_3mm_avm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(in_memdep_1_kernel_3mm_avm_writeack),
        .in_memdep_2_kernel_3mm_avm_readdata(in_memdep_2_kernel_3mm_avm_readdata),
        .in_memdep_2_kernel_3mm_avm_readdatavalid(in_memdep_2_kernel_3mm_avm_readdatavalid),
        .in_memdep_2_kernel_3mm_avm_waitrequest(in_memdep_2_kernel_3mm_avm_waitrequest),
        .in_memdep_2_kernel_3mm_avm_writeack(in_memdep_2_kernel_3mm_avm_writeack),
        .in_memdep_3_kernel_3mm_avm_readdata(in_memdep_3_kernel_3mm_avm_readdata),
        .in_memdep_3_kernel_3mm_avm_readdatavalid(in_memdep_3_kernel_3mm_avm_readdatavalid),
        .in_memdep_3_kernel_3mm_avm_waitrequest(in_memdep_3_kernel_3mm_avm_waitrequest),
        .in_memdep_3_kernel_3mm_avm_writeack(in_memdep_3_kernel_3mm_avm_writeack),
        .in_memdep_4_kernel_3mm_avm_readdata(in_memdep_4_kernel_3mm_avm_readdata),
        .in_memdep_4_kernel_3mm_avm_readdatavalid(in_memdep_4_kernel_3mm_avm_readdatavalid),
        .in_memdep_4_kernel_3mm_avm_waitrequest(in_memdep_4_kernel_3mm_avm_waitrequest),
        .in_memdep_4_kernel_3mm_avm_writeack(in_memdep_4_kernel_3mm_avm_writeack),
        .in_memdep_5_kernel_3mm_avm_readdata(in_memdep_5_kernel_3mm_avm_readdata),
        .in_memdep_5_kernel_3mm_avm_readdatavalid(in_memdep_5_kernel_3mm_avm_readdatavalid),
        .in_memdep_5_kernel_3mm_avm_waitrequest(in_memdep_5_kernel_3mm_avm_waitrequest),
        .in_memdep_5_kernel_3mm_avm_writeack(in_memdep_5_kernel_3mm_avm_writeack),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_notcmp138179(kernel_3mm_B3_merge_out_notcmp138179),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B3_branch_out_stall_out),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out),
        .out_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .out_memdep_1_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_writedata),
        .out_memdep_2_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_address),
        .out_memdep_2_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_burstcount),
        .out_memdep_2_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_byteenable),
        .out_memdep_2_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_enable),
        .out_memdep_2_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_read),
        .out_memdep_2_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_write),
        .out_memdep_2_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_writedata),
        .out_memdep_3_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_address),
        .out_memdep_3_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_burstcount),
        .out_memdep_3_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_byteenable),
        .out_memdep_3_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_enable),
        .out_memdep_3_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_read),
        .out_memdep_3_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_write),
        .out_memdep_3_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_writedata),
        .out_memdep_4_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_address),
        .out_memdep_4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_burstcount),
        .out_memdep_4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_byteenable),
        .out_memdep_4_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_enable),
        .out_memdep_4_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_read),
        .out_memdep_4_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_write),
        .out_memdep_4_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_writedata),
        .out_memdep_5_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_address),
        .out_memdep_5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_burstcount),
        .out_memdep_5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_byteenable),
        .out_memdep_5_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_enable),
        .out_memdep_5_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_read),
        .out_memdep_5_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_write),
        .out_memdep_5_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_writedata),
        .out_memdep_6_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_writedata),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B3_branch(BLACKBOX,77)
    kernel_3mm_B3_branch thekernel_3mm_B3_branch (
        .in_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .out_c0_exe18(kernel_3mm_B3_branch_out_c0_exe18),
        .out_stall_out(kernel_3mm_B3_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B3_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe18(GPOUT,79)
    assign out_c0_exe18 = kernel_3mm_B3_branch_out_c0_exe18;

    // out_exiting_stall_out(GPOUT,80)
    assign out_exiting_stall_out = bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,81)
    assign out_exiting_valid_out = bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out;

    // out_memdep_1_kernel_3mm_avm_address(GPOUT,82)
    assign out_memdep_1_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_address;

    // out_memdep_1_kernel_3mm_avm_burstcount(GPOUT,83)
    assign out_memdep_1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_burstcount;

    // out_memdep_1_kernel_3mm_avm_byteenable(GPOUT,84)
    assign out_memdep_1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_byteenable;

    // out_memdep_1_kernel_3mm_avm_enable(GPOUT,85)
    assign out_memdep_1_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_enable;

    // out_memdep_1_kernel_3mm_avm_read(GPOUT,86)
    assign out_memdep_1_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_read;

    // out_memdep_1_kernel_3mm_avm_write(GPOUT,87)
    assign out_memdep_1_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_write;

    // out_memdep_1_kernel_3mm_avm_writedata(GPOUT,88)
    assign out_memdep_1_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_1_kernel_3mm_avm_writedata;

    // out_memdep_2_kernel_3mm_avm_address(GPOUT,89)
    assign out_memdep_2_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_address;

    // out_memdep_2_kernel_3mm_avm_burstcount(GPOUT,90)
    assign out_memdep_2_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_burstcount;

    // out_memdep_2_kernel_3mm_avm_byteenable(GPOUT,91)
    assign out_memdep_2_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_byteenable;

    // out_memdep_2_kernel_3mm_avm_enable(GPOUT,92)
    assign out_memdep_2_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_enable;

    // out_memdep_2_kernel_3mm_avm_read(GPOUT,93)
    assign out_memdep_2_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_read;

    // out_memdep_2_kernel_3mm_avm_write(GPOUT,94)
    assign out_memdep_2_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_write;

    // out_memdep_2_kernel_3mm_avm_writedata(GPOUT,95)
    assign out_memdep_2_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_2_kernel_3mm_avm_writedata;

    // out_memdep_3_kernel_3mm_avm_address(GPOUT,96)
    assign out_memdep_3_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_address;

    // out_memdep_3_kernel_3mm_avm_burstcount(GPOUT,97)
    assign out_memdep_3_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_burstcount;

    // out_memdep_3_kernel_3mm_avm_byteenable(GPOUT,98)
    assign out_memdep_3_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_byteenable;

    // out_memdep_3_kernel_3mm_avm_enable(GPOUT,99)
    assign out_memdep_3_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_enable;

    // out_memdep_3_kernel_3mm_avm_read(GPOUT,100)
    assign out_memdep_3_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_read;

    // out_memdep_3_kernel_3mm_avm_write(GPOUT,101)
    assign out_memdep_3_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_write;

    // out_memdep_3_kernel_3mm_avm_writedata(GPOUT,102)
    assign out_memdep_3_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_3_kernel_3mm_avm_writedata;

    // out_memdep_4_kernel_3mm_avm_address(GPOUT,103)
    assign out_memdep_4_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_address;

    // out_memdep_4_kernel_3mm_avm_burstcount(GPOUT,104)
    assign out_memdep_4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_burstcount;

    // out_memdep_4_kernel_3mm_avm_byteenable(GPOUT,105)
    assign out_memdep_4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_byteenable;

    // out_memdep_4_kernel_3mm_avm_enable(GPOUT,106)
    assign out_memdep_4_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_enable;

    // out_memdep_4_kernel_3mm_avm_read(GPOUT,107)
    assign out_memdep_4_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_read;

    // out_memdep_4_kernel_3mm_avm_write(GPOUT,108)
    assign out_memdep_4_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_write;

    // out_memdep_4_kernel_3mm_avm_writedata(GPOUT,109)
    assign out_memdep_4_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_4_kernel_3mm_avm_writedata;

    // out_memdep_5_kernel_3mm_avm_address(GPOUT,110)
    assign out_memdep_5_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_address;

    // out_memdep_5_kernel_3mm_avm_burstcount(GPOUT,111)
    assign out_memdep_5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_burstcount;

    // out_memdep_5_kernel_3mm_avm_byteenable(GPOUT,112)
    assign out_memdep_5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_byteenable;

    // out_memdep_5_kernel_3mm_avm_enable(GPOUT,113)
    assign out_memdep_5_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_enable;

    // out_memdep_5_kernel_3mm_avm_read(GPOUT,114)
    assign out_memdep_5_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_read;

    // out_memdep_5_kernel_3mm_avm_write(GPOUT,115)
    assign out_memdep_5_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_write;

    // out_memdep_5_kernel_3mm_avm_writedata(GPOUT,116)
    assign out_memdep_5_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_5_kernel_3mm_avm_writedata;

    // out_memdep_6_kernel_3mm_avm_address(GPOUT,117)
    assign out_memdep_6_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_address;

    // out_memdep_6_kernel_3mm_avm_burstcount(GPOUT,118)
    assign out_memdep_6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_burstcount;

    // out_memdep_6_kernel_3mm_avm_byteenable(GPOUT,119)
    assign out_memdep_6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_byteenable;

    // out_memdep_6_kernel_3mm_avm_enable(GPOUT,120)
    assign out_memdep_6_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_enable;

    // out_memdep_6_kernel_3mm_avm_read(GPOUT,121)
    assign out_memdep_6_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_read;

    // out_memdep_6_kernel_3mm_avm_write(GPOUT,122)
    assign out_memdep_6_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_write;

    // out_memdep_6_kernel_3mm_avm_writedata(GPOUT,123)
    assign out_memdep_6_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_6_kernel_3mm_avm_writedata;

    // out_memdep_kernel_3mm_avm_address(GPOUT,124)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,125)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,126)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,127)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,128)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,129)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,130)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_memdep_kernel_3mm_avm_writedata;

    // out_stall_in_0(GPOUT,131)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,132)
    assign out_stall_out_0 = kernel_3mm_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,133)
    assign out_stall_out_1 = kernel_3mm_B3_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_address(GPOUT,134)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(GPOUT,135)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(GPOUT,136)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(GPOUT,137)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_read(GPOUT,138)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_write(GPOUT,139)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(GPOUT,140)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_address(GPOUT,141)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(GPOUT,142)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(GPOUT,143)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(GPOUT,144)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_read(GPOUT,145)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_write(GPOUT,146)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(GPOUT,147)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,148)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,149)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,150)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,151)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,152)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,153)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,154)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,155)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,156)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,157)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,158)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,159)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,160)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,161)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_address(GPOUT,162)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(GPOUT,163)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(GPOUT,164)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(GPOUT,165)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_read(GPOUT,166)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_write(GPOUT,167)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(GPOUT,168)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_address(GPOUT,169)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(GPOUT,170)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(GPOUT,171)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(GPOUT,172)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_read(GPOUT,173)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_write(GPOUT,174)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(GPOUT,175)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_address(GPOUT,176)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(GPOUT,177)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(GPOUT,178)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(GPOUT,179)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_read(GPOUT,180)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_write(GPOUT,181)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(GPOUT,182)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,183)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,184)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,185)
    assign out_valid_out_0 = kernel_3mm_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,186)
    assign out_valid_out_1 = kernel_3mm_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,188)
    assign out_pipeline_valid_out = bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out;

endmodule
