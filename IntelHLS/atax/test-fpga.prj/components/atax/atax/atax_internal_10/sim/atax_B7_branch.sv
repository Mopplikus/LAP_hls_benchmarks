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

// SystemVerilog created from atax_B7_branch
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B7_branch (
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe1160,
    input wire [0:0] in_c0_exe2161,
    input wire [0:0] in_c0_exe4163,
    input wire [63:0] in_c0_exe5164,
    input wire [0:0] in_c0_exe6165,
    input wire [0:0] in_c0_exe7166,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1160,
    output wire [0:0] out_c0_exe2161,
    output wire [63:0] out_c0_exe5164,
    output wire [0:0] out_c0_exe6165,
    output wire [0:0] out_c0_exe7166,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc10_in;
    wire [0:0] adapt_scalar_trunc10_q;
    wire [0:0] adapt_scalar_trunc3_in;
    wire [0:0] adapt_scalar_trunc3_q;
    wire [0:0] adapt_scalar_trunc7_in;
    wire [0:0] adapt_scalar_trunc7_q;
    wire [119:0] atax_B7_branch_data_pack_q;
    wire [31:0] atax_B7_branch_data_unpack_0_b;
    wire [7:0] atax_B7_branch_data_unpack_1_b;
    wire [63:0] atax_B7_branch_data_unpack_2_b;
    wire [7:0] atax_B7_branch_data_unpack_3_b;
    wire [7:0] atax_B7_branch_data_unpack_4_b;
    wire [0:0] atax_B7_branch_valid_and_q;
    wire [6:0] c_i7_02_q;
    wire [7:0] element_extension1_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_02(CONSTANT,12)
    assign c_i7_02_q = $unsigned(7'b0000000);

    // element_extension8(BITJOIN,17)
    assign element_extension8_q = {c_i7_02_q, in_c0_exe7166};

    // element_extension5(BITJOIN,16)
    assign element_extension5_q = {c_i7_02_q, in_c0_exe6165};

    // element_extension1(BITJOIN,15)
    assign element_extension1_q = {c_i7_02_q, in_c0_exe2161};

    // atax_B7_branch_data_pack(BITJOIN,5)
    assign atax_B7_branch_data_pack_q = {element_extension8_q, element_extension5_q, in_c0_exe5164, element_extension1_q, in_c0_exe1160};

    // atax_B7_branch_data_unpack_0(BITSELECT,6)
    assign atax_B7_branch_data_unpack_0_b = atax_B7_branch_data_pack_q[31:0];

    // out_c0_exe1160(GPOUT,28)
    assign out_c0_exe1160 = atax_B7_branch_data_unpack_0_b;

    // atax_B7_branch_data_unpack_1(BITSELECT,7)
    assign atax_B7_branch_data_unpack_1_b = atax_B7_branch_data_pack_q[39:32];

    // adapt_scalar_trunc3(ROUND,3)
    assign adapt_scalar_trunc3_in = atax_B7_branch_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc3_q = adapt_scalar_trunc3_in[0:0];

    // out_c0_exe2161(GPOUT,29)
    assign out_c0_exe2161 = adapt_scalar_trunc3_q;

    // atax_B7_branch_data_unpack_2(BITSELECT,8)
    assign atax_B7_branch_data_unpack_2_b = atax_B7_branch_data_pack_q[103:40];

    // out_c0_exe5164(GPOUT,30)
    assign out_c0_exe5164 = atax_B7_branch_data_unpack_2_b;

    // atax_B7_branch_data_unpack_3(BITSELECT,9)
    assign atax_B7_branch_data_unpack_3_b = atax_B7_branch_data_pack_q[111:104];

    // adapt_scalar_trunc7(ROUND,4)
    assign adapt_scalar_trunc7_in = atax_B7_branch_data_unpack_3_b[0:0];
    assign adapt_scalar_trunc7_q = adapt_scalar_trunc7_in[0:0];

    // out_c0_exe6165(GPOUT,31)
    assign out_c0_exe6165 = adapt_scalar_trunc7_q;

    // atax_B7_branch_data_unpack_4(BITSELECT,10)
    assign atax_B7_branch_data_unpack_4_b = atax_B7_branch_data_pack_q[119:112];

    // adapt_scalar_trunc10(ROUND,2)
    assign adapt_scalar_trunc10_in = atax_B7_branch_data_unpack_4_b[0:0];
    assign adapt_scalar_trunc10_q = adapt_scalar_trunc10_in[0:0];

    // out_c0_exe7166(GPOUT,32)
    assign out_c0_exe7166 = adapt_scalar_trunc10_q;

    // out_stall_out(GPOUT,33)
    assign out_stall_out = in_stall_in_0;

    // atax_B7_branch_valid_and(LOGICAL,11)
    assign atax_B7_branch_valid_and_q = in_valid_in & in_c0_exe4163;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = atax_B7_branch_valid_and_q;

    // rst_sync(RESETSYNC,35)
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
