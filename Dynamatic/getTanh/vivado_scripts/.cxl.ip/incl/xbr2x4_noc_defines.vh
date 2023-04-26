`ifndef _xbr2x4_noc_define_vh_
`define _xbr2x4_noc_define_vh_

// ********************************************************
// NOC General
// ********************************************************
`define NOC_CLOG2(x) \
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

`define NOC_AXSIZE(x) \
      (x == 3'd0) ? 1 : \
      (x == 3'd1) ? 2 : \
      (x == 3'd2) ? 4 : \
      (x == 3'd3) ? 8 : \
      (x == 3'd4) ? 16 : \
      (x == 3'd5) ? 32 : \
      (x == 3'd6) ? 64 : \
      (x == 3'd7) ? 128 : \
      0
`define NOC_2TCQ #2ps	    
`define NOC_TCQ #0ps	
// ********************************************************
// NPS
// ********************************************************
// --------------------------------------------------------
`define NOC_NPS_NUM_PORT  4
`define NOC_LOG2NPS_NUM_PORT 2
`define NOC_NPS_NUM_VC  8
`define NOC_LOG2NPS_NUM_VC 3
`define NOC_NPS_IN_CREDIT_WIDTH 5
`define NOC_NPS_OUT_CREDIT_WIDTH 4
`define NOC_NPS_IPA_TOKEN_WIDTH  8
`define NOC_NPS_VCA_TOKEN_WIDTH  8

// Routing Table
`define NOC_NPS_NUM_RT_CHIP 2**2
`define NOC_LOG2NPS_NUM_RT_CHIP 2  
`define NOC_NPS_NUM_RT_REGION 2**6
`define NOC_NPS_NUM_RT_LOCAL 2**4 
`define NOC_NPS_LOCAL_ID 3:0
`define NOC_NPS_REGION_ID 9:4
`define NOC_LOG2NPS_NUM_RT_REGION 6
`define NOC_LOG2NPS_NUM_RT_LOCAL 4 

`define NOC_NPS_CHIP_ID 11:10 // FIXME when CHIP ID is added

`define NOC_NPS_NUM_RT_HIGH 2**6
`define NOC_NPS_NUM_RT_MID 2**2
`define NOC_NPS_NUM_RT_LOW 2**4
`define NOC_LOG2NPS_NUM_RT_HIGH 6
`define NOC_LOG2NPS_NUM_RT_MID 2
`define NOC_LOG2NPS_NUM_RT_LOW 4
`define NOC_NPS_HIGH_ID 11:6
`define NOC_NPS_MID_ID 5:4
`define NOC_NPS_LOW_ID 3:0

// Number of Default routing table
`define NOC_LOG2NPS_NUM_DEFAULT_ROUTING_TABLE 4

//NSU wrtrk/rdtrk arb 
`define NOC_NSU_VC_INDEX_WIDTH 1
`define NOC_NSU_RDTRK_FIFO_INDEX_WIDTH 3
`define NOC_NSU_RDTRK_FIFO_ENTRY 8
`define NOC_NSU_RDTRK_NUM_VC_ARB 4
`define NOC_NSU_WRTRK_NUM_VC_ARB 4
`define NOC_NSU_RDTRK_TOKEN_WIDTH 8
`define NOC_NSU_WRTRK_TOKEN_WIDTH 8
`define NOC_NSU_VC_ARB_TOKEN_WIDTH 8

`define NOC_NSU_NUM_READ_VC 2
`define NOC_NSU_NUM_WRITE_VC 2
`define NOC_NSU_NUM_VC (`NOC_NSU_NUM_READ_VC + `NOC_NSU_NUM_WRITE_VC)

`define NOC_NSU_VC_MAX_CREDIT_WIDTH 4
`define NOC_NSU_VC_MAX_CREDIT 4'd1


// ********************************************************
// NoC Packet Protocol Common Define
// ********************************************************

