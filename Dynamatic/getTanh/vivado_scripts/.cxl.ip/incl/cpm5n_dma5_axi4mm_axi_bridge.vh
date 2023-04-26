`ifndef CPM5N_CDX5N_DMA5_AXI_BRIDGE_VH
`define CPM5N_CDX5N_DMA5_AXI_BRIDGE_VH
`include "cpm5n_pcie5n_coredefines.svh"

`define XSRREG_AXIMM(clk, reset_n, q,d,rstval) \
`ifdef SOFT_IP  \
`XSRREG_SYNC (clk, reset_n, q,d,rstval) \
`else   \
`XSRREG_ASYNC (clk, reset_n, q,d,rstval)  \
`endif 

`define XSRREG_EN_AXIMM(clk, reset_n, q,d,rstval, en) \
`ifdef SOFT_IP \
`XSRREG_SYNC_EN(clk, reset_n, q,d,rstval, en) \
`else \
`XSRREG_ASYNC_EN(clk, reset_n, q,d,rstval, en) \
`endif

`define XSRREG_XDMA(clk, reset_n, q,d,rstval) \
`ifdef SOFT_IP  \
`XSRREG_SYNC (clk, reset_n, q,d,rstval) \
`else   \
`XSRREG_ASYNC (clk, reset_n, q,d,rstval)  \
`endif

`define XSRREG_HARD(clk, reset_n, q,d,rstval)        \
`ifdef SOFT_IP  \
`XPREG_NORESET(clk, q,d) \
`else   \
`XSRREG_ASYNC (clk, reset_n, q,d,rstval)  \
`endif

`define XSRREG_SYNC_HARD(clk, reset_n, sync_reset_n, q,d,rstval) \
`ifdef SOFT_IP  \
`XSRREG_SYNC(clk, sync_reset_n, q,d, rstval) \
`else   \
`XSRREG_ASYNC (clk, reset_n, q,d,rstval)  \
`endif

`define XSRREG_HARD_CLR(clk, reset_n, q,d)        \
`ifdef SOFT_IP  \
`XPREG_NORESET(clk, q,d) \
`else   \
`XSRREG_ASYNC (clk, reset_n, q,d,'h0)  \
`endif

`define XSRREG_EN_XDMA(clk, reset_n, q,d,rstval, en)     \
`ifdef SOFT_IP \
`XSRREG_SYNC_EN(clk, reset_n, q,d,rstval, en) \
`else \
`XSRREG_ASYNC_EN(clk, reset_n, q,d,rstval, en) \
`endif

`define XLREG_AXIMM(clk, reset_n) \
`ifdef SOFT_IP \
`XLREGS_SYNC(clk, reset_n) \
`else \
`XLREGS_ASYNC(clk, reset_n)  \
`endif

`define XLREG_XDMA(clk, reset_n) \
`ifdef SOFT_IP \
`XLREGS_SYNC(clk, reset_n) \
`else \
`XLREGS_ASYNC(clk, reset_n)  \
`endif

`define XLREG_HARD(clk, reset_n) \
`ifdef SOFT_IP \
always @(posedge clk) \
if (0) begin \
`else \
`XLREGS_ASYNC(clk, reset_n)  \
if (~reset_n ) begin \
`endif

`define XLREG_END \
end else



`define XNRREG_AXIMM(clk,q,d) \
  always @(posedge clk) begin \
   `ifdef FOURVALCLKPROP \
      q <= #(TCQ) clk? d : q; \
    `else \
      q <= #(TCQ) d; \
    `endif \
  end

`define XNRREG_EN_AXIMM(clk,q,d,en) \
  always @(posedge clk) begin \
   `ifdef FOURVALCLKPROP \
      q <= #(TCQ) ((en & clk)  ? d : q); \
    `else \
      q <= #(TCQ) (en ? d : q); \
    `endif \
  end

// AXI Defines
`define SIZE64 0
`define SIZE128 1
`define SIZE256 2
`define SIZE512 3
`define CQ_USER_FBELO 0
`define CQ_USER_FBEHI 3
`define CQ_USER_LBELO 4
`define CQ_USER_LBEHI 7
`define CQ_USER_LBELO_512 8
`define CQ_USER_LBEHI_512 11
`define CQ_USER_BELO 8
`define CQ_USER_BEHI (CQ_USER_BELO +31)
`define CQ_USER_PARLO 53
`define CQ_USER_PARLO_512 119
`define CQ_USER_PARHI (CQ_USER_PARLO +31)
`define AXIS_MEM_READ 4'h0
`define AXIS_MEM_WRITE 4'h1
`define AXIS_IO_READ 4'h2
`define AXIS_IO_WRITE 4'h3
`define AXIS_IO_WRITE 4'h3
`define AXIS_FETCH_ADD 4'h4
`define AXIS_UCOND_SWAP 4'h5
`define AXIS_COMP_SWAP 4'h6
`define AXIS_READ_LCK 4'h7
`define AXIS_CFGRD_TYPE0 4'h8
`define AXIS_CFGRD_TYPE1 4'h9
`define AXIS_CFGWR_TYPE0 4'ha
`define AXIS_CFGWR_TYPE1 4'hb
`define AXIS_MSG_GEN 4'hc
`define AXIS_MSG_VNDDEF 4'hd
`define AXIS_MSG_ATS 4'he
`define AXIS_RSVD 4'hf

`define AXIMM_RRESP_OK 2'b00
`define AXIMM_RRESP_EXOK 2'b01
`define AXIMM_RRESP_SLVERR 2'b10
`define AXIMM_RRESP_DECERR 2'b11

`define DMA5_RAM_SIZE_DIST 128
`define DMA5_RAM_SIZE_BLK 1024
`define DMA5_RAM_DEP_BLK  64

`endif // AXI_BRIDGE_VH
