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

// SystemVerilog created from bb_atax_B6_stall_region
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6_stall_region (
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [0:0] out_feedback_almost_empty_out_13,
    output wire [0:0] out_feedback_data_out_13,
    output wire [0:0] out_feedback_empty_out_13,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [0:0] in_c0_exe616515,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [31:0] in_c0_exe116012,
    input wire [0:0] in_c0_exe216113,
    input wire [63:0] in_c0_exe516414,
    input wire [0:0] in_c0_exe716616,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe1126,
    output wire [0:0] out_c0_exe716616,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_almost_empty_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_data_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_empty_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl;
    wire [0:0] redist0_stall_entry_o7_33_fifo_i_valid;
    wire redist0_stall_entry_o7_33_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_i_stall;
    wire redist0_stall_entry_o7_33_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_i_data;
    wire [0:0] redist0_stall_entry_o7_33_fifo_i_empty;
    wire redist0_stall_entry_o7_33_fifo_i_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_i_almost_empty;
    wire redist0_stall_entry_o7_33_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_o_valid;
    wire redist0_stall_entry_o7_33_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_o_stall;
    wire redist0_stall_entry_o7_33_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_o_data;
    wire [0:0] redist0_stall_entry_o7_33_fifo_o_empty;
    wire redist0_stall_entry_o7_33_fifo_o_empty_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o7_33_fifo_o_almost_empty;
    wire redist0_stall_entry_o7_33_fifo_o_almost_empty_bitsignaltemp;
    wire [97:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_b;
    wire [0:0] bubble_join_redist0_stall_entry_o7_33_fifo_q;
    wire [0:0] bubble_select_redist0_stall_entry_o7_33_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V6;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V7;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V8;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_temp_back_stall;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [31:0] stall_entry_o4_reg1_q;
    reg [31:0] stall_entry_o4_reg0_q;
    reg [0:0] stall_entry_o5_reg1_q;
    reg [0:0] stall_entry_o5_reg0_q;
    reg [63:0] stall_entry_o6_reg1_q;
    reg [63:0] stall_entry_o6_reg0_q;
    reg [0:0] stall_entry_o7_reg1_q;
    reg [0:0] stall_entry_o7_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg0_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_i_stall_reg0_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_i_stall_reg1_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_valid_reg1_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_valid_reg0_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_data_reg1_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_data_reg0_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_empty_reg1_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_empty_reg0_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_almost_empty_reg1_q;
    reg [0:0] redist0_stall_entry_o7_33_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // stall_entry_o7_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_c0_exe716616);
        end
    end

    // stall_entry_o7_reg1(REG,96)
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

    // stall_entry_o6_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_c0_exe516414);
        end
    end

    // stall_entry_o6_reg1(REG,94)
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

    // stall_entry_o5_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_c0_exe216113);
        end
    end

    // stall_entry_o5_reg1(REG,92)
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

    // stall_entry_o4_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_c0_exe116012);
        end
    end

    // stall_entry_o4_reg1(REG,90)
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

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg0(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg1(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // redist0_stall_entry_o7_33_fifo_i_stall_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_backStall);
        end
    end

    // redist0_stall_entry_o7_33_fifo_i_stall_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_i_stall_reg1_q <= $unsigned(redist0_stall_entry_o7_33_fifo_i_stall_reg0_q);
        end
    end

    // redist0_stall_entry_o7_33_fifo(STALLFIFO,26)
    assign redist0_stall_entry_o7_33_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V1;
    assign redist0_stall_entry_o7_33_fifo_i_stall = redist0_stall_entry_o7_33_fifo_i_stall_reg1_q;
    assign redist0_stall_entry_o7_33_fifo_i_data = bubble_select_stall_entry_e;
    assign redist0_stall_entry_o7_33_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V4;
    assign redist0_stall_entry_o7_33_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V7;
    assign redist0_stall_entry_o7_33_fifo_i_valid_bitsignaltemp = redist0_stall_entry_o7_33_fifo_i_valid[0];
    assign redist0_stall_entry_o7_33_fifo_i_stall_bitsignaltemp = redist0_stall_entry_o7_33_fifo_i_stall[0];
    assign redist0_stall_entry_o7_33_fifo_o_valid[0] = redist0_stall_entry_o7_33_fifo_o_valid_bitsignaltemp;
    assign redist0_stall_entry_o7_33_fifo_o_stall[0] = redist0_stall_entry_o7_33_fifo_o_stall_bitsignaltemp;
    assign redist0_stall_entry_o7_33_fifo_o_empty[0] = redist0_stall_entry_o7_33_fifo_o_empty_bitsignaltemp;
    assign redist0_stall_entry_o7_33_fifo_o_almost_empty[0] = redist0_stall_entry_o7_33_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(51),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_stall_entry_o7_33_fifo (
        .i_valid(redist0_stall_entry_o7_33_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_stall_entry_o7_33_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_stall_entry_e),
        .o_valid(redist0_stall_entry_o7_33_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_stall_entry_o7_33_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_stall_entry_o7_33_fifo_o_data),
        .o_empty(redist0_stall_entry_o7_33_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(redist0_stall_entry_o7_33_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_stall_entry_o7_33_fifo_o_almost_empty_reg0(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_almost_empty_reg0_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_almost_empty);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_almost_empty_reg1(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_almost_empty_reg1_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_empty_reg0(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_empty_reg0_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_empty);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_empty_reg1(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_empty_reg1_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_empty_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg0(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg1(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_valid_reg0(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_valid_reg0_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_valid);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_valid_reg1(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_valid_reg1_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x(STALLENABLE,66)
    // Sync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_temp_back_stall = in_stall_in;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_fast_read = ~ ((redist0_stall_entry_o7_33_fifo_o_almost_empty_reg1_q | i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_slow_read = ~ ((redist0_stall_entry_o7_33_fifo_o_empty_reg1_q | i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out_reg1_q));
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_backStall = ~ (merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_forced_read);
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_no_space_for_result = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_forced_read;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V1 = $unsigned(1'b0);
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_no_space_for_result[0];
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg0(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg1(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,89)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,88)
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

    // stall_entry_frontEmpty_reg0(REG,87)
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

    // stall_entry_frontEmpty_reg1(REG,86)
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

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg0(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg0(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg1(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax4(STALLENABLE,40)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg0(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_backStall);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg1(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg0_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax4(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_almost_empty_out@17
    // out out_data_out@17
    // out out_empty_out@17
    // out out_feedback_almost_empty_out_13@20000000
    // out out_feedback_data_out_13@20000000
    // out out_feedback_empty_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    atax_i_llvm_fpga_push_i1_memdep_phi2_push13_0 thei_llvm_fpga_push_i1_memdep_phi2_push13_atax4 (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V8),
        .in_data_in(bubble_select_stall_entry_c),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V5),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_stall_in(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_join_stall_entry_V2),
        .out_almost_empty_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_empty_out),
        .out_feedback_almost_empty_out_13(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_almost_empty_out_13),
        .out_feedback_data_out_13(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_data_out_13),
        .out_feedback_empty_out_13(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_empty_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_entry_frontValid_reg0(REG,85)
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

    // stall_entry_frontValid_reg1(REG,84)
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

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,65)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_stall | redist0_stall_entry_o7_33_fifo_o_stall | i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_stall_out;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V3 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V6 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V4 = merged_in_SE_bubble_join_stall_entry_V3;
    assign merged_in_SE_bubble_join_stall_entry_V7 = merged_in_SE_bubble_join_stall_entry_V6;
    assign merged_in_SE_bubble_join_stall_entry_V2 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V3;
    assign merged_in_SE_bubble_join_stall_entry_V8 = merged_in_SE_bubble_join_stall_entry_V6;

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x(BLACKBOX,24)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@33
    // out out_empty_out@33
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_c0_exit125_0_tpl@33
    // out out_c0_exit125_1_tpl@33
    atax_i_sfc_s_c0_in_for_cond_cleanup18_s_c0_enter121_atax2 thei_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V6),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V3),
        .in_flush(in_flush),
        .in_i_stall(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_join_stall_entry_V0),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_c0_eni2120_0_tpl(GND_q),
        .in_c0_eni2120_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni2120_2_tpl(bubble_select_stall_entry_d),
        .out_almost_empty_out(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_empty_out),
        .out_memdep_atax_avm_address(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_o_valid),
        .out_c0_exit125_0_tpl(),
        .out_c0_exit125_1_tpl(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_atax_avm_address = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_address;
    assign out_memdep_atax_avm_enable = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_enable;
    assign out_memdep_atax_avm_read = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_read;
    assign out_memdep_atax_avm_write = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_write;
    assign out_memdep_atax_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_writedata;
    assign out_memdep_atax_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_byteenable;
    assign out_memdep_atax_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_memdep_atax_avm_burstcount;

    // feedback_almost_empty_out_13_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_13 = i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_almost_empty_out_13;

    // feedback_data_out_13_sync(GPOUT,8)
    assign out_feedback_data_out_13 = i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_data_out_13;

    // feedback_empty_out_13_sync(GPOUT,9)
    assign out_feedback_empty_out_13 = i_llvm_fpga_push_i1_memdep_phi2_push13_atax4_out_feedback_empty_out_13;

    // stall_entry_frontStall_reg0(REG,82)
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

    // stall_entry_frontStall_reg1(REG,83)
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

    // sync_out(GPOUT,21)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg0(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg1(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg2(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg3(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg4(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg5(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg6(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg5_q);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_data_reg0(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_data_reg0_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_data);
        end
    end

    // redist0_stall_entry_o7_33_fifo_o_data_reg1(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_stall_entry_o7_33_fifo_o_data_reg1_q <= $unsigned(redist0_stall_entry_o7_33_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_redist0_stall_entry_o7_33_fifo(BITJOIN,37)
    assign bubble_join_redist0_stall_entry_o7_33_fifo_q = redist0_stall_entry_o7_33_fifo_o_data_reg1_q;

    // bubble_select_redist0_stall_entry_o7_33_fifo(BITSELECT,38)
    assign bubble_select_redist0_stall_entry_o7_33_fifo_b = $unsigned(bubble_join_redist0_stall_entry_o7_33_fifo_q[0:0]);

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_out_c0_exit125_1_tpl_reg1_q;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,23)@33
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V2;
    assign out_c0_exe1126 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_b;
    assign out_c0_exe716616 = bubble_select_redist0_stall_entry_o7_33_fifo_b;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_cond_cleanup18_ataxs_c0_enter121_atax2_aunroll_x_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,118)
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
