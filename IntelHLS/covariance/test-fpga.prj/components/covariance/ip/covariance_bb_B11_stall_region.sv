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

// SystemVerilog created from bb_covariance_B11_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B11_stall_region (
    input wire [31:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1042230,
    input wire [0:0] in_c0_exe1142331,
    input wire [0:0] in_c0_exe1242432,
    input wire [63:0] in_c0_exe141320,
    input wire [63:0] in_c0_exe241421,
    input wire [0:0] in_c0_exe441624,
    input wire [31:0] in_c0_exe541725,
    input wire [31:0] in_c0_exe842028,
    input wire [31:0] in_c0_exe942129,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1242432,
    output wire [0:0] out_c0_exe441624,
    output wire [31:0] out_c0_exe842028,
    output wire [0:0] out_c1_exe1369,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_c1_exit368_1_tpl;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_o_data;
    wire [227:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_join_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_b;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_c0_exe942129, in_c0_exe842028, in_c0_exe541725, in_c0_exe441624, in_c0_exe241421, in_c0_exe141320, in_c0_exe1242432, in_c0_exe1142331, in_c0_exe1042230};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[227:196]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,24)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_d, bubble_select_stall_entry_i};

    // coalesced_delay_0_fifo(STALLFIFO,26)
    assign coalesced_delay_0_fifo_i_valid = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(9),
        .WIDTH(34),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c1_exit368_0_tpl@8
    // out out_c1_exit368_1_tpl@8
    covariance_i_sfc_s_c1_in_for_cond_cleanu0000enter365_covariance8 thei_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_c1_eni4_0_tpl(GND_q),
        .in_c1_eni4_1_tpl(bubble_select_stall_entry_b),
        .in_c1_eni4_2_tpl(bubble_select_stall_entry_c),
        .in_c1_eni4_3_tpl(bubble_select_stall_entry_d),
        .in_c1_eni4_4_tpl(bubble_select_stall_entry_j),
        .out_o_stall(i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_valid),
        .out_c1_exit368_0_tpl(),
        .out_c1_exit368_1_tpl(i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_c1_exit368_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,40)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_o_valid;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_unnamed_covariance4_covariance_avm_address@20000000
    // out out_unnamed_covariance4_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance4_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance4_covariance_avm_enable@20000000
    // out out_unnamed_covariance4_covariance_avm_read@20000000
    // out out_unnamed_covariance4_covariance_avm_write@20000000
    // out out_unnamed_covariance4_covariance_avm_writedata@20000000
    // out out_c0_exit363_0_tpl@8
    covariance_i_sfc_s_c0_in_for_cond_cleanu0000enter359_covariance3 thei_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_c0_eni3358_0_tpl(GND_q),
        .in_c0_eni3358_1_tpl(bubble_select_stall_entry_h),
        .in_c0_eni3358_2_tpl(bubble_select_stall_entry_f),
        .in_c0_eni3358_3_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_o_valid),
        .out_unnamed_covariance4_covariance_avm_address(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_writedata),
        .out_c0_exit363_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_covariance4_covariance_avm_address = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_address;
    assign out_unnamed_covariance4_covariance_avm_enable = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_enable;
    assign out_unnamed_covariance4_covariance_avm_read = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_read;
    assign out_unnamed_covariance4_covariance_avm_write = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_write;
    assign out_unnamed_covariance4_covariance_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_writedata;
    assign out_unnamed_covariance4_covariance_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_byteenable;
    assign out_unnamed_covariance4_covariance_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup35_covariances_c0_enter359_covariance3_aunroll_x_out_unnamed_covariance4_covariance_avm_burstcount;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_q = i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_out_c1_exit368_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,38)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,39)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,25)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // dupName_0_sync_out_x(GPOUT,17)@8
    assign out_c0_exe1242432 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe441624 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe842028 = sel_for_coalesced_delay_0_b;
    assign out_c1_exe1369 = bubble_select_i_sfc_s_c1_in_for_cond_cleanup35_covariances_c1_enter365_covariance8_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // rst_sync(RESETSYNC,70)
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
