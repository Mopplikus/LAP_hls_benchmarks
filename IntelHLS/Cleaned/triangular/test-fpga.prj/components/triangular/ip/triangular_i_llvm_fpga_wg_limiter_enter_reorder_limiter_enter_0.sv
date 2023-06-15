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

// SystemVerilog created from i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Jun 14 20:51:12 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 (
    output wire [0:0] out_wgl_6_enter_exit_valid_out,
    output wire [31:0] out_o_data,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_wgl_6_enter_exit_stall_in,
    input wire [0:0] in_wgl_6_enter_exit_valid_in,
    output wire [0:0] out_wgl_6_enter_exit_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [31:0] in_i_data,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [31:0] c_i32_12_q;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_k_wgid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_wg_size;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_l_wgid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out;
    wire i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out_bitsignaltemp;


    // c_i32_12(CONSTANT,4)
    assign c_i32_12_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1(EXTIFACE,5)
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_k_wgid = in_i_data;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in = in_i_stall;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in = in_i_valid;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in = in_wgl_6_enter_exit_stall_in;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in = in_wgl_6_enter_exit_valid_in;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_wg_size = c_i32_12_q;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in_bitsignaltemp = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in[0];
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in_bitsignaltemp = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in[0];
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in_bitsignaltemp = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in[0];
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in_bitsignaltemp = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in[0];
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out[0] = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out_bitsignaltemp;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out[0] = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out_bitsignaltemp;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out[0] = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out_bitsignaltemp;
    assign i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out[0] = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out_bitsignaltemp;
    acl_work_group_limiter_dspba #(
        .ASYNC_RESET(1),
        .KERNEL_WG_LIMIT(1),
        .MAX_WG_SIZE(1),
        .SYNCHRONIZE_RESET(0),
        .WG_FIFO_ORDER(1),
        .WG_LIMIT(1)
    ) thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1 (
        .entry_k_wgid(in_i_data),
        .entry_stall_in(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_in_bitsignaltemp),
        .entry_valid_in(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_in_bitsignaltemp),
        .exit_stall_in(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_in_bitsignaltemp),
        .exit_valid_in(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_in_bitsignaltemp),
        .wg_size(c_i32_12_q),
        .entry_l_wgid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_l_wgid),
        .entry_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out_bitsignaltemp),
        .entry_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out_bitsignaltemp),
        .exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out_bitsignaltemp),
        .exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_wgl_6_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_valid_out;

    // dupName_0_sync_out_x(GPOUT,3)@5
    assign out_o_data = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_l_wgid;
    assign out_o_valid = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_valid_out;

    // regfree_osync(GPOUT,8)
    assign out_wgl_6_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_exit_stall_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular1_entry_stall_out;

endmodule
