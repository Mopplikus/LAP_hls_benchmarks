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

// SystemVerilog created from bb_getTanh_B3_stall_region
// Created for function/kernel getTanh
// SystemVerilog created on Tue Apr 25 16:39:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_bb_B3_stall_region (
    input wire [31:0] in_unnamed_getTanh5_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh5_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_getTanh6_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh6_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_burstcount,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl;
    wire [1:0] bubble_join_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_c;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg0(REG,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg1(REG,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg1(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg0(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg1(REG,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x(STALLENABLE,38)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V0 = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V1 = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V2 = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg0(REG,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg1(REG,48)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,43)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,42)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,41)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,37)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x(BLACKBOX,22)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@66
    // out out_empty_out@66
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_memdep_getTanh_avm_address@20000000
    // out out_memdep_getTanh_avm_burstcount@20000000
    // out out_memdep_getTanh_avm_byteenable@20000000
    // out out_memdep_getTanh_avm_enable@20000000
    // out out_memdep_getTanh_avm_read@20000000
    // out out_memdep_getTanh_avm_write@20000000
    // out out_memdep_getTanh_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_profile_loop_o_valid@66
    // out out_unnamed_getTanh5_getTanh_avm_address@20000000
    // out out_unnamed_getTanh5_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh5_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh5_getTanh_avm_read@20000000
    // out out_unnamed_getTanh5_getTanh_avm_write@20000000
    // out out_unnamed_getTanh5_getTanh_avm_writedata@20000000
    // out out_unnamed_getTanh6_getTanh_avm_address@20000000
    // out out_unnamed_getTanh6_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh6_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh6_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh6_getTanh_avm_read@20000000
    // out out_unnamed_getTanh6_getTanh_avm_write@20000000
    // out out_unnamed_getTanh6_getTanh_avm_writedata@20000000
    // out out_c0_exit13_0_tpl@66
    // out out_c0_exit13_1_tpl@66
    // out out_c0_exit13_2_tpl@66
    getTanh_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1 thei_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .in_unnamed_getTanh5_getTanh_avm_readdata(in_unnamed_getTanh5_getTanh_avm_readdata),
        .in_unnamed_getTanh5_getTanh_avm_readdatavalid(in_unnamed_getTanh5_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh5_getTanh_avm_waitrequest(in_unnamed_getTanh5_getTanh_avm_waitrequest),
        .in_unnamed_getTanh5_getTanh_avm_writeack(in_unnamed_getTanh5_getTanh_avm_writeack),
        .in_unnamed_getTanh6_getTanh_avm_readdata(in_unnamed_getTanh6_getTanh_avm_readdata),
        .in_unnamed_getTanh6_getTanh_avm_readdatavalid(in_unnamed_getTanh6_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh6_getTanh_avm_waitrequest(in_unnamed_getTanh6_getTanh_avm_waitrequest),
        .in_unnamed_getTanh6_getTanh_avm_writeack(in_unnamed_getTanh6_getTanh_avm_writeack),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_memdep_getTanh_avm_address(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_getTanh5_getTanh_avm_address(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_address),
        .out_unnamed_getTanh5_getTanh_avm_burstcount(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_burstcount),
        .out_unnamed_getTanh5_getTanh_avm_byteenable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_byteenable),
        .out_unnamed_getTanh5_getTanh_avm_enable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_enable),
        .out_unnamed_getTanh5_getTanh_avm_read(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_read),
        .out_unnamed_getTanh5_getTanh_avm_write(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_write),
        .out_unnamed_getTanh5_getTanh_avm_writedata(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_writedata),
        .out_unnamed_getTanh6_getTanh_avm_address(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_address),
        .out_unnamed_getTanh6_getTanh_avm_burstcount(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_burstcount),
        .out_unnamed_getTanh6_getTanh_avm_byteenable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_byteenable),
        .out_unnamed_getTanh6_getTanh_avm_enable(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_enable),
        .out_unnamed_getTanh6_getTanh_avm_read(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_read),
        .out_unnamed_getTanh6_getTanh_avm_write(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_write),
        .out_unnamed_getTanh6_getTanh_avm_writedata(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_writedata),
        .out_c0_exit13_0_tpl(),
        .out_c0_exit13_1_tpl(),
        .out_c0_exit13_2_tpl(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_getTanh5_getTanh_avm_address = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_address;
    assign out_unnamed_getTanh5_getTanh_avm_enable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_enable;
    assign out_unnamed_getTanh5_getTanh_avm_read = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_read;
    assign out_unnamed_getTanh5_getTanh_avm_write = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_write;
    assign out_unnamed_getTanh5_getTanh_avm_writedata = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_writedata;
    assign out_unnamed_getTanh5_getTanh_avm_byteenable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_byteenable;
    assign out_unnamed_getTanh5_getTanh_avm_burstcount = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh5_getTanh_avm_burstcount;

    // regfree_osync(GPOUT,11)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_intel_reserved_ffwd_0_0;

    // stall_entry_frontStall_reg0(REG,39)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,40)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,15)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_ext_sig_sync_out_x(GPOUT,18)
    assign out_unnamed_getTanh6_getTanh_avm_address = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_address;
    assign out_unnamed_getTanh6_getTanh_avm_enable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_enable;
    assign out_unnamed_getTanh6_getTanh_avm_read = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_read;
    assign out_unnamed_getTanh6_getTanh_avm_write = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_write;
    assign out_unnamed_getTanh6_getTanh_avm_writedata = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_writedata;
    assign out_unnamed_getTanh6_getTanh_avm_byteenable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_byteenable;
    assign out_unnamed_getTanh6_getTanh_avm_burstcount = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_unnamed_getTanh6_getTanh_avm_burstcount;

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg1(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg1(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_q = {i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_c0_exit13_2_tpl_reg1_q, i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,19)@66
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V2;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_c;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V1;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_b;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,21)
    assign out_memdep_getTanh_avm_address = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_address;
    assign out_memdep_getTanh_avm_enable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_enable;
    assign out_memdep_getTanh_avm_read = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_read;
    assign out_memdep_getTanh_avm_write = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_write;
    assign out_memdep_getTanh_avm_writedata = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_writedata;
    assign out_memdep_getTanh_avm_byteenable = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_byteenable;
    assign out_memdep_getTanh_avm_burstcount = i_sfc_s_c0_in_for_body_gettanhs_c0_enter112_gettanh1_aunroll_x_out_memdep_getTanh_avm_burstcount;

    // rst_sync(RESETSYNC,59)
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
