//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2012 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// 
//
//       Owner:
//       Revision:       $Id: $
//                       $Author: $
//                       $DateTime: $
//                       $Change: $
//       Description:
//           DDRMC: header file for NA defined needed for controller
//
///////////////////////////////////////////////////////////////////////////////

`include "noc_npp_common_define_bfm.vh"

`ifndef _ddrmc_na_common_define_vh_
`define _ddrmc_na_common_define_vh_

`define NA_CLOG2(x) \
      (x <= 2)   ? 1 : \
      (x <= 4)   ? 2 : \
      (x <= 8)   ? 3 : \
      (x <= 16)  ? 4 : \
      (x <= 32)  ? 5 : \
      (x <= 64)  ? 6 : \
      (x <= 128) ? 7 : \
      (x <= 256) ? 8 : \
      (x <= 512) ? 9 : \
      (x <= 1024) ? 10 : \
      (x <= 2048) ? 11 : \
      (x <= 4096) ? 12 : \
      (x <= 8192) ? 13 : \
      (x <= 16384) ? 14 : \
      (x <= 32768) ? 15 : \
      (x <= 65536) ? 16 : \
      (x <= 131072) ? 17 : \
      (x <= 262144) ? 18 : \
      (x <= 524288) ? 19 : \
      (x <= 1048576) ? 20 : \
      (x <= 2097152) ? 21 : \
      (x <= 4194304) ? 22 : \
      (x <= 8388608) ? 23 : \
      (x <= 16777216) ? 24 : \
      -1


