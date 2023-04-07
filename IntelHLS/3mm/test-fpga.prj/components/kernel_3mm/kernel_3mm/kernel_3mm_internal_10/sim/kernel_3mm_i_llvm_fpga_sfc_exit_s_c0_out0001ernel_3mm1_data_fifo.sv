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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm1_data_fifo
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0001ernel_3mm1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [63:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
    input wire [63:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [63:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
    output wire [63:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [0:0] adapt_scalar_trunc74_in;
    wire [0:0] adapt_scalar_trunc74_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [0:0] adapt_scalar_trunc78_in;
    wire [0:0] adapt_scalar_trunc78_q;
    wire [0:0] adapt_scalar_trunc80_in;
    wire [0:0] adapt_scalar_trunc80_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc84_in;
    wire [0:0] adapt_scalar_trunc84_q;
    wire [0:0] adapt_scalar_trunc88_in;
    wire [0:0] adapt_scalar_trunc88_q;
    wire [0:0] adapt_scalar_trunc90_in;
    wire [0:0] adapt_scalar_trunc90_q;
    wire [0:0] adapt_scalar_trunc92_in;
    wire [0:0] adapt_scalar_trunc92_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [0:0] adapt_scalar_trunc98_in;
    wire [0:0] adapt_scalar_trunc98_q;
    wire [15:0] c_i16_045_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_010_q;
    wire [511:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension37_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension9_q;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full_bitsignaltemp;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [63:0] ip_dsdk_adapt_bitselect51_b;
    wire [63:0] ip_dsdk_adapt_bitselect53_b;
    wire [63:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [31:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [0:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;
    wire [0:0] ip_dsdk_adapt_bitselect77_b;
    wire [0:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [0:0] ip_dsdk_adapt_bitselect83_b;
    wire [31:0] ip_dsdk_adapt_bitselect85_b;
    wire [0:0] ip_dsdk_adapt_bitselect87_b;
    wire [0:0] ip_dsdk_adapt_bitselect89_b;
    wire [0:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [0:0] ip_dsdk_adapt_bitselect97_b;


    // c_i16_045(CONSTANT,22)
    assign c_i16_045_q = $unsigned(16'b0000000000000000);

    // c_i7_010(CONSTANT,25)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension43(BITJOIN,63)
    assign element_extension43_q = {c_i7_010_q, in_i_data_25_tpl};

    // element_extension41(BITJOIN,62)
    assign element_extension41_q = {c_i7_010_q, in_i_data_24_tpl};

    // element_extension39(BITJOIN,61)
    assign element_extension39_q = {c_i7_010_q, in_i_data_23_tpl};

    // element_extension37(BITJOIN,60)
    assign element_extension37_q = {c_i7_010_q, in_i_data_22_tpl};

    // element_extension35(BITJOIN,59)
    assign element_extension35_q = {c_i7_010_q, in_i_data_21_tpl};

    // element_extension33(BITJOIN,58)
    assign element_extension33_q = {c_i7_010_q, in_i_data_20_tpl};

    // element_extension31(BITJOIN,57)
    assign element_extension31_q = {c_i7_010_q, in_i_data_18_tpl};

    // element_extension29(BITJOIN,55)
    assign element_extension29_q = {c_i7_010_q, in_i_data_17_tpl};

    // element_extension27(BITJOIN,54)
    assign element_extension27_q = {c_i7_010_q, in_i_data_16_tpl};

    // element_extension25(BITJOIN,53)
    assign element_extension25_q = {c_i7_010_q, in_i_data_15_tpl};

    // element_extension23(BITJOIN,52)
    assign element_extension23_q = {c_i7_010_q, in_i_data_14_tpl};

    // element_extension21(BITJOIN,51)
    assign element_extension21_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension19(BITJOIN,50)
    assign element_extension19_q = {c_i7_010_q, in_i_data_12_tpl};

    // element_extension17(BITJOIN,49)
    assign element_extension17_q = {c_i7_010_q, in_i_data_11_tpl};

    // element_extension15(BITJOIN,48)
    assign element_extension15_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension13(BITJOIN,47)
    assign element_extension13_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension11(BITJOIN,46)
    assign element_extension11_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension9(BITJOIN,65)
    assign element_extension9_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension6(BITJOIN,64)
    assign element_extension6_q = {c_i7_010_q, in_i_data_5_tpl};

    // c_i24_05(CONSTANT,23)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,56)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,45)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i16_045_q, element_extension43_q, element_extension41_q, element_extension39_q, element_extension37_q, element_extension35_q, element_extension33_q, in_i_data_19_tpl, element_extension31_q, element_extension29_q, element_extension27_q, element_extension25_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, in_i_data_6_tpl, c_i24_05_q, element_extension6_q, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0(EXTIFACE,66)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(512)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,100)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_stall;

    // ip_dsdk_adapt_bitselect97(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[488:488];

    // adapt_scalar_trunc98(ROUND,21)
    assign adapt_scalar_trunc98_in = ip_dsdk_adapt_bitselect97_b;
    assign adapt_scalar_trunc98_q = adapt_scalar_trunc98_in[0:0];

    // ip_dsdk_adapt_bitselect95(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[480:480];

    // adapt_scalar_trunc96(ROUND,20)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[472:472];

    // adapt_scalar_trunc94(ROUND,19)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[464:464];

    // adapt_scalar_trunc92(ROUND,18)
    assign adapt_scalar_trunc92_in = ip_dsdk_adapt_bitselect91_b;
    assign adapt_scalar_trunc92_q = adapt_scalar_trunc92_in[0:0];

    // ip_dsdk_adapt_bitselect89(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[456:456];

    // adapt_scalar_trunc90(ROUND,17)
    assign adapt_scalar_trunc90_in = ip_dsdk_adapt_bitselect89_b;
    assign adapt_scalar_trunc90_q = adapt_scalar_trunc90_in[0:0];

    // ip_dsdk_adapt_bitselect87(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[448:448];

    // adapt_scalar_trunc88(ROUND,16)
    assign adapt_scalar_trunc88_in = ip_dsdk_adapt_bitselect87_b;
    assign adapt_scalar_trunc88_q = adapt_scalar_trunc88_in[0:0];

    // ip_dsdk_adapt_bitselect85(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[447:416];

    // ip_dsdk_adapt_bitselect83(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[408:408];

    // adapt_scalar_trunc84(ROUND,15)
    assign adapt_scalar_trunc84_in = ip_dsdk_adapt_bitselect83_b;
    assign adapt_scalar_trunc84_q = adapt_scalar_trunc84_in[0:0];

    // ip_dsdk_adapt_bitselect81(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[400:400];

    // adapt_scalar_trunc82(ROUND,14)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[392:392];

    // adapt_scalar_trunc80(ROUND,13)
    assign adapt_scalar_trunc80_in = ip_dsdk_adapt_bitselect79_b;
    assign adapt_scalar_trunc80_q = adapt_scalar_trunc80_in[0:0];

    // ip_dsdk_adapt_bitselect77(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[384:384];

    // adapt_scalar_trunc78(ROUND,12)
    assign adapt_scalar_trunc78_in = ip_dsdk_adapt_bitselect77_b;
    assign adapt_scalar_trunc78_q = adapt_scalar_trunc78_in[0:0];

    // ip_dsdk_adapt_bitselect75(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[376:376];

    // adapt_scalar_trunc76(ROUND,11)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[368:368];

    // adapt_scalar_trunc74(ROUND,10)
    assign adapt_scalar_trunc74_in = ip_dsdk_adapt_bitselect73_b;
    assign adapt_scalar_trunc74_q = adapt_scalar_trunc74_in[0:0];

    // ip_dsdk_adapt_bitselect71(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[360:360];

    // adapt_scalar_trunc72(ROUND,9)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // ip_dsdk_adapt_bitselect69(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[352:352];

    // adapt_scalar_trunc70(ROUND,8)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[344:344];

    // adapt_scalar_trunc68(ROUND,7)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[336:336];

    // adapt_scalar_trunc66(ROUND,6)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[328:328];

    // adapt_scalar_trunc64(ROUND,5)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[320:320];

    // adapt_scalar_trunc62(ROUND,4)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[319:288];

    // ip_dsdk_adapt_bitselect57(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[256:256];

    // adapt_scalar_trunc58(ROUND,3)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[255:192];

    // ip_dsdk_adapt_bitselect53(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[191:128];

    // ip_dsdk_adapt_bitselect51(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[127:64];

    // ip_dsdk_adapt_bitselect49(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[63:32];

    // ip_dsdk_adapt_bitselect47(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_data[0:0];

    // adapt_scalar_trunc48(ROUND,2)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,102)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc58_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc68_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc70_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc72_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc74_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc76_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc78_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc80_q;
    assign out_o_data_17_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc84_q;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect85_b;
    assign out_o_data_20_tpl = adapt_scalar_trunc88_q;
    assign out_o_data_21_tpl = adapt_scalar_trunc90_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc92_q;
    assign out_o_data_23_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc98_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body10_kernel_3mms_c0_exit319_kernel_3mm0_o_valid;

endmodule
