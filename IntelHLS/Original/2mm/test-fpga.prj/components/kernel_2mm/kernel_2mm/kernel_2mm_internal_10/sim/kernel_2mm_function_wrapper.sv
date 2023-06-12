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

// SystemVerilog created from kernel_2mm_function_wrapper
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] D,
    input wire [31:0] alpha,
    input wire [31:0] avm_memdep_1_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_1_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_1_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_1_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm10_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm12_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm14_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm6_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm9_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_writeack,
    input wire [319:0] avst_iord_bl_call_kernel_2mm_data,
    input wire [0:0] avst_iord_bl_call_kernel_2mm_valid,
    input wire [0:0] avst_iowr_bl_return_kernel_2mm_almostfull,
    input wire [0:0] avst_iowr_bl_return_kernel_2mm_ready,
    input wire [31:0] beta,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_kernel_2mm_address,
    output wire [0:0] avm_memdep_1_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_1_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_1_kernel_2mm_enable,
    output wire [0:0] avm_memdep_1_kernel_2mm_read,
    output wire [0:0] avm_memdep_1_kernel_2mm_write,
    output wire [31:0] avm_memdep_1_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_kernel_2mm_address,
    output wire [0:0] avm_memdep_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_kernel_2mm_enable,
    output wire [0:0] avm_memdep_kernel_2mm_read,
    output wire [0:0] avm_memdep_kernel_2mm_write,
    output wire [31:0] avm_memdep_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm10_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm10_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm10_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm12_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm12_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm12_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm14_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm14_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm14_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm14_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm15_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm6_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm6_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm6_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm6_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm9_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm9_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm9_kernel_2mm_writedata,
    output wire [0:0] avst_iord_bl_call_kernel_2mm_almost_full,
    output wire [0:0] avst_iord_bl_call_kernel_2mm_ready,
    output wire [0:0] avst_iowr_bl_return_kernel_2mm_data,
    output wire [0:0] avst_iowr_bl_return_kernel_2mm_valid,
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
    wire [319:0] implicit_input_q;
    wire [0:0] kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [31:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] kernel_2mm_function_out_stall_out;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,126)
    kernel_2mm_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,125)
    kernel_2mm_start_pulse thestart_pulse (
        .in_i_stall(kernel_2mm_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,59)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,124)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {D, C, B, A, beta, alpha};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kernel_2mm_function(BLACKBOX,57)
    kernel_2mm_function thekernel_2mm_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_D(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_kernel_2mm_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(start_mask_and_q),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(not_stall_q),
        .in_memdep_1_kernel_2mm_avm_readdata(avm_memdep_1_kernel_2mm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(avm_memdep_1_kernel_2mm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(avm_memdep_1_kernel_2mm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(avm_memdep_1_kernel_2mm_writeack),
        .in_memdep_kernel_2mm_avm_readdata(avm_memdep_kernel_2mm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(avm_memdep_kernel_2mm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(avm_memdep_kernel_2mm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(avm_memdep_kernel_2mm_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm10_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm10_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm10_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm10_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm12_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm12_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm12_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm12_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm14_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm14_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm14_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm14_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm15_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm15_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm15_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm15_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm6_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm6_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm6_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm6_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm9_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm9_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm9_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm9_kernel_2mm_writeack),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_kernel_2mm_o_fifoalmost_full(kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_2mm_o_fifoready(kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_memdep_1_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata),
        .out_memdep_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata),
        .out_stall_out(kernel_2mm_function_out_stall_out),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_kernel_2mm_address(GPOUT,60)
    assign avm_memdep_1_kernel_2mm_address = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address;

    // avm_memdep_1_kernel_2mm_burstcount(GPOUT,61)
    assign avm_memdep_1_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount;

    // avm_memdep_1_kernel_2mm_byteenable(GPOUT,62)
    assign avm_memdep_1_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable;

    // avm_memdep_1_kernel_2mm_enable(GPOUT,63)
    assign avm_memdep_1_kernel_2mm_enable = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable;

    // avm_memdep_1_kernel_2mm_read(GPOUT,64)
    assign avm_memdep_1_kernel_2mm_read = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read;

    // avm_memdep_1_kernel_2mm_write(GPOUT,65)
    assign avm_memdep_1_kernel_2mm_write = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write;

    // avm_memdep_1_kernel_2mm_writedata(GPOUT,66)
    assign avm_memdep_1_kernel_2mm_writedata = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata;

    // avm_memdep_kernel_2mm_address(GPOUT,67)
    assign avm_memdep_kernel_2mm_address = kernel_2mm_function_out_memdep_kernel_2mm_avm_address;

    // avm_memdep_kernel_2mm_burstcount(GPOUT,68)
    assign avm_memdep_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount;

    // avm_memdep_kernel_2mm_byteenable(GPOUT,69)
    assign avm_memdep_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable;

    // avm_memdep_kernel_2mm_enable(GPOUT,70)
    assign avm_memdep_kernel_2mm_enable = kernel_2mm_function_out_memdep_kernel_2mm_avm_enable;

    // avm_memdep_kernel_2mm_read(GPOUT,71)
    assign avm_memdep_kernel_2mm_read = kernel_2mm_function_out_memdep_kernel_2mm_avm_read;

    // avm_memdep_kernel_2mm_write(GPOUT,72)
    assign avm_memdep_kernel_2mm_write = kernel_2mm_function_out_memdep_kernel_2mm_avm_write;

    // avm_memdep_kernel_2mm_writedata(GPOUT,73)
    assign avm_memdep_kernel_2mm_writedata = kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm10_kernel_2mm_address(GPOUT,74)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm10_kernel_2mm_burstcount(GPOUT,75)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm10_kernel_2mm_byteenable(GPOUT,76)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm10_kernel_2mm_enable(GPOUT,77)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm10_kernel_2mm_read(GPOUT,78)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm10_kernel_2mm_write(GPOUT,79)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm10_kernel_2mm_writedata(GPOUT,80)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm12_kernel_2mm_address(GPOUT,81)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm12_kernel_2mm_burstcount(GPOUT,82)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm12_kernel_2mm_byteenable(GPOUT,83)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm12_kernel_2mm_enable(GPOUT,84)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm12_kernel_2mm_read(GPOUT,85)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm12_kernel_2mm_write(GPOUT,86)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm12_kernel_2mm_writedata(GPOUT,87)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm14_kernel_2mm_address(GPOUT,88)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm14_kernel_2mm_burstcount(GPOUT,89)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm14_kernel_2mm_byteenable(GPOUT,90)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm14_kernel_2mm_enable(GPOUT,91)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm14_kernel_2mm_read(GPOUT,92)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm14_kernel_2mm_write(GPOUT,93)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm14_kernel_2mm_writedata(GPOUT,94)
    assign avm_unnamed_kernel_2mm14_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm15_kernel_2mm_address(GPOUT,95)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm15_kernel_2mm_burstcount(GPOUT,96)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm15_kernel_2mm_byteenable(GPOUT,97)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm15_kernel_2mm_enable(GPOUT,98)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm15_kernel_2mm_read(GPOUT,99)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm15_kernel_2mm_write(GPOUT,100)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm15_kernel_2mm_writedata(GPOUT,101)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm6_kernel_2mm_address(GPOUT,102)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm6_kernel_2mm_burstcount(GPOUT,103)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm6_kernel_2mm_byteenable(GPOUT,104)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm6_kernel_2mm_enable(GPOUT,105)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm6_kernel_2mm_read(GPOUT,106)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm6_kernel_2mm_write(GPOUT,107)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm6_kernel_2mm_writedata(GPOUT,108)
    assign avm_unnamed_kernel_2mm6_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm9_kernel_2mm_address(GPOUT,109)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm9_kernel_2mm_burstcount(GPOUT,110)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm9_kernel_2mm_byteenable(GPOUT,111)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm9_kernel_2mm_enable(GPOUT,112)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm9_kernel_2mm_read(GPOUT,113)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm9_kernel_2mm_write(GPOUT,114)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm9_kernel_2mm_writedata(GPOUT,115)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // avst_iord_bl_call_kernel_2mm_almost_full(GPOUT,116)
    assign avst_iord_bl_call_kernel_2mm_almost_full = kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // avst_iord_bl_call_kernel_2mm_ready(GPOUT,117)
    assign avst_iord_bl_call_kernel_2mm_ready = kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready;

    // avst_iowr_bl_return_kernel_2mm_data(GPOUT,118)
    assign avst_iowr_bl_return_kernel_2mm_data = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // avst_iowr_bl_return_kernel_2mm_valid(GPOUT,119)
    assign avst_iowr_bl_return_kernel_2mm_valid = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // not_ready(LOGICAL,58)
    assign not_ready_q = ~ (kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready);

    // busy_and(LOGICAL,6)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,122)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,7)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,120)
    assign busy = busy_or_q;

    // done(GPOUT,121)
    assign done = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // rst_sync(RESETSYNC,127)
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