`define NSU_NPP_WO_ECC_DBI (`NOC_NPP_WIDTH -`NOC_NPP_ECC_WIDTH -`NOC_NPP_DBI_WIDTH)
`define NSU_NPP_WO_ECC_DBI_W_PAR (`NOC_NPP_WIDTH -`NOC_NPP_ECC_WIDTH -`NOC_NPP_DBI_WIDTH + 2)
`define NSU_NPP_STORED_WIDTH (`NOC_NPP_DATA_WIDTH+`NOC_NPP_TAG_WIDTH+`NOC_NPP_SRC_WIDTH+2)
`define QOS2NSU_CTRL_WIDTH (`NOC_NPP_PKT_CTRL_WIDTH - `NOC_NPP_ECC_WIDTH - `NOC_NPP_DBI_WIDTH)
`define NSU2MUX_CTRL_WIDTH (`NOC_NPP_PKT_CTRL_WIDTH - `NOC_NPP_ECC_WIDTH - `NOC_NPP_DBI_WIDTH + 3)
`define MUX2CMDQ_CTRL_WIDTH `NOC_NPP_PKT_CTRL_WIDTH
`define NSU2MUX_PYLOAD_WIDTH `NOC_NPP_DATA_WIDTH
`define NSU_NPP_CTRL_FLD 181:128
`define NA_EGRS_PYLOAD_DATA0 63:0
`define NA_EGRS_PYLOAD_DATA1 127:64
`define NA_EGRS_PYLOAD_PAR0 (`NOC_NPP_DATA_WIDTH + `QOS2NSU_CTRL_WIDTH)
`define NA_EGRS_PYLOAD_PAR1 (`NOC_NPP_DATA_WIDTH + `QOS2NSU_CTRL_WIDTH + 1)
`define NSU_TSD_P_P_P_TL_L_WIDTH (`NOC_NPP_TAG_WIDTH + `NOC_NPP_SRC_WIDTH + `NOC_NPP_DST_WIDTH + `NOC_NPP_DST_PAR_WIDTH + `NOC_NPP_PRI_WIDTH + `NOC_NPP_POISON_WIDTH + `NOC_NPP_TLAST_WIDTH + `NOC_NPP_LAST_WIDTH)
`define NSU2MUX_FLIT_WIDTH (`NSU2MUX_CTRL_WIDTH + `NSU2MUX_PYLOAD_WIDTH)
`define MUX2CMDQ_NCHN_LSB 62 
`define MUX2CMDQ_NCHN_MSB 63 
`define MUX2CMDQ_NCHN     `MUX2CMDQ_NCHN_MSB : `MUX2CMDQ_NCHN_LSB
`define MUX2CMDQ_SMID_LSB 105
`define MUX2CMDQ_SMID_MSB 114
`define MUX2CMDQ_SMID     `MUX2CMDQ_SMID_MSB : `MUX2CMDQ_SMID_LSB
`define MUX2CMDQ_WBUF_LSB 122
`define MUX2CMDQ_WBUF_MSB 126
`define MUX2CMDQ_WBUF  `MUX2CMDQ_WBUF_MSB : `MUX2CMDQ_WBUF_LSB
`define MUX2CMDQ_REORDER_VEC 127:122
`define MUX_WDATA_WIDTH 256
`define MUX_WD_PAR_WIDTH 4
`define MUX_BE_WIDTH 32
`define MUX_BE_PAR_WIDTH 2
`define MUX_WADDR_EN_WIDTH 1
`define MUX_AXSTRB16_WIDTH  16
`define MUX_AXLEN_WIDTH  8
`define MC_CNTL_PKT_TYPE_LOC `NOC_NPP_CTRL_PKT_TYPE
`define MC_CNTL_MISC_LSB     `NOC_NPP_CTRL_MISC_CTRL_LSB
`define MC_CNTL_LAST         `NOC_NPP_CTRL_LAST
`define MC_CNTL_DST_PAR_LSB  `NOC_NPP_CTRL_DST_PAR_LSB
`define MC_CNTL_DST_MSB      `NOC_NPP_CTRL_DST_MSB
`define MC_CNTL_DST_LSB      `NOC_NPP_CTRL_DST_LSB
`define MC_CNTL_SRC_MSB      `NOC_NPP_CTRL_SRC_MSB
`define MC_CNTL_SRC_LSB      `NOC_NPP_CTRL_SRC_LSB
`define MC_CNTL_TAG_MSB      `NOC_NPP_CTRL_TAG_MSB
`define MC_CNTL_TAG_LSB      `NOC_NPP_CTRL_TAG_LSB
`define CMD_CHID             (`NOC_NPP_CTRL_ECC_LSB+3)
`define MC_CNTL_CHNK_VLD     (`NOC_NPP_CTRL_ECC_LSB+5):(`NOC_NPP_CTRL_ECC_LSB+4)
`define MC_CNTL_ALIGN_WSTB   (`NOC_NPP_CTRL_ECC_LSB+6)
`define MC_CNTL_PARTIAL      (`NOC_NPP_CTRL_ECC_LSB+7)
`define CMDQ_PAR0            43
`define CMDQ_PAR1            44
`define CMDQ_PAR2            45
`define MC_NUM_NOC_PORTS   4
`define MC_NUM_NOC_PORTS_BITS   2
`define CHPR_2ND_POS_VEC_LSB 48
`define CHPR_2ND_POS_VEC_MSB 59
`define CHOP_TXN_SPARE 63:60
`define MC_AXPROT_SECURE   2

`define DDRMC_NSU_NUM_R_VC 2
`define DDRMC_NSU_NUM_W_VC 2
`define DDRMC_NSU_NUM_VC (`DDRMC_NSU_NUM_R_VC + `DDRMC_NSU_NUM_W_VC)

`define MC_CNTL_MISC_WIDTH   `NOC_NPP_MISC_CTRL_WIDTH
`define NSU2MUX_RESP_TYP_WIDTH 4
`define MC_BUFADDR_WIDTH 5
`define MC_WBUFID_WIDTH 5
`define MC_WBUFADDR_WIDTH 6
`define MC_QOS_CLS 5
`define MC_QOS_BASE 4
`define MC_QOS_LLR 4
`define MC_QOS_ISR 3
`define MC_QOS_BER 2
`define MC_QOS_ISW 1
`define MC_QOS_BEW 0
`define TXN_ADDR_WIDTH 64
`define TXN_CHNK_V_WIDTH 2

`define AXI_ID_WIDTH 16
`define SMID_WIDTH 10
`define MC_RTN_DATA_WIDTH 128

`define PARITY_BREADTH 8
`define NA2DC_WDATA_WIDTH 512
`define NA2DC_WD_PAR_WIDTH 8
`define MC_RTN_PARITY_BREADTH 64
`define MC_RTN_DATA_PAR_WIDTH (`MC_RTN_DATA_WIDTH/`MC_RTN_PARITY_BREADTH)
`define NA2DC_WDATA_PAR_WIDTH (`NA2DC_WDATA_WIDTH/`PARITY_BREADTH)
`define DBUF2ECCW_PAR_WIDTH   ( ( `NA2DC_WDATA_WIDTH/2 ) / `PARITY_BREADTH )
`define DBUF2ECCR_PAR_WIDTH   ( ( `NA2DC_WDATA_WIDTH/2 ) / `PARITY_BREADTH )

`define CNTL_AXSTRB16_BITS 21:6

`define TXN_TIMER_WIDTH 8
`define PORT_DRR_TKN_WIDTH 8
`define QOS_DRR_TKN_WIDTH 10
`define QOS_RD_THRSHOLD_WIDTH 12
`define QOS_WR_THRSHOLD_WIDTH 12
`define RL_CREDIT_UPDATE_WIDTH 10
`define RL_CREDIT_WIDTH 12
`define RL_SCALE_WIDTH 5
`define TMR_SCALE_WIDTH 5
`define TB_SEL_WIDTH 5

`define EGR_W_VC_BUF_DEPTH 8
`define EGR_R_VC_BUF_DEPTH 8

`define CONTROL_LINE_0 (`NSU2MUX_CTRL_WIDTH-1):0
`define CONTROL_LINE_1 (`NSU2MUX_CTRL_WIDTH*2-1):(`NSU2MUX_CTRL_WIDTH)
`define CONTROL_LINE_2 (`NSU2MUX_CTRL_WIDTH*3-1):(`NSU2MUX_CTRL_WIDTH*2)
`define CONTROL_LINE_3 (`NSU2MUX_CTRL_WIDTH*4-1):(`NSU2MUX_CTRL_WIDTH*3)

`define PAYLOAD_LINE_0 (`NSU2MUX_PYLOAD_WIDTH-1):0
`define PAYLOAD_LINE_1 (`NSU2MUX_PYLOAD_WIDTH*2-1):(`NSU2MUX_PYLOAD_WIDTH)
`define PAYLOAD_LINE_2 (`NSU2MUX_PYLOAD_WIDTH*3-1):(`NSU2MUX_PYLOAD_WIDTH*2)
`define PAYLOAD_LINE_3 (`NSU2MUX_PYLOAD_WIDTH*4-1):(`NSU2MUX_PYLOAD_WIDTH*3)

`define RESP_TYP_LINE_0 (`NSU2MUX_RESP_TYP_WIDTH-1):0
`define RESP_TYP_LINE_1 (`NSU2MUX_RESP_TYP_WIDTH*2-1):(`NSU2MUX_RESP_TYP_WIDTH*1)
`define RESP_TYP_LINE_2 (`NSU2MUX_RESP_TYP_WIDTH*3-1):(`NSU2MUX_RESP_TYP_WIDTH*2)
`define RESP_TYP_LINE_3 (`NSU2MUX_RESP_TYP_WIDTH*4-1):(`NSU2MUX_RESP_TYP_WIDTH*3)

`define NA2DC_BE_WIDTH 64
`define NA2DC_BE_PAR_WIDTH 4
`define NA2DC_CMD_FIFO_DEPTH 26
`define NA2DC_CMD_FIFO_LOG2DEPTH (`NA_CLOG2(`NA2DC_CMD_FIFO_DEPTH))
`define NA2DC_CMD_FIFO_WIDTH ( (`MC_QOS_CLS)+(`DC_DRAM_ADDR_WIDTH)+(`TXN_CHNK_V_WIDTH)+(`TXN_TIMER_WIDTH)+(`MC_BUFADDR_WIDTH)+(`MC_WBUFID_WIDTH)+12 )

`define DC2NA_CMD_CREDIT_FIFO_WIDTH 3
`define DC2NA_CMD_CREDIT_FIFO_DEPTH 96
`define DC2NA_CMD_CREDIT_FIFO_LOG2DEPTH (`NA_CLOG2(`DC2NA_CMD_CREDIT_FIFO_DEPTH))

`define DC2NA_NMUX_FIFO_DEPTH ((`NA2DC_CMD_FIFO_DEPTH * 2) + 4)
`define DC2NA_NMUX_FIFO_LOG2DEPTH (`NA_CLOG2(`DC2NA_NMUX_FIFO_DEPTH))
`define DC2NA_NMUX_FIFO_WIDTH ( (`MC_WBUFID_WIDTH) + 2 )

`define DC2NA_RAWW_FIFO_DEPTH ((`NA2DC_CMD_FIFO_DEPTH * 2) + 4)
`define DC2NA_RAWW_FIFO_LOG2DEPTH (`NA_CLOG2(`DC2NA_RAWW_FIFO_DEPTH))
`define DC2NA_RAWW_FIFO_WIDTH ( (`MC_BUFADDR_WIDTH) + (`MC_BUFADDR_WIDTH) + 4 )

`define DC2NA_RROB_FIFO_DEPTH 64
`define DC2NA_RROB_FIFO_LOG2DEPTH 6
`define DC2NA_RROB_FIFO_WIDTH ( (`MC_BUFADDR_WIDTH) + 1 )

