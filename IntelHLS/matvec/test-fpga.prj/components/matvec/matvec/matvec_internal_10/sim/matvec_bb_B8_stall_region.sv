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

// SystemVerilog created from bb_matvec_B8_stall_region
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B8_stall_region (
    input wire [31:0] in_memdep_3_matvec_avm_readdata,
    input wire [0:0] in_memdep_3_matvec_avm_writeack,
    input wire [0:0] in_memdep_3_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_3_matvec_avm_readdatavalid,
    output wire [31:0] out_memdep_3_matvec_avm_address,
    output wire [0:0] out_memdep_3_matvec_avm_enable,
    output wire [0:0] out_memdep_3_matvec_avm_read,
    output wire [0:0] out_memdep_3_matvec_avm_write,
    output wire [31:0] out_memdep_3_matvec_avm_writedata,
    output wire [3:0] out_memdep_3_matvec_avm_byteenable,
    output wire [0:0] out_memdep_3_matvec_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe21203,
    input wire [31:0] in_c0_exe31214,
    input wire [0:0] in_c0_exe51235,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe51235,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_matvec_Out_local_pmem_q;
    wire [1:0] i_arrayidx406_matvec0_vt_const_1_q;
    wire [63:0] i_arrayidx406_matvec0_vt_join_q;
    wire [61:0] i_arrayidx406_matvec0_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_3_matvec1_out_o_valid;
    wire [7:0] i_arrayidx406_matvec0_add_x_a;
    wire [7:0] i_arrayidx406_matvec0_add_x_b;
    logic [7:0] i_arrayidx406_matvec0_add_x_o;
    wire [7:0] i_arrayidx406_matvec0_add_x_q;
    wire [63:0] i_arrayidx406_matvec0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx406_matvec0_narrow_x_b;
    wire [6:0] i_arrayidx406_matvec0_shift_join_x_q;
    wire [6:0] i_arrayidx406_matvec0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx406_matvec0_dupName_2_trunc_sel_x_b;
    wire [56:0] i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_stall_entry_o6_1_0_q;
    wire [96:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_3_matvec1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_3_matvec1_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_3_matvec1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_3_matvec1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] SE_redist0_stall_entry_o6_1_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o6_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o6_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o6_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o6_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o6_1_0_V0;


    // bubble_join_stall_entry(BITJOIN,38)
    assign bubble_join_stall_entry_q = {in_c0_exe51235, in_c0_exe31214, in_c0_exe21203};

    // bubble_select_stall_entry(BITSELECT,39)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:96]);

    // SE_redist0_stall_entry_o6_1_0(STALLENABLE,54)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o6_1_0_V0 = SE_redist0_stall_entry_o6_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o6_1_0_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_3_matvec1_backStall & SE_redist0_stall_entry_o6_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o6_1_0_backEN = ~ (SE_redist0_stall_entry_o6_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o6_1_0_v_s_0 = SE_redist0_stall_entry_o6_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o6_1_0_backStall = ~ (SE_redist0_stall_entry_o6_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o6_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o6_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o6_1_0_R_v_0 <= SE_redist0_stall_entry_o6_1_0_R_v_0 & SE_redist0_stall_entry_o6_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o6_1_0_R_v_0 <= SE_redist0_stall_entry_o6_1_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_redist0_stall_entry_o6_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_mem_memdep_3_matvec1_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_mem_memdep_3_matvec1(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_3_matvec1_V0 = SE_out_i_llvm_fpga_mem_memdep_3_matvec1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_3_matvec1_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_3_matvec1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_3_matvec1_and0 = i_llvm_fpga_mem_memdep_3_matvec1_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_3_matvec1_wireValid = SE_redist0_stall_entry_o6_1_0_V0 & SE_out_i_llvm_fpga_mem_memdep_3_matvec1_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_matvec_Out_local_pmem(CONSTANT,3)
    assign c_matvec_Out_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx406_matvec0_upper_bits_x_merged_bit_select(BITSELECT,33)@0
    assign i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_Out_local_pmem_q[63:7];
    assign i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_Out_local_pmem_q[6:0];

    // i_arrayidx406_matvec0_dupName_0_trunc_sel_x(BITSELECT,31)@0
    assign i_arrayidx406_matvec0_dupName_0_trunc_sel_x_b = bubble_select_stall_entry_b[6:0];

    // i_arrayidx406_matvec0_narrow_x(BITSELECT,24)@0
    assign i_arrayidx406_matvec0_narrow_x_b = i_arrayidx406_matvec0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx406_matvec0_shift_join_x(BITJOIN,25)@0
    assign i_arrayidx406_matvec0_shift_join_x_q = {i_arrayidx406_matvec0_narrow_x_b, i_arrayidx406_matvec0_vt_const_1_q};

    // i_arrayidx406_matvec0_add_x(ADD,21)@0
    assign i_arrayidx406_matvec0_add_x_a = {1'b0, i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx406_matvec0_add_x_b = {1'b0, i_arrayidx406_matvec0_shift_join_x_q};
    assign i_arrayidx406_matvec0_add_x_o = $unsigned(i_arrayidx406_matvec0_add_x_a) + $unsigned(i_arrayidx406_matvec0_add_x_b);
    assign i_arrayidx406_matvec0_add_x_q = i_arrayidx406_matvec0_add_x_o[7:0];

    // i_arrayidx406_matvec0_dupName_2_trunc_sel_x(BITSELECT,32)@0
    assign i_arrayidx406_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx406_matvec0_add_x_q[6:0];

    // i_arrayidx406_matvec0_append_upper_bits_x(BITJOIN,22)@0
    assign i_arrayidx406_matvec0_append_upper_bits_x_q = {i_arrayidx406_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx406_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx406_matvec0_vt_select_63(BITSELECT,10)@0
    assign i_arrayidx406_matvec0_vt_select_63_b = i_arrayidx406_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx406_matvec0_vt_const_1(CONSTANT,8)
    assign i_arrayidx406_matvec0_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx406_matvec0_vt_join(BITJOIN,9)@0
    assign i_arrayidx406_matvec0_vt_join_q = {i_arrayidx406_matvec0_vt_select_63_b, i_arrayidx406_matvec0_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_matvec1(BLACKBOX,11)@0
    // in in_i_stall@20000000
    // out out_memdep_3_matvec_avm_address@20000000
    // out out_memdep_3_matvec_avm_burstcount@20000000
    // out out_memdep_3_matvec_avm_byteenable@20000000
    // out out_memdep_3_matvec_avm_enable@20000000
    // out out_memdep_3_matvec_avm_read@20000000
    // out out_memdep_3_matvec_avm_write@20000000
    // out out_memdep_3_matvec_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_o_writeack@1
    matvec_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_matvec1 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx406_matvec0_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_3_matvec1_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_i_writedata(bubble_select_stall_entry_c),
        .in_memdep_3_matvec_avm_readdata(in_memdep_3_matvec_avm_readdata),
        .in_memdep_3_matvec_avm_readdatavalid(in_memdep_3_matvec_avm_readdatavalid),
        .in_memdep_3_matvec_avm_waitrequest(in_memdep_3_matvec_avm_waitrequest),
        .in_memdep_3_matvec_avm_writeack(in_memdep_3_matvec_avm_writeack),
        .out_memdep_3_matvec_avm_address(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_address),
        .out_memdep_3_matvec_avm_burstcount(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_burstcount),
        .out_memdep_3_matvec_avm_byteenable(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_byteenable),
        .out_memdep_3_matvec_avm_enable(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_enable),
        .out_memdep_3_matvec_avm_read(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_read),
        .out_memdep_3_matvec_avm_write(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_write),
        .out_memdep_3_matvec_avm_writedata(i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_3_matvec1_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_3_matvec1_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_3_matvec_avm_address = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_address;
    assign out_memdep_3_matvec_avm_enable = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_enable;
    assign out_memdep_3_matvec_avm_read = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_read;
    assign out_memdep_3_matvec_avm_write = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_write;
    assign out_memdep_3_matvec_avm_writedata = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_writedata;
    assign out_memdep_3_matvec_avm_byteenable = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_byteenable;
    assign out_memdep_3_matvec_avm_burstcount = i_llvm_fpga_mem_memdep_3_matvec1_out_memdep_3_matvec_avm_burstcount;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // redist0_stall_entry_o6_1_0(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o6_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o6_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o6_1_0_q <= $unsigned(bubble_select_stall_entry_d);
        end
    end

    // dupName_0_sync_out_x(GPOUT,20)@1
    assign out_c0_exe51235 = redist0_stall_entry_o6_1_0_q;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_3_matvec1_V0;

endmodule
