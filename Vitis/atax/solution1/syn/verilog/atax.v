// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="atax_atax,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.349000,HLS_SYN_LAT=693,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=12361,HLS_SYN_LUT=2411,HLS_VERSION=2022_2}" *)

module atax (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        A_address1,
        A_ce1,
        A_q1,
        x_address0,
        x_ce0,
        x_q0,
        x_address1,
        x_ce1,
        x_q1,
        y_address0,
        y_ce0,
        y_we0,
        y_d0,
        y_q0,
        y_address1,
        y_ce1,
        y_we1,
        y_d1,
        y_q1,
        tmp_address0,
        tmp_ce0,
        tmp_we0,
        tmp_d0,
        tmp_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [8:0] A_address1;
output   A_ce1;
input  [31:0] A_q1;
output  [4:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [4:0] x_address1;
output   x_ce1;
input  [31:0] x_q1;
output  [4:0] y_address0;
output   y_ce0;
output   y_we0;
output  [31:0] y_d0;
input  [31:0] y_q0;
output  [4:0] y_address1;
output   y_ce1;
output   y_we1;
output  [31:0] y_d1;
input  [31:0] y_q1;
output  [4:0] tmp_address0;
output   tmp_ce0;
output   tmp_we0;
output  [31:0] tmp_d0;
input  [31:0] tmp_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] x_address0;
reg x_ce0;
reg[4:0] x_address1;
reg x_ce1;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] x_load_reg_299;
wire    ap_CS_fsm_state2;
reg   [31:0] x_load_1_reg_304;
reg   [31:0] x_load_2_reg_319;
wire    ap_CS_fsm_state3;
reg   [31:0] x_load_3_reg_324;
reg   [31:0] x_load_4_reg_339;
wire    ap_CS_fsm_state4;
reg   [31:0] x_load_5_reg_344;
reg   [31:0] x_load_6_reg_359;
wire    ap_CS_fsm_state5;
reg   [31:0] x_load_7_reg_364;
reg   [31:0] x_load_8_reg_379;
wire    ap_CS_fsm_state6;
reg   [31:0] x_load_9_reg_384;
reg   [31:0] x_load_10_reg_399;
wire    ap_CS_fsm_state7;
reg   [31:0] x_load_11_reg_404;
reg   [31:0] x_load_12_reg_419;
wire    ap_CS_fsm_state8;
reg   [31:0] x_load_13_reg_424;
reg   [31:0] x_load_14_reg_439;
wire    ap_CS_fsm_state9;
reg   [31:0] x_load_15_reg_444;
reg   [31:0] x_load_16_reg_459;
wire    ap_CS_fsm_state10;
reg   [31:0] x_load_17_reg_464;
reg   [31:0] x_load_18_reg_479;
wire    ap_CS_fsm_state11;
reg   [31:0] x_load_19_reg_484;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_idle;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready;
wire   [4:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0;
wire   [31:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0;
wire   [4:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1;
wire   [31:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1;
wire   [8:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0;
wire   [8:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1;
wire   [4:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0;
wire    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0;
wire   [31:0] grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0;
reg    grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg;
wire    ap_CS_fsm_state12;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg = 1'b0;
end

atax_atax_Pipeline_VITIS_LOOP_14_1 grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start),
    .ap_done(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done),
    .ap_idle(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_idle),
    .ap_ready(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready),
    .y_address0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0),
    .y_ce0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0),
    .y_we0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0),
    .y_d0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0),
    .y_q0(y_q0),
    .y_address1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1),
    .y_ce1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1),
    .y_we1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1),
    .y_d1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1),
    .y_q1(y_q1),
    .A_address0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0),
    .A_ce0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0),
    .A_q0(A_q0),
    .A_address1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1),
    .A_ce1(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1),
    .A_q1(A_q1),
    .tmp_address0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0),
    .tmp_ce0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0),
    .tmp_we0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0),
    .tmp_d0(grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0),
    .tmp_q0(tmp_q0),
    .x_load(x_load_reg_299),
    .x_load_1(x_load_1_reg_304),
    .x_load_2(x_load_2_reg_319),
    .x_load_3(x_load_3_reg_324),
    .x_load_4(x_load_4_reg_339),
    .x_load_5(x_load_5_reg_344),
    .x_load_6(x_load_6_reg_359),
    .x_load_7(x_load_7_reg_364),
    .x_load_8(x_load_8_reg_379),
    .x_load_9(x_load_9_reg_384),
    .x_load_10(x_load_10_reg_399),
    .x_load_11(x_load_11_reg_404),
    .x_load_12(x_load_12_reg_419),
    .x_load_13(x_load_13_reg_424),
    .x_load_14(x_load_14_reg_439),
    .x_load_15(x_load_15_reg_444),
    .x_load_16(x_load_16_reg_459),
    .x_load_17(x_load_17_reg_464),
    .x_load_18(x_load_18_reg_479),
    .x_load_19(x_load_19_reg_484)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        x_load_10_reg_399 <= x_q1;
        x_load_11_reg_404 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        x_load_12_reg_419 <= x_q1;
        x_load_13_reg_424 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        x_load_14_reg_439 <= x_q1;
        x_load_15_reg_444 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        x_load_16_reg_459 <= x_q1;
        x_load_17_reg_464 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        x_load_18_reg_479 <= x_q1;
        x_load_19_reg_484 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_load_1_reg_304 <= x_q0;
        x_load_reg_299 <= x_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_load_2_reg_319 <= x_q1;
        x_load_3_reg_324 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        x_load_4_reg_339 <= x_q1;
        x_load_5_reg_344 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        x_load_6_reg_359 <= x_q1;
        x_load_7_reg_364 <= x_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        x_load_8_reg_379 <= x_q1;
        x_load_9_reg_384 <= x_q0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

always @ (*) begin
    if ((grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        x_address0 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        x_address0 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        x_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        x_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        x_address0 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        x_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        x_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        x_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        x_address0 = 64'd1;
    end else begin
        x_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        x_address1 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        x_address1 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        x_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        x_address1 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        x_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        x_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        x_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        x_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        x_address1 = 64'd0;
    end else begin
        x_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        x_ce0 = 1'b1;
    end else begin
        x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        x_ce1 = 1'b1;
    end else begin
        x_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address0;

assign A_address1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_address1;

assign A_ce0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce0;

assign A_ce1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_A_ce1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = 32'd20;

assign grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_ap_start_reg;

assign tmp_address0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_address0;

assign tmp_ce0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_ce0;

assign tmp_d0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_d0;

assign tmp_we0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_tmp_we0;

assign y_address0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address0;

assign y_address1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_address1;

assign y_ce0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce0;

assign y_ce1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_ce1;

assign y_d0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d0;

assign y_d1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_d1;

assign y_we0 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we0;

assign y_we1 = grp_atax_Pipeline_VITIS_LOOP_14_1_fu_257_y_we1;

endmodule //atax