`define CHPW_ADDR_FSM_WIDTH      3
`define CHPW_ADDR_FSM_IDLE  3'b001
`define CHPW_ADDR_FSM_REQ   3'b010
`define CHPW_ADDR_FSM_WAIT  3'b100
`define CHPW_ADDR_FSM_REQ_BIT    1

`define ING_W_VC_BUF_DEPTH  16
`define ING_R_VC_BUF_DEPTH  8

`define NSU_CRDT_RDY_ERR             16'hB_3_1_2
`define NSU_2ND_RD_REQ_C_ERR         16'h9_1_2_3
`define NSU_2ND_WR_DAT_C_ERR         16'h9_1_1_4
`define NSU_2ND_WR_REQ_C_ERR         16'h9_1_1_3
`define NSU_RD_REQ_C_ERR             16'h9_1_2_1
`define NSU_WR_POIS_DAT_ERR          16'h8_1_1_3
`define NSU_WR_DAT_C_ERR             16'h9_1_1_2
`define NSU_WR_REQ_C_ERR             16'h9_1_1_1
`define NSU_WR_DAT_U_ERR             16'h8_1_1_2
`define NSU_EX_LEN_NOTZERO           16'h2_1_5_2
`define NSU_VC_UNMAPPED_ERR          16'hB_1_1_1
`define NSU_DST_ID_PAR_ERR           16'h6_1_1_1
`define NSU_WR_WRAP_ERR              16'h3_1_4_1
`define NSU_RD_WRAP_ERR              16'h3_1_4_2
`define NSU_EX_SIZE_ERR              16'h2_1_5_1
`define NSU_REQ_SIZE_ERR             16'h3_1_3_1
`define NSU_UNALIN_WRAP_ERR          16'h1_1_4_2
`define NSU_RD_RESP_PAR_ERR          16'h7_2_2_1
`define NSU_VC_TYP_ERR               16'hB_1_1_3
`define NSU_NUM_LEN_ERR              16'hB_1_1_4
`define NSU_DST_ID_ERR               16'hB_1_1_2
`define NSU_RD_REQ_UC_ERR            16'h8_1_2_1
`define NSU_WR_REQ_UC_ERR            16'h8_1_1_1
`define NSU_ING_OVF_ERR              16'hB_3_1_3
`define NSU_EGR_OVF_ERR              16'hB_3_1_1