// NPP Width
`define NOC_NPP_AXADDR_WIDTH  64
`define NOC_NPP_AXADDR_LOWER_WIDTH  4'd12
`define NOC_NPP_AXADDR_UPPER_WIDTH  (`NOC_NPP_AXADDR_WIDTH-`NOC_NPP_AXADDR_LOWER_WIDTH)
`define NOC_NPP_AXLEN_WIDTH  8
`define NOC_NPP_AXSIZE_WIDTH  3
`define NOC_NPP_AXBURST_WIDTH  2
`define NOC_NPP_AXLOCK_WIDTH  1  // Only support exclusive, no legacy LOCK support
`define NOC_NPP_AXCACHE_WIDTH  4
`define NOC_NPP_AXPROT_WIDTH  3
`define NOC_NPP_AXQOS_WIDTH  4
`define NOC_NPP_AXID_WIDTH  16
`define NOC_NPP_AXUSER_WIDTH  16
`define NOC_NPP_POISON_WIDTH 1
`define NOC_NPP_RSVD_WIDTH 6

`define NOC_NPP_DATA_WIDTH  128

`define NOC_NPP_AXRSVD0_WIDTH  (`NOC_NPP_DATA_WIDTH-`NOC_NPP_AXADDR_WIDTH-`NOC_NPP_AXLEN_WIDTH-`NOC_NPP_AXSIZE_WIDTH-`NOC_NPP_AXBURST_WIDTH-`NOC_NPP_AXLOCK_WIDTH-`NOC_NPP_AXCACHE_WIDTH-`NOC_NPP_AXPROT_WIDTH-`NOC_NPP_AXQOS_WIDTH-`NOC_NPP_AXID_WIDTH-`NOC_NPP_AXUSER_WIDTH-`NOC_NPP_POISON_WIDTH)
`define NOC_NPP_AXRSVD1_WIDTH  (`NOC_NPP_DATA_WIDTH-`NOC_NPP_AXUSER_WIDTH)

`define NOC_NPP_PKT_TYPE_WIDTH  4
`define NOC_NPP_MISC_CTRL_WIDTH  2 //xResp
`define NOC_NPP_TAG_WIDTH  8
`define NOC_NPP_SRC_WIDTH  12
`define NOC_NPP_WSTRB_WIDTH  16
`define NOC_NPP_TLAST_WIDTH  1
`define NOC_NPP_POISON_WIDTH 1
`define NOC_NPP_CTRLRSVD0_WIDTH (`NOC_NPP_TAG_WIDTH+`NOC_NPP_SRC_WIDTH-`NOC_NPP_WSTRB_WIDTH)
`define NOC_NPP_DST_WIDTH  12
`define NOC_NPP_DST_PAR_WIDTH 1
`define NOC_NPP_PRI_WIDTH 1
`define NOC_NPP_LAST_WIDTH  1
`define NOC_NPP_ECC_WIDTH  10
`define NOC_NPP_DBI_WIDTH  1
`define NOC_NPP_PKT_CTRL_WIDTH  (`NOC_NPP_PKT_TYPE_WIDTH + `NOC_NPP_MISC_CTRL_WIDTH + `NOC_NPP_TAG_WIDTH + `NOC_NPP_SRC_WIDTH + `NOC_NPP_DST_WIDTH + `NOC_NPP_DST_PAR_WIDTH + `NOC_NPP_PRI_WIDTH + `NOC_NPP_LAST_WIDTH + `NOC_NPP_ECC_WIDTH + `NOC_NPP_POISON_WIDTH + `NOC_NPP_TLAST_WIDTH + `NOC_NPP_DBI_WIDTH)
`define NOC_NPP_WIDTH  (`NOC_NPP_DATA_WIDTH + `NOC_NPP_PKT_CTRL_WIDTH)

