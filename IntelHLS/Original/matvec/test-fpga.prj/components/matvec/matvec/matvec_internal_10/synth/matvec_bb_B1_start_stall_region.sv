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

// SystemVerilog created from bb_matvec_B1_start_stall_region
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_matvec_i_fifodata,
    input wire [0:0] in_iord_bl_call_matvec_i_fifovalid,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoready,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoalmost_full,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoready;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_backStall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V0;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V1;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V2;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_backStall;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V0;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V1;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V2;
    wire [0:0] merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg1_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg0_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg1_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg0_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg0(REG,48)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg0_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg1(REG,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg1_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg0_q);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg0(REG,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg0_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg1(REG,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg1_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg0_q);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg1(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x(STALLENABLE,36)
    assign merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V0 = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V1 = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty_reg1_q;
    assign merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V2 = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty_reg1_q;

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg0(REG,45)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_backStall);
        end
    end

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg1(REG,46)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg0(REG,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg1(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,44)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,43)
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

    // stall_entry_frontEmpty_reg0(REG,42)
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

    // stall_entry_frontEmpty_reg1(REG,41)
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

    // stall_entry_frontValid_reg0(REG,40)
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

    // stall_entry_frontValid_reg1(REG,39)
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

    // merged_in_SE_stall_entry(STALLENABLE,34)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_c0_exit_0_tpl@35
    // out out_c0_exit_1_tpl@35
    matvec_i_sfc_s_c0_in_wt_entry_s_c0_enter4_matvec0 thei_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_unnamed_matvec0_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg1(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg1(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg0(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg1(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x(STALLENABLE,35)
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_backStall = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_stall;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V0 = i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V1 = i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V2 = i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_out_almost_empty_out_reg1_q;

    // i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x(BLACKBOX,17)@35
    // in in_i_stall@20000000
    // out out_iord_bl_call_matvec_o_fifoalmost_full@20000000
    // out out_iord_bl_call_matvec_o_fifoready@20000000
    // out out_o_almost_empty@59
    // out out_o_empty@59
    // out out_o_stall@20000000
    // out out_o_valid@59
    // out out_o_data_0_tpl@59
    // out out_o_data_1_tpl@59
    // out out_o_data_2_tpl@59
    matvec_i_iord_bl_call_unnamed_matvec1_matvec0 thei_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x (
        .in_almost_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V2),
        .in_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V1),
        .in_i_stall(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_matvecs_c0_enter4_matvec0_aunroll_x_V0),
        .in_iord_bl_call_matvec_i_fifodata(in_iord_bl_call_matvec_i_fifodata),
        .in_iord_bl_call_matvec_i_fifovalid(in_iord_bl_call_matvec_i_fifovalid),
        .out_iord_bl_call_matvec_o_fifoalmost_full(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoalmost_full),
        .out_iord_bl_call_matvec_o_fifoready(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoready),
        .out_o_almost_empty(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_almost_empty),
        .out_o_empty(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_empty),
        .out_o_stall(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .out_o_data_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iord_bl_call_matvec_o_fifoready = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoready;
    assign out_iord_bl_call_matvec_o_fifoalmost_full = i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_out_iord_bl_call_matvec_o_fifoalmost_full;

    // stall_entry_frontStall_reg0(REG,37)
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

    // stall_entry_frontStall_reg1(REG,38)
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

    // sync_out(GPOUT,14)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,16)@59
    assign out_almost_empty_out = merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V2;
    assign out_empty_out = merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_out_i_iord_bl_call_matvec_unnamed_matvec1_matvec1_aunroll_x_V0;

    // rst_sync(RESETSYNC,61)
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