// RROB read return fifo FSM 
// ====================================
`define RRET_FSM_WIDTH      4
`define RRET_FSM_IDLE  4'b0001
`define RRET_FSM_WAIT1 4'b0010
`define RRET_FSM_POP2  4'b0100
`define RRET_FSM_WAIT2 4'b1000


// ====================================
// Macro defines
// ====================================

// ====================================
// Phy Feedthru Rounting Channel
// ====================================
`define DMC2PHY_FT(bank_num)                                                                                                  \
assign if_dmc2phy``bank_num``_phy_config.dmc2phy_t_txbit          = if_dmc2phy``bank_num``_phy_config_xpio.dmc2phy_t_txbit;   \
                                                                                                                              \
assign if_dmc2phy``bank_num``_rx.dmc2phy_fifo_rden                = if_dmc2phy``bank_num``_rx_xpio.dmc2phy_fifo_rden;         \
assign if_dmc2phy``bank_num``_rx.dmc2phy_rdcs0                    = if_dmc2phy``bank_num``_rx_xpio.dmc2phy_rdcs0;             \
assign if_dmc2phy``bank_num``_rx.dmc2phy_rdcs1                    = if_dmc2phy``bank_num``_rx_xpio.dmc2phy_rdcs1;             \
assign if_dmc2phy``bank_num``_rx.dmc2phy_rden                     = if_dmc2phy``bank_num``_rx_xpio.dmc2phy_rden;              \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_fifo_empty          = if_dmc2phy``bank_num``_rx.phy2dmc_fifo_empty;             \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_gt_status           = if_dmc2phy``bank_num``_rx.phy2dmc_gt_status;              \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq0              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq0;                 \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq1              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq1;                 \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq2              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq2;                 \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq3              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq3;                 \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq4              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq4;                 \
assign if_dmc2phy``bank_num``_rx_xpio.phy2dmc_rd_dq5              = if_dmc2phy``bank_num``_rx.phy2dmc_rd_dq5;                 \
                                                                                                                              \
                                                                                                                              \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wren                     = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wren;              \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wrcs0                    = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wrcs0;             \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wrcs1                    = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wrcs1;             \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq0                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq0;            \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq1                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq1;            \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq2                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq2;            \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq3                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq3;            \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq4                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq4;            \
assign if_dmc2phy``bank_num``_tx.dmc2phy_wr_dq5                   = if_dmc2phy``bank_num``_tx_xpio.dmc2phy_wr_dq5;            \
                                                                                                                              \