`define NOC_NPP_TID_WIDTH 6
`define NOC_NPP_AXADDR 63:0
`define NOC_NPP_AXADDR_16B 9:8
`define NOC_NPP_AXADDR_LOWER 11:0
`define NOC_NPP_AXADDR_UPPER 63:12
`define NOC_NPP_AXLEN 71:64
`define NOC_NPP_AXSIZE 74:72
`define NOC_NPP_AXBURST 76:75
`define NOC_NPP_AXLOCK 77:77
`define NOC_NPP_AXCACHE 81:78
`define NOC_NPP_AXPROT 84:82
`define NOC_NPP_AXQOS 88:85
`define NOC_NPP_AXID 104:89
`define NOC_NPP_AXUSER 120:105
`define NOC_NPP_RSVD 127:121
`define NOC_NPP_DATA 127:0
`define NOC_NPP_PKT_TYPE 131:128
`define NOC_NPP_MISC_CTRL 133:132

`define NOC_NPP_TAG 141:134  // FIXME: need to shift after TAG removal in write data flit
`define NOC_NPP_SRC 153:142  // FIXME: need to shift after TAG removal in write data flit
`define NOC_NPP_DST 165:154  // FIXME: need to shift after TAG removal in write data flit

`define NOC_NPP_DST_PAR 166:166
`define NOC_NPP_PRI 167:167
//changing this according to the noc protocol picture
`define NOC_NPP_WRSTB 149:134
//`define NOC_NPP_WRSTB 165:146
`define NOC_NPP_POISON 168:168
`define NOC_NPP_TLAST 169:169
`define NOC_NPP_LAST 170:170
`define NOC_NPP_DBI 171:171
`define NOC_NPP_WO_ECC 171:0
`define NOC_NPP_ECC 181:172
`define NOC_NPP_TID_L 153:150
`define NOC_NPP_TID_H 133:132
`define NOC_NPP_SMID 114:105
`define NOC_NPP_TDEST 181:172
// NPP field definition
`define NOC_NPP_PKT_TYPE_READ_REQ 4'd0
`define NOC_NPP_PKT_TYPE_WRITE_REQ 4'd1
`define NOC_NPP_PKT_TYPE_READ_RESP 4'd2
`define NOC_NPP_PKT_TYPE_WRITE_RESP 4'd3
`define NOC_NPP_PKT_TYPE_STRM_WRITE_REQ 4'd4

// ********************************************************
// NOC AXI Interface Common Define
// ********************************************************
// AXI
`define NOC_AXID_WIDTH  16
`define NOC_AXADDR_WIDTH  64
`define NOC_AXADDR_UPPER_WIDTH  52
`define NOC_AXADDR_LOWER_WIDTH  12
`define NOC_AXLEN_WIDTH  8
`define NOC_AXSIZE_WIDTH  3
`define NOC_AXBURST_WIDTH  2
`define NOC_AXLOCK_WIDTH  1  // Only support exclusive, no legacy LOCK support
`define NOC_AXCACHE_WIDTH  4
`define NOC_AXPROT_WIDTH  3
`define NOC_AXQOS_WIDTH  4
`define NOC_AXREGION_WIDTH  0 // Not used
`define NOC_AXUSER_WIDTH  16
`define NOC_AXDATA512_WIDTH  512 // Max. AxWidth is 512 for PL
`define NOC_AXSTRB64_WIDTH  64
`define NOC_AXDATA128_WIDTH  128 // Max. AxWidth is 128 for non-PL
`define NOC_AXSTRB16_WIDTH  16
`define NOC_AXRESP_WIDTH  2
`define NOC_AXLAST_WIDTH 1
// AR
`define NOC_ARID_WIDTH     `NOC_AXID_WIDTH
`define NOC_ARADDR_WIDTH   `NOC_AXADDR_WIDTH
`define NOC_ARLEN_WIDTH    `NOC_AXLEN_WIDTH
`define NOC_ARSIZE_WIDTH   `NOC_AXSIZE_WIDTH
`define NOC_ARBURST_WIDTH  `NOC_AXBURST_WIDTH
`define NOC_ARLOCK_WIDTH   `NOC_AXLOCK_WIDTH
`define NOC_ARCACHE_WIDTH  `NOC_AXCACHE_WIDTH
`define NOC_ARPROT_WIDTH   `NOC_AXPROT_WIDTH
`define NOC_ARQOS_WIDTH    `NOC_AXQOS_WIDTH
`define NOC_ARREGION_WIDTH  `NOC_AXREGION_WIDTH
`define NOC_ARUSER_WIDTH   `NOC_AXUSER_WIDTH
`define NOC_AR_WIDTH  (`NOC_ARID_WIDTH + `NOC_ARADDR_WIDTH + `NOC_ARLEN_WIDTH + `NOC_ARSIZE_WIDTH + `NOC_ARBURST_WIDTH + `NOC_ARLOCK_WIDTH + `NOC_ARCACHE_WIDTH + `NOC_ARPROT_WIDTH + `NOC_ARQOS_WIDTH + `NOC_ARREGION_WIDTH + `NOC_ARUSER_WIDTH)

