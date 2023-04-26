`include "noc_npp_common_define.vh"
`include "noc_ddrmc5_define.vh"

`ifndef _ddrmc5_na_common_define_vh_
`define _ddrmc5_na_common_define_vh_

`define D5_NA_CLOG2(x) \
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


`define D5_NSU_NPP_WO_ECC_DBI (`NOC_NPP_WIDTH -`NOC_NPP_ECC_WIDTH -`NOC_NPP_DBI_WIDTH)
`define D5_NSU_NPP_WO_ECC_DBI_W_PAR (`NOC_NPP_WIDTH -`NOC_NPP_ECC_WIDTH -`NOC_NPP_DBI_WIDTH + 2)
`define D5_NSU_NPP_WO_ECC_DBI_W_PAR_PDEST (`NOC_NPP_WIDTH -`NOC_NPP_ECC_WIDTH -`NOC_NPP_DBI_WIDTH + `D5_NOC_DDRMC5_RETURN_ID_WIDTH +2)
`define D5_NSU_NPP_STORED_WIDTH (`NOC_NPP_DATA_WIDTH+`NOC_NPP_TAG_WIDTH+`NOC_NPP_SRC_WIDTH+2)
`define D5_PDEST2NSU_CTRL_WIDTH (`NOC_NPP_PKT_CTRL_WIDTH - `NOC_NPP_ECC_WIDTH - `NOC_NPP_DBI_WIDTH + `D5_NOC_DDRMC5_RETURN_ID_WIDTH)
`define D5_QOS2NSU_CTRL_WIDTH (`NOC_NPP_PKT_CTRL_WIDTH - `NOC_NPP_ECC_WIDTH - `NOC_NPP_DBI_WIDTH)
`define D5_NSU2MUX_CTRL_WIDTH (`NOC_NPP_PKT_CTRL_WIDTH - `NOC_NPP_ECC_WIDTH - `NOC_NPP_DBI_WIDTH + 3)
//`define D5_MUX2CMDQ_CTRL_WIDTH `NOC_NPP_PKT_CTRL_WIDTH+2 // vadivela: updated for DDR5MC BFM // commented by sushant as same define is used in RTL + TB
`define D5_MUX2CMDQ_CTRL_WIDTH `NOC_NPP_PKT_CTRL_WIDTH // Added this define for RTL + TB
`define D5_MUX2CMDQ_CTRL_WIDTH_BFM `NOC_NPP_PKT_CTRL_WIDTH+2 // vadivela: updated for DDR5MC BFM
`define D5_NSU2MUX_PYLOAD_WIDTH `NOC_NPP_DATA_WIDTH
`define D5_NSU_DATA_FIFO_WIDTH (`NOC_NPP_DATA_WIDTH+`NOC_NPP_WSTRB_WIDTH+3)
`define D5_NSU_NPP_CTRL_FLD 181:128
`define D5_NA_EGRS_PYLOAD_DATA0 63:0
`define D5_NA_EGRS_PYLOAD_DATA1 127:64
`define D5_NA_EGRS_PYLOAD_PAR0 (`NOC_NPP_DATA_WIDTH + `D5_QOS2NSU_CTRL_WIDTH)
`define D5_NA_EGRS_PYLOAD_PAR1 (`NOC_NPP_DATA_WIDTH + `D5_QOS2NSU_CTRL_WIDTH + 1)
`define D5_NSU_TSD_P_P_P_TL_L_WIDTH (`NOC_NPP_TAG_WIDTH + `NOC_NPP_SRC_WIDTH + `NOC_NPP_DST_WIDTH + `NOC_NPP_DST_PAR_WIDTH + `NOC_NPP_PRI_WIDTH + `NOC_NPP_POISON_WIDTH + `NOC_NPP_TLAST_WIDTH + `NOC_NPP_LAST_WIDTH)
`define D5_NSU2MUX_FLIT_WIDTH (`D5_NSU2MUX_CTRL_WIDTH + `D5_NSU2MUX_PYLOAD_WIDTH)
`define D5_MUX2CMDQ_NCHN_LSB 62 
`define D5_MUX2CMDQ_NCHN_MSB 63 
`define D5_MUX2CMDQ_NCHN     `D5_MUX2CMDQ_NCHN_MSB : `D5_MUX2CMDQ_NCHN_LSB
`define D5_MUX2CMDQ_SMID_LSB 105
`define D5_MUX2CMDQ_SMID_MSB 114
`define D5_MUX2CMDQ_SMID     `D5_MUX2CMDQ_SMID_MSB : `D5_MUX2CMDQ_SMID_LSB
`define D5_MUX2CMDQ_WBUF_LSB 122
`define D5_MUX2CMDQ_WBUF_MSB 126
`define D5_MUX2CMDQ_WBUF  `D5_MUX2CMDQ_WBUF_MSB : `D5_MUX2CMDQ_WBUF_LSB
`define D5_MUX2CMDQ_REORDER_VEC 127:122
`define D5_MUX_WDATA_WIDTH 256
`define D5_MUX_WD_PAR_WIDTH 4
`define D5_MUX_BE_WIDTH 32
`define D5_MUX_BE_PAR_WIDTH 2
`define D5_MUX_WADDR_EN_WIDTH 1
`define D5_MUX_AXSTRB16_WIDTH  `NOC_NPP_WSTRB_WIDTH
`define D5_MUX_W_CTL_DAT_WIDTH (`NOC_NPP_WSTRB_WIDTH + `NOC_NPP_DATA_WIDTH)
`define D5_MUX_AXLEN_WIDTH  8
`define D5_MC_CNTL_PKT_TYPE_LOC `NOC_NPP_CTRL_PKT_TYPE
`define D5_MC_CNTL_MISC_LSB     `NOC_NPP_CTRL_MISC_CTRL_LSB
`define D5_MC_CNTL_LAST         `NOC_NPP_CTRL_LAST
`define D5_MC_CNTL_DST_PAR_LSB  `NOC_NPP_CTRL_DST_PAR_LSB
`define D5_MC_CNTL_DST_MSB      `NOC_NPP_CTRL_DST_MSB
`define D5_MC_CNTL_DST_LSB      `NOC_NPP_CTRL_DST_LSB
`define D5_MC_CNTL_SRC_MSB      `NOC_NPP_CTRL_SRC_MSB
`define D5_MC_CNTL_SRC_LSB      `NOC_NPP_CTRL_SRC_LSB
`define D5_MC_CNTL_TAG_MSB      `NOC_NPP_CTRL_TAG_MSB
`define D5_MC_CNTL_TAG_LSB      `NOC_NPP_CTRL_TAG_LSB
`define D5_CMD_CHID             (`NOC_NPP_CTRL_ECC_LSB+3)
`define D5_MC_CNTL_CHNK_VLD     (`NOC_NPP_CTRL_ECC_LSB+5):(`NOC_NPP_CTRL_ECC_LSB+4)
`define D5_MC_CNTL_ALIGN_WSTB   (`NOC_NPP_CTRL_ECC_LSB+6)
`define D5_MC_CNTL_PARTIAL      (`NOC_NPP_CTRL_ECC_LSB+7)
`define D5_CMDQ_PAR0            43
`define D5_CMDQ_PAR1            44
`define D5_CMDQ_PAR2            45
`define D5_MC_NUM_NOC_PORTS   2
`define D5_MC_NUM_NOC_PORTS_BITS   2
`define D5_MC_NUM_CHANNEL 2
`define D5_CHPR_2ND_POS_VEC_LSB 48
`define D5_CHPR_2ND_POS_VEC_MSB 59
`define D5_CHOP_TXN_SPARE 63:60
`define D5_MC_AXPROT_SECURE   2
`define D5_CHP_ADDR_PAR 45
`define D5_EGR_PDEST_ID_BIT 47:46

`define D5_DDRMC_NSU_NUM_R_VC 3
`define D5_DDRMC_NSU_NUM_W_VC 2
`define D5_DDRMC_NSU_NUM_VC (`D5_DDRMC_NSU_NUM_R_VC + `D5_DDRMC_NSU_NUM_W_VC)

`define D5_MC_CNTL_MISC_WIDTH   `NOC_NPP_MISC_CTRL_WIDTH
`define D5_NSU2MUX_RESP_TYP_WIDTH 4
`define D5_MC_WBUFID_WIDTH 5
`define D5_MC_WBUFADDR_WIDTH 6
`define D5_MC_QOS_CLS 5
`define D5_MC_QOS_BASE 4
`define D5_MC_QOS_LLR 4
`define D5_MC_QOS_ISR 3
`define D5_MC_QOS_BER 2
`define D5_MC_QOS_ISW 1
`define D5_MC_QOS_BEW 0
`define D5_TXN_ADDR_WIDTH 64
`define D5_TXN_CHNK_V_WIDTH 2

`define D5_AXI_ID_WIDTH 16
`define D5_SMID_WIDTH 10
`define D5_AXPROT_WIDTH 3
`define D5_MC_RTN_DATA_WIDTH 128

`define D5_PARITY_BREADTH 8
`define D5_NA2DC_WDATA_WIDTH 512
`define D5_NA2DC_WD_PAR_WIDTH 8
`define D5_MC_RTN_PARITY_BREADTH 64
`define D5_MC_RTN_DATA_PAR_WIDTH 4
`define D5_MC_RMW_DATA_PAR_WIDTH 32
`define D5_NA2DC_WDATA_PAR_WIDTH (`D5_NA2DC_WDATA_WIDTH/`D5_PARITY_BREADTH)
`define D5_DBUF2ECCW_PAR_WIDTH   ( ( `D5_NA2DC_WDATA_WIDTH/2 ) / `D5_PARITY_BREADTH )
`define D5_DBUF2ECCR_PAR_WIDTH   ( ( `D5_NA2DC_WDATA_WIDTH/2 ) / `D5_PARITY_BREADTH )
`define D5_ECCR2DBUF_PAR_WIDTH   ( ( `D5_NA2DC_WDATA_WIDTH   ) / `D5_NA2DC_WD_PAR_WIDTH )

`define D5_CNTL_AXSTRB16_BITS 21:6

`define D5_TXN_TIMER_WIDTH 8
`define D5_PORT_DRR_TKN_WIDTH 8
`define D5_QOS_DRR_TKN_WIDTH 10
`define D5_QOS_RD_THRSHOLD_WIDTH 12
`define D5_QOS_WR_THRSHOLD_WIDTH 12
`define D5_RL_CREDIT_UPDATE_WIDTH 10
`define D5_RL_CREDIT_WIDTH 12
`define D5_RL_SCALE_WIDTH 5
`define D5_TMR_SCALE_WIDTH 5
`define D5_TB_SEL_WIDTH 5

// FIXME  TODO  Review read response NSU egress FIFO depth.  Was 5 in DDRMC5 to minimize size,
// but needs to be at least 6 to handle the backpressure loop to the RROB to avoid bubbles.
// Was 8 in ddrmc for DDR4 to avoid bubbles when there is NoC backpressure.
`define D5_EGR_W_VC_BUF_DEPTH 5
`define D5_EGR_R_VC_BUF_DEPTH 8

`define D5_XMPU_NUM_REGION 16

`define D5_CONTROL_LINE_0 (`D5_NSU2MUX_CTRL_WIDTH-1):0
`define D5_CONTROL_LINE_1 (`D5_NSU2MUX_CTRL_WIDTH*2-1):(`D5_NSU2MUX_CTRL_WIDTH)
`define D5_CONTROL_LINE_2 (`D5_NSU2MUX_CTRL_WIDTH*3-1):(`D5_NSU2MUX_CTRL_WIDTH*2)
`define D5_CONTROL_LINE_3 (`D5_NSU2MUX_CTRL_WIDTH*4-1):(`D5_NSU2MUX_CTRL_WIDTH*3)

`define D5_PAYLOAD_LINE_0 (`D5_NSU2MUX_PYLOAD_WIDTH-1):0
`define D5_PAYLOAD_LINE_1 (`D5_NSU2MUX_PYLOAD_WIDTH*2-1):(`D5_NSU2MUX_PYLOAD_WIDTH)
`define D5_PAYLOAD_LINE_2 (`D5_NSU2MUX_PYLOAD_WIDTH*3-1):(`D5_NSU2MUX_PYLOAD_WIDTH*2)
`define D5_PAYLOAD_LINE_3 (`D5_NSU2MUX_PYLOAD_WIDTH*4-1):(`D5_NSU2MUX_PYLOAD_WIDTH*3)

`define D5_RESP_TYP_LINE_0 (`D5_NSU2MUX_RESP_TYP_WIDTH-1):0
`define D5_RESP_TYP_LINE_1 (`D5_NSU2MUX_RESP_TYP_WIDTH*2-1):(`D5_NSU2MUX_RESP_TYP_WIDTH*1)
`define D5_RESP_TYP_LINE_2 (`D5_NSU2MUX_RESP_TYP_WIDTH*3-1):(`D5_NSU2MUX_RESP_TYP_WIDTH*2)
`define D5_RESP_TYP_LINE_3 (`D5_NSU2MUX_RESP_TYP_WIDTH*4-1):(`D5_NSU2MUX_RESP_TYP_WIDTH*3)

`define D5_RROB_QUEUE_DEPTH 48
`define D5_MC_BUFADDR_WIDTH (`D5_NA_CLOG2(`D5_RROB_QUEUE_DEPTH))
`define D5_DC2NA_RROB_FIFO_DEPTH 96
`define D5_DC2NA_RROB_FIFO_LOG2DEPTH 7
`define D5_DC2NA_RROB_FIFO_WIDTH ( (`D5_MC_BUFADDR_WIDTH) + 2 )
`define D5_DC2NA_RRET_FIFO_WIDTH ( (`D5_MC_BUFADDR_WIDTH) + 1 )

`define D5_NA2DC_BE_WIDTH 64
`define D5_NA2DC_BE_PAR_WIDTH 4
`define D5_NA2DC_DATA_FIFO_DEPTH 13
`define D5_NA2DC_DATA_FIFO_LOG2DEPTH (`D5_NA_CLOG2(`D5_NA2DC_DATA_FIFO_DEPTH))
`define D5_NA2DC_CMD_FIFO_DEPTH 8
`define D5_NA2DC_CMD_FIFO_LOG2DEPTH (`D5_NA_CLOG2(`D5_NA2DC_CMD_FIFO_DEPTH))
`define D5_NA2DC_CMD_FIFO_WIDTH ( ((`D5_DC_DRAM_ADDR_WIDTH) * 2)+(`D5_TXN_CHNK_V_WIDTH)+ 2 +(`D5_MC_BUFADDR_WIDTH)+(`D5_MC_WBUFID_WIDTH)+16 +1 )
`define D5_NA2DC_CMD_WIDTH ( (`D5_MC_QOS_CLS)+((`D5_DC_DRAM_ADDR_WIDTH) * 2)+(`D5_TXN_CHNK_V_WIDTH)+(`D5_TXN_TIMER_WIDTH)+ 1 +(`D5_MC_BUFADDR_WIDTH)+(`D5_MC_WBUFID_WIDTH)+16 +1 )

`define D5_DC2NA_CMD_CREDIT_FIFO_WIDTH 3
`define D5_DC2NA_CMD_CREDIT_FIFO_DEPTH 96
`define D5_DC2NA_CMD_CREDIT_FIFO_LOG2DEPTH (`D5_NA_CLOG2(`D5_DC2NA_CMD_CREDIT_FIFO_DEPTH))

`define D5_DC2NA_NMUX_FIFO_DEPTH ((`D5_NA2DC_CMD_FIFO_DEPTH * 2) + 4)
`define D5_DC2NA_NMUX_FIFO_LOG2DEPTH (`D5_NA_CLOG2(`D5_DC2NA_NMUX_FIFO_DEPTH))
`define D5_DC2NA_NMUX_FIFO_WIDTH ( (`D5_MC_WBUFID_WIDTH) + 2 )

`define D5_DC2NA_RAWW_FIFO_DEPTH ((`D5_NA2DC_CMD_FIFO_DEPTH * 2) + 4)               // FIXME: is * 2 for 2 channels? is so then remove * 2
`define D5_DC2NA_RAWW_FIFO_LOG2DEPTH (`D5_NA_CLOG2(`D5_DC2NA_RAWW_FIFO_DEPTH))
`define D5_DC2NA_RAWW_FIFO_WIDTH ( (`D5_MC_BUFADDR_WIDTH) + 3 )

`define D5_CHPW_ADDR_FSM_WIDTH      3
`define D5_CHPW_ADDR_FSM_IDLE  3'b001
`define D5_CHPW_ADDR_FSM_REQ   3'b010
`define D5_CHPW_ADDR_FSM_WAIT  3'b100
`define D5_CHPW_ADDR_FSM_REQ_BIT    1

`define D5_ING_W_VC_BUF_DEPTH  32
`define D5_ING_WDATA_VC_BUF_DEPTH 128 // added by vadivela 
`define D5_ING_R_VC_BUF_DEPTH  32
`define D5_ING_W_VC_BUF_MAX_CREDIT_WIDTH  `D5_NA_CLOG2(`D5_ING_W_VC_BUF_DEPTH)
`define D5_ING_R_VC_BUF_MAX_CREDIT_WIDTH  `D5_NA_CLOG2(`D5_ING_W_VC_BUF_DEPTH)

`define NUM_WR_VC 2 // added by vadivela
`define NUM_RD_VC 3 // added by vadivela

`define D5_CHOP_CMD_FIFO_DEPTH 2

`define D5_ILC_BASE_LSB     20

`define D5_NSU_CRDT_RDY_ERR             16'hB_3_1_2
`define D5_NSU_2ND_RD_REQ_C_ERR         16'h9_1_2_3
`define D5_NSU_2ND_WR_DAT_C_ERR         16'h9_1_1_4
`define D5_NSU_2ND_WR_REQ_C_ERR         16'h9_1_1_3
`define D5_NSU_RD_REQ_C_ERR             16'h9_1_2_1
`define D5_NSU_WR_POIS_DAT_ERR          16'h8_1_1_3
`define D5_NSU_WR_DAT_C_ERR             16'h9_1_1_2
`define D5_NSU_WR_REQ_C_ERR             16'h9_1_1_1
`define D5_NSU_WR_DAT_U_ERR             16'h8_1_1_2
`define D5_NSU_EX_LEN_NOTZERO           16'h2_1_5_2
`define D5_NSU_VC_UNMAPPED_ERR          16'hB_1_1_1
`define D5_NSU_DST_ID_PAR_ERR           16'h6_1_1_1
`define D5_NSU_WR_WRAP_ERR              16'h3_1_4_1
`define D5_NSU_RD_WRAP_ERR              16'h3_1_4_2
`define D5_NSU_EX_SIZE_ERR              16'h2_1_5_1
`define D5_NSU_REQ_SIZE_ERR             16'h3_1_3_1
`define D5_NSU_UNALIN_WRAP_ERR          16'h1_1_4_2
`define D5_NSU_RD_RESP_PAR_ERR          16'h7_2_2_1
`define D5_NSU_VC_TYP_ERR               16'hB_1_1_3
`define D5_NSU_NUM_LEN_ERR              16'hB_1_1_4
`define D5_NSU_DST_ID_ERR               16'hB_1_1_2
`define D5_NSU_RD_REQ_UC_ERR            16'h8_1_2_1
`define D5_NSU_WR_REQ_UC_ERR            16'h8_1_1_1
`define D5_NSU_ING_OVF_ERR              16'hB_3_1_3
`define D5_NSU_EGR_OVF_ERR              16'hB_3_1_1

`define D5_DDRMC5_WRTRK_DEPTH           16
`define D5_DDRMC5_MAX_WREST_WIDTH       7
// RROB read return fifo FSM 
// ====================================
`define D5_RRET_FSM_WIDTH      2
`define D5_RRET_FSM_IDLE  2'b01
//`define D5_RRET_FSM_WAIT1 4'b0010
`define D5_RRET_FSM_POP2  2'b10
//`define D5_RRET_FSM_WAIT2 4'b1000


// ====================================
// Macro defines
// ====================================

// ====================================
// Phy Feedthru Rounting Channel
// ====================================
`define D5_DMC2PHY_FT(bank_num)                                                                                                  \
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
`define D5_DMC_CH_PIPE(input_sig, output_sig, WIDTH)          \
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
//`define D5_DMC_DFLOP(input_sig, output_sig)                   \
//always @(posedge mc_clk) begin                             \
//  output_sig <= input_sig;                                 \
//end

//`define D5_RST_DMC_DFLOP(input_sig, output_sig, rst_value)    \
//always @(posedge mc_clk or posedge mc_rst) begin           \
//  if (mc_rst) begin                                        \
//    output_sig <= rst_value;                               \
//  end else begin                                           \
//    output_sig <= input_sig;                               \
//  end                                                      \
//end

`define D5_D_FLOP(input_clk, input_sig, output_sig)           \
always_ff @(posedge input_clk) begin                       \
  output_sig <= input_sig;                                 \
end


`define D5_D_FLOP_RST(input_clk, input_sig, output_sig, input_rst, rst_value)    \
always_ff @(posedge input_clk or posedge input_rst) begin  \
  if (input_rst) begin                                     \
    output_sig <= rst_value;                               \
  end else begin                                           \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D5_D_FLOP_RSTN(input_clk, input_sig, output_sig, input_rst_n, rst_value)    \
always_ff @(posedge input_clk or negedge input_rst_n) begin  \
  if (~input_rst_n) begin                                     \
    output_sig <= rst_value;                               \
  end else begin                                           \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D5_D_FLOP_RST_EN(input_clk, input_sig, output_sig, input_rst, rst_value, input_clken)    \
always_ff @(posedge input_clk or posedge input_rst) begin  \
  if (input_rst) begin                                     \
    output_sig <= rst_value;                               \
  end else if ( input_clken) begin                         \
    output_sig <= input_sig;                               \
  end                                                      \
end

`define D5_D_FLOP_EN(input_clk, input_sig, output_sig, input_clken)    \
always_ff @(posedge input_clk) begin                       \
  if ( input_clken) begin                                  \
    output_sig <= input_sig;                               \
  end                                                      \
end

// D_FLOP_DPx16: flops for datapath, in x16 mode only bits (15:0)+32*n are active
// Notes:
//  - input_sig/output_sig are 1 dimensional vectors
//  - clock gating should be inserted by synth, could be rewritten to have explicit clock gating

`define D_FLOP_DPx16(input_clk, input_sig, output_sig, x16_mode)    \
always_ff @(posedge input_clk) begin                         \
  for(int i=0;i<$size(input_sig)/32;i++)		     \
    output_sig[i*32 +: 16] <= input_sig[i*32 +: 16];         \
  if(!x16_mode)						     \
    for(int i=0;i<$size(input_sig)/32;i++)		     \
      output_sig[i*32+16 +: 16] <= input_sig[i*32+16 +: 16]; \
end

// Check per byte data plus BE parity. Even parity should be supplied on input_par,
// and single bit errors per data byte plus BE will be indicated on output_par_error.
// VEC_WIDTH should be set to number of bytes, which is the same as number of BE and par bits.
// Can also generate parity if input_par is set to '0.
// Can also generate parity with error injection if input_par is non-zero.
`define D5_DBUF_PAR_CHECK(loop_idx, VEC_WIDTH, input_data, input_be, input_par, output_par_err)                \
always @(*) begin                                                                                           \
  for (loop_idx = 0; loop_idx < VEC_WIDTH; loop_idx = loop_idx + 1) begin                                   \
    output_par_err[loop_idx] = ^{ input_par[loop_idx], input_be[loop_idx], input_data[loop_idx*8 +: 8] };   \
  end                                                                                                       \
end

// Check per 64 bit plus 8 bit BE parity. Even parity should be supplied on input_par,
// and single bit errors per data chunk plus BE will be indicated on output_par_error.
// VEC_WIDTH should be set to number of 64 bit chunks.
// Can also generate parity if input_par is set to '0.
// Can also generate parity with error injection if input_par is non-zero.
`define D5_DBUF_PAR_CHECK_64(loop_idx, VEC_WIDTH, input_data, input_be, input_par, output_par_err)             \
always @(*) begin                                                                                           \
  for (loop_idx = 0; loop_idx < VEC_WIDTH; loop_idx = loop_idx + 1) begin                                   \
    output_par_err[loop_idx] = ^{ input_par[loop_idx], input_be[loop_idx*8 +: 8], input_data[loop_idx*64 +: 64] };   \
  end                                                                                                       \
end


`endif
