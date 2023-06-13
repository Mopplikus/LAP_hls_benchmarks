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

// SystemVerilog created from bb_covariance_B2_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B2_stall_region (
    output wire [31:0] out_c0_exe52638,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_wgl_8_enter_exit_valid_in,
    input wire [0:0] in_wgl_8_enter_exit_stall_in,
    output wire [0:0] out_wgl_8_enter_exit_valid_out,
    output wire [0:0] out_wgl_8_enter_exit_stall_out,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe52638,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_valid_out;
    reg [31:0] redist0_stall_entry_o4_1_0_q;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_V0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and0;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and1;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_V0;
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
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V0;


    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_backStall = i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_i_llvm_fpga_ffwd_dest_p1025s_0000c_mm_hosts_cov9222_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist0_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
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

    // SE_redist0_stall_entry_o4_1_0(STALLENABLE,47)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_1_0_V0 = SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_backStall & SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_1_0_backEN = ~ (SE_redist0_stall_entry_o4_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_1_0_v_s_0 = SE_redist0_stall_entry_o4_1_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_1_0_backStall = ~ (SE_redist0_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 & SE_redist0_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0(BITJOIN,27)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0(BITSELECT,28)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    covariance_i_llvm_fpga_ffwd_source_p10250000nnamed_4_covariance0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_b),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_cov9222_covariance0_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,35)
    assign bubble_join_stall_entry_q = in_c0_exe52638;

    // bubble_select_stall_entry(BITSELECT,36)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3(BLACKBOX,10)@0
    // in in_i_stall@20000000
    // out out_o_data@1
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_wgl_8_enter_exit_stall_out@20000000
    // out out_wgl_8_enter_exit_valid_out@20000000
    covariance_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3 (
        .in_i_data(bubble_select_stall_entry_b),
        .in_i_stall(SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_wgl_8_enter_exit_stall_in(in_wgl_8_enter_exit_stall_in),
        .in_wgl_8_enter_exit_valid_in(in_wgl_8_enter_exit_valid_in),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_valid),
        .out_wgl_8_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_stall_out),
        .out_wgl_8_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_V0 = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and0 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_valid;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and1 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_valid_out & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and0;
    assign SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_wireValid = SE_redist0_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_and1;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3(BITJOIN,31)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3(BITSELECT,32)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_q[31:0]);

    // redist0_stall_entry_o4_1_0(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_c0_exe52638 = redist0_stall_entry_o4_1_0_q;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_V0;

    // ext_sig_sync_out(GPOUT,7)
    assign out_wgl_8_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_valid_out;
    assign out_wgl_8_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_covariance3_out_wgl_8_enter_exit_stall_out;

    // regfree_osync(GPOUT,18)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_covariance4_covariance2_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