assign if_dmc2phy``bank_num``_riu.dmc2phy_ctrl_clk                = if_dmc2phy``bank_num``_riu_xpio.dmc2phy_ctrl_clk;         \
assign if_dmc2phy``bank_num``_riu.dmc2riu_addr                    = if_dmc2phy``bank_num``_riu_xpio.dmc2riu_addr;             \
assign if_dmc2phy``bank_num``_riu.dmc2riu_nibble_sel              = if_dmc2phy``bank_num``_riu_xpio.dmc2riu_nibble_sel;       \
assign if_dmc2phy``bank_num``_riu.dmc2riu_wr_data                 = if_dmc2phy``bank_num``_riu_xpio.dmc2riu_wr_data;          \
assign if_dmc2phy``bank_num``_riu.dmc2riu_wr_en                   = if_dmc2phy``bank_num``_riu_xpio.dmc2riu_wr_en;            \
assign if_dmc2phy``bank_num``_riu_xpio.riu2dmc_rd_data            = if_dmc2phy``bank_num``_riu.riu2dmc_rd_data;               \
assign if_dmc2phy``bank_num``_riu_xpio.riu2dmc_valid              = if_dmc2phy``bank_num``_riu.riu2dmc_valid;


// ====================================
// DMC Rounting Channel Pipeline
// ====================================
`define DMC_CH_PIPE(input_sig, output_sig, WIDTH)          \
reg      [WIDTH-1:0]   input_sig``_ff[NUM_STAGES:0];       \
reg      [WIDTH-1:0]   input_sig``_nxt[NUM_STAGES:0];      \
assign   output_sig = input_sig``_nxt[NUM_STAGES];         \
always @(*) begin                                          \
  input_sig``_nxt[0] = input_sig;                          \
  for (stage=0; stage<NUM_STAGES; stage=stage+1) begin     \
    input_sig``_nxt[stage+1] = input_sig``_ff[stage];      \
  end                                                      \
end                                                        \
always @(posedge mc_clk) begin                             \
  input_sig``_ff <= input_sig``_nxt;                       \
end


// ====================================
// DMC Flops
// ====================================
//`define DMC_DFLOP(input_sig, output_sig)                   \
//always @(posedge mc_clk) begin                             \
//  output_sig <= input_sig;                                 \
//end

//`define RST_DMC_DFLOP(input_sig, output_sig, rst_value)    \
//always @(posedge mc_clk or posedge mc_rst) begin           \
//  if (mc_rst) begin                                        \
//    output_sig <= rst_value;                               \
//  end else begin                                           \
//    output_sig <= input_sig;                               \
//  end                                                      \
//end

`define D_FLOP(input_clk, input_sig, output_sig)           \
always_ff @(posedge input_clk) begin                       \
  output_sig <= input_sig;                                 \
end


`define D_FLOP_RST(input_clk, input_sig, output_sig, input_rst, rst_value)    \
always_ff @(posedge input_clk or posedge input_rst) begin  \
  if (input_rst) begin                                     \
    output_sig <= rst_value;                               \
  end else begin                                           \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D_FLOP_RSTN(input_clk, input_sig, output_sig, input_rst_n, rst_value)    \
always_ff @(posedge input_clk or negedge input_rst_n) begin  \
  if (~input_rst_n) begin                                     \
    output_sig <= rst_value;                               \
  end else begin                                           \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D_FLOP_RST_EN(input_clk, input_sig, output_sig, input_rst, rst_value, input_clken)    \
always_ff @(posedge input_clk or posedge input_rst) begin  \
  if (input_rst) begin                                     \
    output_sig <= rst_value;                               \
  end else if ( input_clken) begin                         \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D_FLOP_EN(input_clk, input_sig, output_sig, input_clken)    \
always_ff @(posedge input_clk) begin                       \
  if ( input_clken) begin                                  \
    output_sig <= input_sig;                               \
  end                                                      \
end
  
// Check per byte data plus BE parity. Even parity should be supplied on input_par,
// and single bit errors per data byte plus BE will be indicated on output_par_error.
// VEC_WIDTH should be set to number of bytes, which is the same as number of BE and par bits.
// Can also generate parity if input_par is set to '0.
// Can also generate parity with error injection if input_par is non-zero.
`define DBUF_PAR_CHECK(loop_idx, VEC_WIDTH, input_data, input_be, input_par, output_par_err)                \
always @(*) begin                                                                                           \
  for (loop_idx = 0; loop_idx < VEC_WIDTH; loop_idx = loop_idx + 1) begin                                   \
    output_par_err[loop_idx] = ^{ input_par[loop_idx], input_be[loop_idx], input_data[loop_idx*8 +: 8] };   \
  end                                                                                                       \
end


`endif