// AW
`define NOC_AWID_WIDTH     `NOC_AXID_WIDTH
`define NOC_AWADDR_WIDTH   `NOC_AXADDR_WIDTH
`define NOC_AWLEN_WIDTH    `NOC_AXLEN_WIDTH
`define NOC_AWSIZE_WIDTH   `NOC_AXSIZE_WIDTH
`define NOC_AWBURST_WIDTH  `NOC_AXBURST_WIDTH
`define NOC_AWLOCK_WIDTH   `NOC_AXLOCK_WIDTH
`define NOC_AWCACHE_WIDTH  `NOC_AXCACHE_WIDTH
`define NOC_AWPROT_WIDTH   `NOC_AXPROT_WIDTH
`define NOC_AWQOS_WIDTH    `NOC_AXQOS_WIDTH
`define NOC_AWREGION_WIDTH  `NOC_AXREGION_WIDTH
`define NOC_AWUSER_WIDTH   `NOC_AXUSER_WIDTH
`define NOC_AW_WIDTH  (`NOC_AWID_WIDTH + `NOC_AWADDR_WIDTH + `NOC_AWLEN_WIDTH + `NOC_AWSIZE_WIDTH + `NOC_AWBURST_WIDTH + `NOC_AWLOCK_WIDTH + `NOC_AWCACHE_WIDTH + `NOC_AWPROT_WIDTH + `NOC_AWQOS_WIDTH + `NOC_AWREGION_WIDTH + `NOC_AWUSER_WIDTH)

// W
`define NOC_WLAST_WIDTH   `NOC_AXLAST_WIDTH
`define NOC_WID_WIDTH     `NOC_AXID_WIDTH
`define NOC_WDATA512_WIDTH   `NOC_AXDATA512_WIDTH
`define NOC_WSTRB64_WIDTH   `NOC_AXSTRB64_WIDTH
`define NOC_WDATA128_WIDTH   `NOC_AXDATA128_WIDTH
`define NOC_WSTRB16_WIDTH   `NOC_AXSTRB16_WIDTH
`define NOC_WUSER_WIDTH   `NOC_AXUSER_WIDTH // Dont have space in NPP to support
`define NOC_W512_WIDTH  (`NOC_WLAST_WIDTH + `NOC_WID_WIDTH + `NOC_WDATA512_WIDTH + `NOC_WSTRB64_WIDTH + `NOC_WUSER_WIDTH)
`define NOC_W128_WIDTH  (`NOC_WLAST_WIDTH + `NOC_WID_WIDTH + `NOC_WDATA128_WIDTH + `NOC_WSTRB16_WIDTH + `NOC_WUSER_WIDTH)

