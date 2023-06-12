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

// SystemVerilog created from atax_B5_merge
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B5_merge (
    input wire [63:0] in_arrayidx155_0,
    input wire [0:0] in_exitcond957_0,
    input wire [0:0] in_forked2353_0,
    input wire [63:0] in_idxprom54_0,
    input wire [0:0] in_memdep_phi3_pop1027_pop1559_0,
    input wire [0:0] in_memdep_phi3_pop1052_0,
    input wire [0:0] in_memdep_phi_pop924_pop1456_0,
    input wire [0:0] in_memdep_phi_pop947_0,
    input wire [0:0] in_notcmp1558_0,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax3_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_almost_empty_out,
    output wire [63:0] out_arrayidx155,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_exitcond957,
    output wire [0:0] out_forked2353,
    output wire [63:0] out_idxprom54,
    output wire [0:0] out_memdep_phi3_pop1027_pop1559,
    output wire [0:0] out_memdep_phi3_pop1052,
    output wire [0:0] out_memdep_phi_pop924_pop1456,
    output wire [0:0] out_memdep_phi_pop947,
    output wire [0:0] out_notcmp1558,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_atax3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc2_in;
    wire [0:0] adapt_scalar_trunc2_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc23_in;
    wire [0:0] adapt_scalar_trunc23_q;
    wire [0:0] adapt_scalar_trunc5_in;
    wire [0:0] adapt_scalar_trunc5_q;
    wire [0:0] adapt_scalar_trunc8_in;
    wire [0:0] adapt_scalar_trunc8_q;
    wire [215:0] atax_B5_merge_data_pack_0_q;
    wire [7:0] atax_B5_merge_data_unpack_0_b;
    wire [7:0] atax_B5_merge_data_unpack_1_b;
    wire [7:0] atax_B5_merge_data_unpack_2_b;
    wire [63:0] atax_B5_merge_data_unpack_3_b;
    wire [63:0] atax_B5_merge_data_unpack_4_b;
    wire [7:0] atax_B5_merge_data_unpack_5_b;
    wire [31:0] atax_B5_merge_data_unpack_6_b;
    wire [7:0] atax_B5_merge_data_unpack_7_b;
    wire [7:0] atax_B5_merge_data_unpack_8_b;
    wire [7:0] atax_B5_merge_data_unpack_9_b;
    wire [0:0] atax_B5_merge_storage_out_o_almost_empty;
    wire [215:0] atax_B5_merge_storage_out_o_data;
    wire [0:0] atax_B5_merge_storage_out_o_empty;
    wire [0:0] atax_B5_merge_storage_out_o_stall;
    wire [0:0] atax_B5_merge_storage_out_o_valid;
    wire [1:0] c_i2_024_q;
    wire [6:0] c_i7_01_q;
    wire [7:0] element_extension0_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i7_01(CONSTANT,22)
    assign c_i7_01_q = $unsigned(7'b0000000);

    // element_extension21(BITJOIN,33)
    assign element_extension21_q = {c_i7_01_q, in_memdep_phi3_pop1027_pop1559_0};

    // element_extension18(BITJOIN,32)
    assign element_extension18_q = {c_i7_01_q, in_notcmp1558_0};

    // element_extension15(BITJOIN,31)
    assign element_extension15_q = {c_i7_01_q, in_exitcond957_0};

    // element_extension11(BITJOIN,30)
    assign element_extension11_q = {c_i7_01_q, in_memdep_phi_pop924_pop1456_0};

    // element_extension6(BITJOIN,35)
    assign element_extension6_q = {c_i7_01_q, in_forked2353_0};

    // element_extension3(BITJOIN,34)
    assign element_extension3_q = {c_i7_01_q, in_memdep_phi3_pop1052_0};

    // element_extension0(BITJOIN,29)
    assign element_extension0_q = {c_i7_01_q, in_memdep_phi_pop947_0};

    // atax_B5_merge_data_pack_0(BITJOIN,9)
    assign atax_B5_merge_data_pack_0_q = {element_extension21_q, element_extension18_q, element_extension15_q, in_unnamed_atax3_0, element_extension11_q, in_arrayidx155_0, in_idxprom54_0, element_extension6_q, element_extension3_q, element_extension0_q};

    // c_i2_024(CONSTANT,21)
    assign c_i2_024_q = $unsigned(2'b00);

    // atax_B5_merge_storage(BLACKBOX,20)
    atax_B5_merge_storage theatax_B5_merge_storage (
        .in_almost_empty_in(c_i2_024_q),
        .in_empty_in(c_i2_024_q),
        .in_i_data(atax_B5_merge_data_pack_0_q),
        .in_i_stall(in_stall_in),
        .in_i_valid(in_valid_in_0),
        .out_o_almost_empty(atax_B5_merge_storage_out_o_almost_empty),
        .out_o_data(atax_B5_merge_storage_out_o_data),
        .out_o_empty(atax_B5_merge_storage_out_o_empty),
        .out_o_stall(atax_B5_merge_storage_out_o_stall),
        .out_o_valid(atax_B5_merge_storage_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // out_almost_empty_out(GPOUT,48)
    assign out_almost_empty_out = atax_B5_merge_storage_out_o_almost_empty;

    // atax_B5_merge_data_unpack_4(BITSELECT,14)
    assign atax_B5_merge_data_unpack_4_b = atax_B5_merge_storage_out_o_data[151:88];

    // out_arrayidx155(GPOUT,49)
    assign out_arrayidx155 = atax_B5_merge_data_unpack_4_b;

    // out_empty_out(GPOUT,50)
    assign out_empty_out = atax_B5_merge_storage_out_o_empty;

    // atax_B5_merge_data_unpack_7(BITSELECT,17)
    assign atax_B5_merge_data_unpack_7_b = atax_B5_merge_storage_out_o_data[199:192];

    // adapt_scalar_trunc17(ROUND,3)
    assign adapt_scalar_trunc17_in = atax_B5_merge_data_unpack_7_b[0:0];
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // out_exitcond957(GPOUT,51)
    assign out_exitcond957 = adapt_scalar_trunc17_q;

    // atax_B5_merge_data_unpack_2(BITSELECT,12)
    assign atax_B5_merge_data_unpack_2_b = atax_B5_merge_storage_out_o_data[23:16];

    // adapt_scalar_trunc8(ROUND,8)
    assign adapt_scalar_trunc8_in = atax_B5_merge_data_unpack_2_b[0:0];
    assign adapt_scalar_trunc8_q = adapt_scalar_trunc8_in[0:0];

    // out_forked2353(GPOUT,52)
    assign out_forked2353 = adapt_scalar_trunc8_q;

    // atax_B5_merge_data_unpack_3(BITSELECT,13)
    assign atax_B5_merge_data_unpack_3_b = atax_B5_merge_storage_out_o_data[87:24];

    // out_idxprom54(GPOUT,53)
    assign out_idxprom54 = atax_B5_merge_data_unpack_3_b;

    // atax_B5_merge_data_unpack_9(BITSELECT,19)
    assign atax_B5_merge_data_unpack_9_b = atax_B5_merge_storage_out_o_data[215:208];

    // adapt_scalar_trunc23(ROUND,6)
    assign adapt_scalar_trunc23_in = atax_B5_merge_data_unpack_9_b[0:0];
    assign adapt_scalar_trunc23_q = adapt_scalar_trunc23_in[0:0];

    // out_memdep_phi3_pop1027_pop1559(GPOUT,54)
    assign out_memdep_phi3_pop1027_pop1559 = adapt_scalar_trunc23_q;

    // atax_B5_merge_data_unpack_1(BITSELECT,11)
    assign atax_B5_merge_data_unpack_1_b = atax_B5_merge_storage_out_o_data[15:8];

    // adapt_scalar_trunc5(ROUND,7)
    assign adapt_scalar_trunc5_in = atax_B5_merge_data_unpack_1_b[0:0];
    assign adapt_scalar_trunc5_q = adapt_scalar_trunc5_in[0:0];

    // out_memdep_phi3_pop1052(GPOUT,55)
    assign out_memdep_phi3_pop1052 = adapt_scalar_trunc5_q;

    // atax_B5_merge_data_unpack_5(BITSELECT,15)
    assign atax_B5_merge_data_unpack_5_b = atax_B5_merge_storage_out_o_data[159:152];

    // adapt_scalar_trunc13(ROUND,2)
    assign adapt_scalar_trunc13_in = atax_B5_merge_data_unpack_5_b[0:0];
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // out_memdep_phi_pop924_pop1456(GPOUT,56)
    assign out_memdep_phi_pop924_pop1456 = adapt_scalar_trunc13_q;

    // atax_B5_merge_data_unpack_0(BITSELECT,10)
    assign atax_B5_merge_data_unpack_0_b = atax_B5_merge_storage_out_o_data[7:0];

    // adapt_scalar_trunc2(ROUND,4)
    assign adapt_scalar_trunc2_in = atax_B5_merge_data_unpack_0_b[0:0];
    assign adapt_scalar_trunc2_q = adapt_scalar_trunc2_in[0:0];

    // out_memdep_phi_pop947(GPOUT,57)
    assign out_memdep_phi_pop947 = adapt_scalar_trunc2_q;

    // atax_B5_merge_data_unpack_8(BITSELECT,18)
    assign atax_B5_merge_data_unpack_8_b = atax_B5_merge_storage_out_o_data[207:200];

    // adapt_scalar_trunc20(ROUND,5)
    assign adapt_scalar_trunc20_in = atax_B5_merge_data_unpack_8_b[0:0];
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // out_notcmp1558(GPOUT,58)
    assign out_notcmp1558 = adapt_scalar_trunc20_q;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = atax_B5_merge_storage_out_o_stall;

    // atax_B5_merge_data_unpack_6(BITSELECT,16)
    assign atax_B5_merge_data_unpack_6_b = atax_B5_merge_storage_out_o_data[191:160];

    // out_unnamed_atax3(GPOUT,60)
    assign out_unnamed_atax3 = atax_B5_merge_data_unpack_6_b;

    // out_valid_out(GPOUT,61)
    assign out_valid_out = atax_B5_merge_storage_out_o_valid;

    // rst_sync(RESETSYNC,62)
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
