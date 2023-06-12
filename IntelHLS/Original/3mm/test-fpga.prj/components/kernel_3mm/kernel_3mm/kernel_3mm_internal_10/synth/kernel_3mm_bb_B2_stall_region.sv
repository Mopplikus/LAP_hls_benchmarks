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

// SystemVerilog created from bb_kernel_3mm_B2_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B2_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_forked112,
    input wire [0:0] in_memdep_phi2_pop18126,
    input wire [0:0] in_memdep_phi3_pop19133,
    input wire [0:0] in_memdep_phi5_pop20140,
    input wire [0:0] in_memdep_phi_pop17119,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1271,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl;
    wire [4:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [42:0] bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_m;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_temp_back_stall;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] stall_entry_o4_reg1_q;
    reg [0:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [0:0] stall_entry_o6_reg1_q;
    reg [0:0] stall_entry_o6_reg0_q;
    reg [0:0] stall_entry_o7_reg1_q;
    reg [0:0] stall_entry_o7_reg0_q;
    reg [0:0] stall_entry_o8_reg1_q;
    reg [0:0] stall_entry_o8_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_frontAlmostEmpty_reg0(REG,45)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,44)
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

    // stall_entry_frontEmpty_reg0(REG,43)
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

    // stall_entry_frontEmpty_reg1(REG,42)
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

    // stall_entry_o8_reg0(REG,55)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_memdep_phi_pop17119);
        end
    end

    // stall_entry_o8_reg1(REG,54)
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

    // stall_entry_o7_reg0(REG,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_memdep_phi5_pop20140);
        end
    end

    // stall_entry_o7_reg1(REG,52)
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

    // stall_entry_o6_reg0(REG,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_memdep_phi3_pop19133);
        end
    end

    // stall_entry_o6_reg1(REG,50)
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

    // stall_entry_o5_reg0(REG,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_memdep_phi2_pop18126);
        end
    end

    // stall_entry_o5_reg1(REG,48)
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

    // stall_entry_o4_reg0(REG,47)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_forked112);
        end
    end

    // stall_entry_o4_reg1(REG,46)
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

    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg0(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg1(REG,58)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg0(REG,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg1(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg0(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg1(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x(STALLENABLE,37)
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V0 = i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V1 = i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V2 = i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg0(REG,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg1(REG,57)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_c0_exit270_0_tpl@35
    // out out_c0_exit270_1_tpl@35
    // out out_c0_exit270_2_tpl@35
    // out out_c0_exit270_3_tpl@35
    // out out_c0_exit270_4_tpl@35
    // out out_c0_exit270_5_tpl@35
    // out out_c0_exit270_6_tpl@35
    // out out_c0_exit270_7_tpl@35
    // out out_c0_exit270_8_tpl@35
    // out out_c0_exit270_9_tpl@35
    // out out_c0_exit270_10_tpl@35
    // out out_c0_exit270_11_tpl@35
    // out out_c0_exit270_12_tpl@35
    // out out_c0_exit270_13_tpl@35
    kernel_3mm_i_sfc_s_c0_in_for_cond8_prehe0000ter26647_kernel_3mm6 thei_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_c0_eni6_0_tpl(GND_q),
        .in_c0_eni6_1_tpl(GND_q),
        .in_c0_eni6_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni6_3_tpl(bubble_select_stall_entry_f),
        .in_c0_eni6_4_tpl(bubble_select_stall_entry_c),
        .in_c0_eni6_5_tpl(bubble_select_stall_entry_d),
        .in_c0_eni6_6_tpl(bubble_select_stall_entry_e),
        .out_almost_empty_out(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_valid),
        .out_c0_exit270_0_tpl(),
        .out_c0_exit270_1_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl),
        .out_c0_exit270_2_tpl(),
        .out_c0_exit270_3_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl),
        .out_c0_exit270_4_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl),
        .out_c0_exit270_5_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl),
        .out_c0_exit270_6_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl),
        .out_c0_exit270_7_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl),
        .out_c0_exit270_8_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl),
        .out_c0_exit270_9_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl),
        .out_c0_exit270_10_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl),
        .out_c0_exit270_11_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl),
        .out_c0_exit270_12_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl),
        .out_c0_exit270_13_tpl(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // stall_entry_frontValid_reg0(REG,41)
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

    // stall_entry_frontValid_reg1(REG,40)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,36)
    assign merged_in_SE_bubble_join_stall_entry_backStall = i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // stall_entry_frontStall_reg0(REG,38)
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

    // stall_entry_frontStall_reg1(REG,39)
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

    // sync_out(GPOUT,11)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg0(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg1(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg0(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg1(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg0(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg1(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg0(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg1(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg0(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg0(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg1(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg0(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg1(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg0(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg1(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg0(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg1(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg0(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg1(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg0(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg1(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q = {i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_13_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_12_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_11_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_10_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_9_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_8_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_7_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_6_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_5_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_4_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_3_tpl_reg1_q, i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_out_c0_exit270_1_tpl_reg1_q};

    // bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[37:37]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[38:38]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[39:39]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[40:40]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[41:41]);
    assign bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_q[42:42]);

    // dupName_0_sync_out_x(GPOUT,13)@35
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V2;
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_l;
    assign out_c0_exe1271 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_b;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_m;
    assign out_c0_exe3 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_d;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_i;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm6_aunroll_x_V0;

    // rst_sync(RESETSYNC,88)
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