// R
`define NOC_RLAST_WIDTH   `NOC_AXLAST_WIDTH
`define NOC_RID_WIDTH     `NOC_AXID_WIDTH
`define NOC_RRESP_WIDTH   `NOC_AXRESP_WIDTH
`define NOC_RDATA512_WIDTH   `NOC_AXDATA512_WIDTH
`define NOC_RDATA128_WIDTH   `NOC_AXDATA128_WIDTH
`define NOC_RUSER_WIDTH   `NOC_AXUSER_WIDTH // Dont have space in NPP to support
`define NOC_R512_WIDTH  (`NOC_RLAST_WIDTH + `NOC_RID_WIDTH + `NOC_RRESP_WIDTH + `NOC_RDATA512_WIDTH + `NOC_RUSER_WIDTH)
`define NOC_R128_WIDTH  (`NOC_RLAST_WIDTH + `NOC_RID_WIDTH + `NOC_RRESP_WIDTH + `NOC_RDATA128_WIDTH + `NOC_RUSER_WIDTH)

// B
`define NOC_BID_WIDTH     `NOC_AXID_WIDTH
`define NOC_BRESP_WIDTH   `NOC_AXRESP_WIDTH
`define NOC_BUSER_WIDTH   `NOC_AXUSER_WIDTH
`define NOC_B_WIDTH  (`NOC_BID_WIDTH + `NOC_BRESP_WIDTH + `NOC_BUSER_WIDTH)
// ********************************************************
// NoC AXI protocol Define
// ********************************************************
`define AXSIZE_8    3'b000
`define AXSIZE_16   3'b001  
`define AXSIZE_32   3'b010  
`define AXSIZE_64   3'b011  
`define AXSIZE_128  3'b100
`define AXSIZE_256  3'b101  
`define AXSIZE_512  3'b110  
   
`define AXI_FIXED   2'b00
`define AXI_INCR    2'b01
`define AXI_WRAP    2'b10
   
`define AXI_EXCLUSIVE  2'b01
   
`define CHOP_64B     2'b00
`define CHOP_128B    2'b01
`define CHOP_256B    2'b10
`define CHOP_512B    2'b11
   
`define AXI_RESP_OKAY   2'b00
`define AXI_RESP_EXOKAY 2'b01
`define AXI_RESP_SLVERR 2'b10
`define AXI_RESP_DECERR 2'b11

`define AXI_SIM_1W_1R 
`define WATCHDOG_TIMER_WIDTH 32

// ********************************************************
// NOC NPS6
// ********************************************************
`define NOC_NPS6_NUM_PORT 6
`define NOC_LOG2NPS6_NUM_PORT 3

`define NPS6_PORT_TIE_NPS 2'b0_0  // NMU, NSU
`define NPS6_PORT_TIE_NMU 2'b1_0  // NMU, NSU
`define NPS6_PORT_TIE_NSU 2'b0_1  // NMU, NSU

`define NOC_ERR_REF_NPS6_DST_PAR_ERR  20'h6_6_1_1_1
`define NOC_ERR_REF_NPS6_ROUTE_ERR    20'hB_6_3_1_1
`define NOC_ERR_REF_NPS6_CRDT_RDY_ERR 20'hB_6_3_1_2
`define NOC_ERR_REF_NPS6_CRDT_OVF_ERR 20'hB_6_3_1_3
`define NOC_ERR_REF_NPS6_BUF_OVF_ERR  20'hB_6_3_1_5

// ********************************************************
// NOC2 XBR2x4
// ********************************************************
`define NOC2_XBR2X4_NUM_PORT 6
`define NOC2_XBR2X4_NUM_NPS_PORT 4

`define NOC2_LOG2XBR2X4_NUM_PORT 3
`define NOC2_LOG2XBR2X4_NUM_NPS_PORT 2

`define NMU_PORT 4
`define NSU_PORT 5 //0-3 are NPS ports
typedef enum logic [2:0] {XBR2X4_P_NMU=3'b001,XBR2X4_P_NSU,XBR2X4_P_NPS}  xbr_2x4_ptype;
`define NOC2_NPP_PDEST_ID_WIDTH 2
`define VC_WR_REQ0 1 
`define VC_WR_REQ1 5 
`endif

//`include "nps6_macros.svh"
