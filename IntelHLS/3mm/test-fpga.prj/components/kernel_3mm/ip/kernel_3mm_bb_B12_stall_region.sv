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

// SystemVerilog created from bb_kernel_3mm_B12_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B12_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [63:0] in_arrayidx817248,
    input wire [0:0] in_empty_in,
    input wire [31:0] in_i_252_pop30241,
    input wire [31:0] in_i_252_pop3094_pop45245,
    input wire [63:0] in_idxprom78246,
    input wire [63:0] in_idxprom80247,
    input wire [0:0] in_memdep_phi7_pop21234,
    input wire [0:0] in_memdep_phi7_pop2181_pop31244,
    input wire [0:0] in_memdep_phi7_pop2182_pop43249,
    input wire [0:0] in_notcmp26250,
    input wire [0:0] in_notcmp31238,
    input wire [0:0] in_notcmp3192_pop44251,
    input wire [31:0] in_unnamed_kernel_3mm11,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe1601,
    output wire [31:0] out_c0_exe3603,
    output wire [0:0] out_c0_exe5605,
    output wire [0:0] out_c0_exe6606,
    output wire [63:0] out_c0_exe7607,
    output wire [0:0] out_c0_exe8608,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl;
    wire [293:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [100:0] bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_h;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [63:0] stall_entry_o4_reg1_q;
    reg [63:0] stall_entry_o4_reg0_q;
    reg [31:0] stall_entry_o5_reg1_q;
    reg [31:0] stall_entry_o5_reg0_q;
    reg [31:0] stall_entry_o6_reg1_q;
    reg [31:0] stall_entry_o6_reg0_q;
    reg [63:0] stall_entry_o7_reg1_q;
    reg [63:0] stall_entry_o7_reg0_q;
    reg [63:0] stall_entry_o8_reg1_q;
    reg [63:0] stall_entry_o8_reg0_q;
    reg [0:0] stall_entry_o9_reg1_q;
    reg [0:0] stall_entry_o9_reg0_q;
    reg [0:0] stall_entry_o10_reg1_q;
    reg [0:0] stall_entry_o10_reg0_q;
    reg [0:0] stall_entry_o11_reg1_q;
    reg [0:0] stall_entry_o11_reg0_q;
    reg [0:0] stall_entry_o12_reg1_q;
    reg [0:0] stall_entry_o12_reg0_q;
    reg [0:0] stall_entry_o13_reg1_q;
    reg [0:0] stall_entry_o13_reg0_q;
    reg [0:0] stall_entry_o14_reg1_q;
    reg [0:0] stall_entry_o14_reg0_q;
    reg [31:0] stall_entry_o15_reg1_q;
    reg [31:0] stall_entry_o15_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg0_q;
    reg [63:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg1_q;
    reg [63:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o15_reg0(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg0_q <= $unsigned(in_unnamed_kernel_3mm11);
        end
    end

    // stall_entry_o15_reg1(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o15_reg1_q <= $unsigned(stall_entry_o15_reg0_q);
        end
    end

    // stall_entry_o14_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg0_q <= $unsigned(in_notcmp3192_pop44251);
        end
    end

    // stall_entry_o14_reg1(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o14_reg1_q <= $unsigned(stall_entry_o14_reg0_q);
        end
    end

    // stall_entry_o13_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= $unsigned(in_notcmp31238);
        end
    end

    // stall_entry_o13_reg1(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg1_q <= $unsigned(stall_entry_o13_reg0_q);
        end
    end

    // stall_entry_o12_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= $unsigned(in_notcmp26250);
        end
    end

    // stall_entry_o12_reg1(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg1_q <= $unsigned(stall_entry_o12_reg0_q);
        end
    end

    // stall_entry_o11_reg0(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= $unsigned(in_memdep_phi7_pop2182_pop43249);
        end
    end

    // stall_entry_o11_reg1(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg1_q <= $unsigned(stall_entry_o11_reg0_q);
        end
    end

    // stall_entry_o10_reg0(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= $unsigned(in_memdep_phi7_pop2181_pop31244);
        end
    end

    // stall_entry_o10_reg1(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg1_q <= $unsigned(stall_entry_o10_reg0_q);
        end
    end

    // stall_entry_o9_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_memdep_phi7_pop21234);
        end
    end

    // stall_entry_o9_reg1(REG,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= $unsigned(stall_entry_o9_reg0_q);
        end
    end

    // stall_entry_o8_reg0(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_idxprom80247);
        end
    end

    // stall_entry_o8_reg1(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= $unsigned(stall_entry_o8_reg0_q);
        end
    end

    // stall_entry_o7_reg0(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_idxprom78246);
        end
    end

    // stall_entry_o7_reg1(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= $unsigned(stall_entry_o7_reg0_q);
        end
    end

    // stall_entry_o6_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_i_252_pop3094_pop45245);
        end
    end

    // stall_entry_o6_reg1(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= $unsigned(stall_entry_o6_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_i_252_pop30241);
        end
    end

    // stall_entry_o5_reg1(REG,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,52)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_arrayidx817248);
        end
    end

    // stall_entry_o4_reg1(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {stall_entry_o15_reg1_q, stall_entry_o14_reg1_q, stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:128]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[255:192]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[256:256]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[257:257]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[258:258]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[261:261]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[293:262]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg0(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg1(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg0(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg1(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x(STALLENABLE,42)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V0 = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V1 = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V2 = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg0(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,50)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,49)
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

    // stall_entry_frontEmpty_reg0(REG,48)
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

    // stall_entry_frontEmpty_reg1(REG,47)
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

    // stall_entry_frontValid_reg0(REG,46)
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

    // stall_entry_frontValid_reg1(REG,45)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,41)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@49
    // out out_empty_out@49
    // out out_o_stall@20000000
    // out out_o_valid@49
    // out out_profile_loop_o_valid@49
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit600_0_tpl@49
    // out out_c0_exit600_1_tpl@49
    // out out_c0_exit600_2_tpl@49
    // out out_c0_exit600_3_tpl@49
    // out out_c0_exit600_4_tpl@49
    // out out_c0_exit600_5_tpl@49
    // out out_c0_exit600_6_tpl@49
    // out out_c0_exit600_7_tpl@49
    // out out_c0_exit600_8_tpl@49
    // out out_c0_exit600_9_tpl@49
    // out out_c0_exit600_10_tpl@49
    // out out_c0_exit600_11_tpl@49
    // out out_c0_exit600_12_tpl@49
    kernel_3mm_i_sfc_s_c0_in_for_body84_s_c0_enter57453_kernel_3mm13 thei_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_c0_eni13573_0_tpl(GND_q),
        .in_c0_eni13573_1_tpl(GND_q),
        .in_c0_eni13573_2_tpl(bubble_select_stall_entry_e),
        .in_c0_eni13573_3_tpl(bubble_select_stall_entry_f),
        .in_c0_eni13573_4_tpl(bubble_select_stall_entry_m),
        .in_c0_eni13573_5_tpl(bubble_select_stall_entry_i),
        .in_c0_eni13573_6_tpl(bubble_select_stall_entry_l),
        .in_c0_eni13573_7_tpl(bubble_select_stall_entry_d),
        .in_c0_eni13573_8_tpl(bubble_select_stall_entry_b),
        .in_c0_eni13573_9_tpl(bubble_select_stall_entry_j),
        .in_c0_eni13573_10_tpl(bubble_select_stall_entry_g),
        .in_c0_eni13573_11_tpl(bubble_select_stall_entry_k),
        .in_c0_eni13573_12_tpl(bubble_select_stall_entry_c),
        .in_c0_eni13573_13_tpl(bubble_select_stall_entry_h),
        .out_almost_empty_out(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_c0_exit600_0_tpl(),
        .out_c0_exit600_1_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl),
        .out_c0_exit600_2_tpl(),
        .out_c0_exit600_3_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl),
        .out_c0_exit600_4_tpl(),
        .out_c0_exit600_5_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl),
        .out_c0_exit600_6_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl),
        .out_c0_exit600_7_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl),
        .out_c0_exit600_8_tpl(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl),
        .out_c0_exit600_9_tpl(),
        .out_c0_exit600_10_tpl(),
        .out_c0_exit600_11_tpl(),
        .out_c0_exit600_12_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // stall_entry_frontStall_reg0(REG,43)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,44)
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

    // dupName_0_ext_sig_sync_out_x(GPOUT,17)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg0(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg1(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg1(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg0(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg1(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg0(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg1(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg0(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg1(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q = {i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_8_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_7_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_6_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_5_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_3_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_c0_exit600_1_tpl_reg1_q, i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_out_profile_loop_o_valid_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[99:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_q[100:100]);

    // dupName_0_sync_out_x(GPOUT,18)@49
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V2;
    assign out_c0_exe1601 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_c;
    assign out_c0_exe3603 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_d;
    assign out_c0_exe5605 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_e;
    assign out_c0_exe6606 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_f;
    assign out_c0_exe7607 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_g;
    assign out_c0_exe8608 = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_h;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V1;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_b;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_body84_kernel_3mms_c0_enter57453_kernel_3mm13_aunroll_x_V0;

    // rst_sync(RESETSYNC,97)
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
