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

// SystemVerilog created from kernel_3mm_function_wrapper
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] D,
    input wire [63:0] E,
    input wire [63:0] F,
    input wire [63:0] G,
    input wire [31:0] avm_memdep_1_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_1_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_1_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_1_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_6_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_6_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_6_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_6_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm1_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm3_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_writeack,
    input wire [447:0] avst_iord_bl_call_kernel_3mm_data,
    input wire [0:0] avst_iord_bl_call_kernel_3mm_valid,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_almostfull,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_kernel_3mm_address,
    output wire [0:0] avm_memdep_1_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_1_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_1_kernel_3mm_enable,
    output wire [0:0] avm_memdep_1_kernel_3mm_read,
    output wire [0:0] avm_memdep_1_kernel_3mm_write,
    output wire [31:0] avm_memdep_1_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_6_kernel_3mm_address,
    output wire [0:0] avm_memdep_6_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_6_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_6_kernel_3mm_enable,
    output wire [0:0] avm_memdep_6_kernel_3mm_read,
    output wire [0:0] avm_memdep_6_kernel_3mm_write,
    output wire [31:0] avm_memdep_6_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_kernel_3mm_address,
    output wire [0:0] avm_memdep_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_kernel_3mm_enable,
    output wire [0:0] avm_memdep_kernel_3mm_read,
    output wire [0:0] avm_memdep_kernel_3mm_write,
    output wire [31:0] avm_memdep_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm10_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm12_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm13_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm1_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm1_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm1_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm1_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm3_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm3_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm3_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm3_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm4_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm5_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm8_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm9_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_writedata,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_almost_full,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_ready,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_data,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [447:0] implicit_input_q;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] kernel_3mm_function_out_stall_out;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,174)
    kernel_3mm_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,173)
    kernel_3mm_start_pulse thestart_pulse (
        .in_i_stall(kernel_3mm_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,79)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,172)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // implicit_input(BITJOIN,13)
    assign implicit_input_q = {G, F, E, D, C, B, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kernel_3mm_function(BLACKBOX,77)
    kernel_3mm_function thekernel_3mm_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_D(A_const_q),
        .in_arg_E(A_const_q),
        .in_arg_F(A_const_q),
        .in_arg_G(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_kernel_3mm_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(start_mask_and_q),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(not_stall_q),
        .in_memdep_1_kernel_3mm_avm_readdata(avm_memdep_1_kernel_3mm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(avm_memdep_1_kernel_3mm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(avm_memdep_1_kernel_3mm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(avm_memdep_1_kernel_3mm_writeack),
        .in_memdep_6_kernel_3mm_avm_readdata(avm_memdep_6_kernel_3mm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(avm_memdep_6_kernel_3mm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(avm_memdep_6_kernel_3mm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(avm_memdep_6_kernel_3mm_writeack),
        .in_memdep_kernel_3mm_avm_readdata(avm_memdep_kernel_3mm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(avm_memdep_kernel_3mm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(avm_memdep_kernel_3mm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(avm_memdep_kernel_3mm_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm10_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm10_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm12_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm12_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm13_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm13_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm1_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm1_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm1_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm1_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm3_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm3_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm3_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm3_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm4_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm4_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm4_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm4_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm5_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm5_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm5_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm5_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm8_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm8_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm8_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm8_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm9_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm9_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm9_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm9_kernel_3mm_writeack),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_memdep_1_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata),
        .out_memdep_6_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata),
        .out_memdep_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out(kernel_3mm_function_out_stall_out),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_kernel_3mm_address(GPOUT,80)
    assign avm_memdep_1_kernel_3mm_address = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;

    // avm_memdep_1_kernel_3mm_burstcount(GPOUT,81)
    assign avm_memdep_1_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;

    // avm_memdep_1_kernel_3mm_byteenable(GPOUT,82)
    assign avm_memdep_1_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;

    // avm_memdep_1_kernel_3mm_enable(GPOUT,83)
    assign avm_memdep_1_kernel_3mm_enable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;

    // avm_memdep_1_kernel_3mm_read(GPOUT,84)
    assign avm_memdep_1_kernel_3mm_read = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;

    // avm_memdep_1_kernel_3mm_write(GPOUT,85)
    assign avm_memdep_1_kernel_3mm_write = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;

    // avm_memdep_1_kernel_3mm_writedata(GPOUT,86)
    assign avm_memdep_1_kernel_3mm_writedata = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;

    // avm_memdep_6_kernel_3mm_address(GPOUT,87)
    assign avm_memdep_6_kernel_3mm_address = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;

    // avm_memdep_6_kernel_3mm_burstcount(GPOUT,88)
    assign avm_memdep_6_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;

    // avm_memdep_6_kernel_3mm_byteenable(GPOUT,89)
    assign avm_memdep_6_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;

    // avm_memdep_6_kernel_3mm_enable(GPOUT,90)
    assign avm_memdep_6_kernel_3mm_enable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;

    // avm_memdep_6_kernel_3mm_read(GPOUT,91)
    assign avm_memdep_6_kernel_3mm_read = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;

    // avm_memdep_6_kernel_3mm_write(GPOUT,92)
    assign avm_memdep_6_kernel_3mm_write = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;

    // avm_memdep_6_kernel_3mm_writedata(GPOUT,93)
    assign avm_memdep_6_kernel_3mm_writedata = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;

    // avm_memdep_kernel_3mm_address(GPOUT,94)
    assign avm_memdep_kernel_3mm_address = kernel_3mm_function_out_memdep_kernel_3mm_avm_address;

    // avm_memdep_kernel_3mm_burstcount(GPOUT,95)
    assign avm_memdep_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;

    // avm_memdep_kernel_3mm_byteenable(GPOUT,96)
    assign avm_memdep_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;

    // avm_memdep_kernel_3mm_enable(GPOUT,97)
    assign avm_memdep_kernel_3mm_enable = kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;

    // avm_memdep_kernel_3mm_read(GPOUT,98)
    assign avm_memdep_kernel_3mm_read = kernel_3mm_function_out_memdep_kernel_3mm_avm_read;

    // avm_memdep_kernel_3mm_write(GPOUT,99)
    assign avm_memdep_kernel_3mm_write = kernel_3mm_function_out_memdep_kernel_3mm_avm_write;

    // avm_memdep_kernel_3mm_writedata(GPOUT,100)
    assign avm_memdep_kernel_3mm_writedata = kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm10_kernel_3mm_address(GPOUT,101)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm10_kernel_3mm_burstcount(GPOUT,102)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm10_kernel_3mm_byteenable(GPOUT,103)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_enable(GPOUT,104)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_read(GPOUT,105)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm10_kernel_3mm_write(GPOUT,106)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm10_kernel_3mm_writedata(GPOUT,107)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm12_kernel_3mm_address(GPOUT,108)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm12_kernel_3mm_burstcount(GPOUT,109)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm12_kernel_3mm_byteenable(GPOUT,110)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_enable(GPOUT,111)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_read(GPOUT,112)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm12_kernel_3mm_write(GPOUT,113)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm12_kernel_3mm_writedata(GPOUT,114)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm13_kernel_3mm_address(GPOUT,115)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm13_kernel_3mm_burstcount(GPOUT,116)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm13_kernel_3mm_byteenable(GPOUT,117)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_enable(GPOUT,118)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_read(GPOUT,119)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm13_kernel_3mm_write(GPOUT,120)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm13_kernel_3mm_writedata(GPOUT,121)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm1_kernel_3mm_address(GPOUT,122)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm1_kernel_3mm_burstcount(GPOUT,123)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm1_kernel_3mm_byteenable(GPOUT,124)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm1_kernel_3mm_enable(GPOUT,125)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm1_kernel_3mm_read(GPOUT,126)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm1_kernel_3mm_write(GPOUT,127)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm1_kernel_3mm_writedata(GPOUT,128)
    assign avm_unnamed_kernel_3mm1_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm3_kernel_3mm_address(GPOUT,129)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm3_kernel_3mm_burstcount(GPOUT,130)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm3_kernel_3mm_byteenable(GPOUT,131)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm3_kernel_3mm_enable(GPOUT,132)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm3_kernel_3mm_read(GPOUT,133)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm3_kernel_3mm_write(GPOUT,134)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm3_kernel_3mm_writedata(GPOUT,135)
    assign avm_unnamed_kernel_3mm3_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm4_kernel_3mm_address(GPOUT,136)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm4_kernel_3mm_burstcount(GPOUT,137)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm4_kernel_3mm_byteenable(GPOUT,138)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm4_kernel_3mm_enable(GPOUT,139)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm4_kernel_3mm_read(GPOUT,140)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm4_kernel_3mm_write(GPOUT,141)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm4_kernel_3mm_writedata(GPOUT,142)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm5_kernel_3mm_address(GPOUT,143)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm5_kernel_3mm_burstcount(GPOUT,144)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm5_kernel_3mm_byteenable(GPOUT,145)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm5_kernel_3mm_enable(GPOUT,146)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm5_kernel_3mm_read(GPOUT,147)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm5_kernel_3mm_write(GPOUT,148)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm5_kernel_3mm_writedata(GPOUT,149)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm8_kernel_3mm_address(GPOUT,150)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm8_kernel_3mm_burstcount(GPOUT,151)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm8_kernel_3mm_byteenable(GPOUT,152)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm8_kernel_3mm_enable(GPOUT,153)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm8_kernel_3mm_read(GPOUT,154)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm8_kernel_3mm_write(GPOUT,155)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm8_kernel_3mm_writedata(GPOUT,156)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm9_kernel_3mm_address(GPOUT,157)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm9_kernel_3mm_burstcount(GPOUT,158)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm9_kernel_3mm_byteenable(GPOUT,159)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm9_kernel_3mm_enable(GPOUT,160)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm9_kernel_3mm_read(GPOUT,161)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm9_kernel_3mm_write(GPOUT,162)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm9_kernel_3mm_writedata(GPOUT,163)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // avst_iord_bl_call_kernel_3mm_almost_full(GPOUT,164)
    assign avst_iord_bl_call_kernel_3mm_almost_full = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // avst_iord_bl_call_kernel_3mm_ready(GPOUT,165)
    assign avst_iord_bl_call_kernel_3mm_ready = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;

    // avst_iowr_bl_return_kernel_3mm_data(GPOUT,166)
    assign avst_iowr_bl_return_kernel_3mm_data = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // avst_iowr_bl_return_kernel_3mm_valid(GPOUT,167)
    assign avst_iowr_bl_return_kernel_3mm_valid = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // not_ready(LOGICAL,78)
    assign not_ready_q = ~ (kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready);

    // busy_and(LOGICAL,9)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,170)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,10)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,168)
    assign busy = busy_or_q;

    // done(GPOUT,169)
    assign done = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // rst_sync(RESETSYNC,175)
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
