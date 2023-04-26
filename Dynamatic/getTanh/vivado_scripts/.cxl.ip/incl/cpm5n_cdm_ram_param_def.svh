`ifndef CPM5N_CDM_RAM_PARAM_DEF_SVH
`define CPM5N_CDM_RAM_PARAM_DEF_SVH

// ST2M Conv1 Payload FIFO
localparam ST2M_PAYLOAD_FIFO_DEPTH         = 32;
localparam ST2M_PAYLOAD_FIFO_ADDR_BITS     = $clog2(ST2M_PAYLOAD_FIFO_DEPTH);
localparam ST2M_PAYLOAD_FIFO_BITS          = $bits(mdma_wpl_t);
localparam ST2M_PAYLOAD_FIFO_DATA_BYTE     = $bits(mdma_int_tdata_t)/8;
localparam ST2M_PAYLOAD_FIFO_BYTE_CNT_BITS = $clog2(ST2M_PAYLOAD_FIFO_DEPTH*ST2M_PAYLOAD_FIFO_DATA_BYTE+1);
localparam ST2M_PAYLOAD_FIFO_MTY_BITS      = $clog2(ST2M_PAYLOAD_FIFO_DATA_BYTE+1);
localparam ST2M_PAYLOAD_FIFO_CNT_BITS      = $clog2(ST2M_PAYLOAD_FIFO_DEPTH+1);

// ST2M Conv1 Wr Hdr FIFO
localparam ST2M_WR_HDR_FIFO_DEPTH          = 32;
localparam ST2M_WR_HDR_FIFO_ADDR_BITS      = $clog2(ST2M_WR_HDR_FIFO_DEPTH);
localparam ST2M_WR_HDR_FIFO_DATA_BITS      = $bits(wr_fab_hdr_t);
localparam ST2M_WR_HDR_FIFO_CNT_BITS       = $clog2(ST2M_WR_HDR_FIFO_DEPTH+1);

// CMPT CTL FIFO
localparam CMPT_CTL_FIFO_RAM_DAT_BITS = 272;
localparam CMPT_CTL_FIFO_RAM_ADR_BITS = 8;

// CMPT PLD FIFO
localparam CMPT_PLD_FIFO_RAM_DAT_BITS = 272;
localparam CMPT_PLD_FIFO_RAM_ADR_BITS = 8;

// H2C ST DATA VFIFO
localparam H2C_DAT_OUT_FIFO_DEPTH = 256;
localparam H2C_DAT_OUT_DAT_BITS = 657;//$bits(mdma_int_tdata_t)+1+$bits(mdma_h2c_axis_tuser_t)+($bits(mdma_int_tdata_t)/8); 
//localparam H2C_DAT_OUT_DAT_BITS = 666;//$bits(mdma_int_tdata_t)+1+$bits(mdma_h2c_axis_tuser_t)+($bits(mdma_int_tdata_t)/8); 
localparam H2C_DAT_OUT_ADR_BITS = $clog2(H2C_DAT_OUT_FIFO_DEPTH);

// H2C ST DSC IN VFIFO
localparam H2C_DSC_IN_FIFO_DEPTH = 256;
localparam H2C_DSC_IN_DAT_BITS = 240;//$bits(cdx_h2c_st_byp_in_m2st_req_t); 
localparam H2C_DSC_IN_ADR_BITS = $clog2(H2C_DSC_IN_FIFO_DEPTH);

// H2C ST DSC OUT VFIFO
localparam H2C_DSC_OUT_FIFO_DEPTH = 256;
localparam H2C_DSC_OUT_DAT_BITS = 338;//$bits(rd_fab_hdr_t)+$bits(rrq_data_t);
localparam H2C_DSC_OUT_ADR_BITS = $clog2(H2C_DSC_OUT_FIFO_DEPTH);


// H2C ST DSC OUT VFIFO
localparam H2C_STS_OUT_FIFO_DEPTH = 128;
localparam H2C_STS_OUT_DAT_BITS = 96;//$bits(mdma_h2c_wb_data_t) 
//localparam H2C_STS_OUT_DAT_BITS = 128;//$bits(mdma_h2c_wb_data_t) 
localparam H2C_STS_OUT_ADR_BITS = $clog2(H2C_STS_OUT_FIFO_DEPTH);

// Req Fab WR BUF REQ VFIFO
localparam RFAB_WR_BUF_REQ_FIFO_DEPTH   = 156;
localparam RFAB_WR_BUF_REQ_DAT_BITS     = 80; //$bits(wr_buf_req_t);
localparam RFAB_WR_BUF_REQ_ADR_BITS     = $clog2(RFAB_WR_BUF_REQ_FIFO_DEPTH);

// Req Fab WR HDR FIFO
localparam RFAB_WR_HDR_FIFO_DEPTH   = 32;
localparam RFAB_WR_HDR_DAT_BITS     = 224; // 191 needed, plus extra rsv
localparam RFAB_WR_HDR_ADR_BITS     = $clog2(RFAB_WR_HDR_FIFO_DEPTH);

// Req Fab WR PLD FIFO0 and FIFO1
localparam RFAB_WR_PLD_FIFO_DEPTH   = 32;
localparam RFAB_WR_PLD_DAT_BITS     = 528; // 1024b / 2
localparam RFAB_WR_PLD_ADR_BITS     = $clog2(RFAB_WR_PLD_FIFO_DEPTH);

// Req Fab RD BUF REQ VFIFO
localparam RFAB_RD_BUF_REQ_FIFO_DEPTH   = 156;
localparam RFAB_RD_BUF_REQ_DAT_BITS     = 80; //$bits(rd_buf_req_t);
localparam RFAB_RD_BUF_REQ_ADR_BITS     = $clog2(RFAB_RD_BUF_REQ_FIFO_DEPTH);

localparam ROB_DEPTH = 2304;
localparam ROB_PTR_BITS = $clog2(ROB_DEPTH);
// Req Fab RD ROB DATA RAM
localparam RFAB_RD_ROB_RAM_DEPTH        = ROB_DEPTH;
localparam RFAB_RD_ROB_RAM_DAT_BITS     = 544; // 1042;
localparam RFAB_RD_ROB_RAM_ADR_BITS     = ROB_PTR_BITS;

// Req Fab RD METADATA VFIFO
localparam RFAB_RD_MDATA_FIFO_DEPTH     = ROB_DEPTH;
localparam RFAB_RD_MDATA_DAT_BITS       = $bits(rrq_data_t); // 192
localparam RFAB_RD_MDATA_ADR_BITS       = ROB_PTR_BITS;

// Req Fab RD METADATA NPTR VFIFO
localparam RFAB_RD_MDATA_NPTR_FIFO_DEPTH   = ROB_DEPTH;
localparam RFAB_RD_MDATA_NPTR_DAT_BITS     = 14; //ROB_PTR_BITS;
localparam RFAB_RD_MDATA_NPTR_ADR_BITS     = ROB_PTR_BITS;

// Req Fab RD PKT LEN VFIFO
localparam RFAB_RD_PKT_LEN_FIFO_DEPTH   = ROB_DEPTH;
localparam RFAB_RD_PKT_LEN_DAT_BITS     = $bits(rd_fab_rcp_binfo_t);
localparam RFAB_RD_PKT_LEN_ADR_BITS     = ROB_PTR_BITS;

// Req Fab RD PKT LEN NPTR VFIFO
localparam RFAB_RD_PKT_LEN_NPTR_FIFO_DEPTH  = ROB_DEPTH;
localparam RFAB_RD_PKT_LEN_NPTR_DAT_BITS    = 14; //ROB_PTR_BITS;
localparam RFAB_RD_PKT_LEN_NPTR_ADR_BITS    = ROB_PTR_BITS;

// Req Fab RD ROB ENQ HPTR RAM
localparam RFAB_RD_ENQ_HPTR_RAM_DEPTH   = ROB_DEPTH;
localparam RFAB_RD_ENQ_HPTR_DAT_BITS    = 18;
localparam RFAB_RD_ENQ_HPTR_ADR_BITS    = ROB_PTR_BITS;

// Req Fab RD ROB ENQ NPTR RAM
localparam RFAB_RD_ENQ_NPTR_RAM_DEPTH   = ROB_DEPTH;
localparam RFAB_RD_ENQ_NPTR_DAT_BITS    = 18;
localparam RFAB_RD_ENQ_NPTR_ADR_BITS    = ROB_PTR_BITS;

// Req Fab RD ROB DEQ NPTR RAM
localparam RFAB_RD_DEQ_NPTR_RAM_DEPTH   = ROB_DEPTH;
localparam RFAB_RD_DEQ_NPTR_DAT_BITS    = 18;
localparam RFAB_RD_DEQ_NPTR_ADR_BITS    = ROB_PTR_BITS;

// Req Fab RD ROB STAT NPTR RAM
localparam RFAB_RD_STAT_NPTR_RAM_DEPTH  = ROB_DEPTH;
localparam RFAB_RD_STAT_NPTR_DAT_BITS   = 18;
localparam RFAB_RD_STAT_NPTR_ADR_BITS   = ROB_PTR_BITS;

// Req Fab RD PLD VFIFO RAM // not used in CDX
localparam RFAB_RD_PLD_VFIFO_RAM_DEPTH  = ROB_DEPTH;
localparam RFAB_RD_PLD_VFIFO_DAT_BITS   = $bits(rd_fab_rcp_t);
localparam RFAB_RD_PLD_VFIFO_ADR_BITS   = $clog2(RFAB_RD_PLD_VFIFO_RAM_DEPTH);

// Req Fab RD PEND VFIFO RAM // not used in CDX
localparam RFAB_RD_PEND_VFIFO_RAM_DEPTH = ROB_DEPTH;
localparam RFAB_RD_PEND_VFIFO_DAT_BITS  = $bits(rd_pend_fifo_data_t);
localparam RFAB_RD_PEND_VFIFO_ADR_BITS  = $clog2(RFAB_RD_PEND_VFIFO_RAM_DEPTH);

// M2M Desc VFIFO
localparam M2M_DESC_FIFO_DEPTH      = 128;
localparam M2M_DESC_FIFO_DAT_BITS   = 352;
localparam M2M_DESC_FIFO_ADR_BITS   = $clog2(M2M_DESC_FIFO_DEPTH);

// M2M RD HDR VFIFO
localparam M2M_RD_HDR_FIFO_DEPTH      = 128;
localparam M2M_RD_HDR_FIFO_DAT_BITS   = $bits(rd_fab_hdr_t)+$bits(rrq_data_t);
localparam M2M_RD_HDR_FIFO_ADR_BITS   = $clog2(M2M_RD_HDR_FIFO_DEPTH);

// M2M WR HDR VFIFO
localparam M2M_WR_HDR_FIFO_DEPTH      = 128;
localparam M2M_WR_HDR_FIFO_DAT_BITS   = $bits(wr_fab_hdr_t);
localparam M2M_WR_HDR_FIFO_ADR_BITS   = $clog2(M2M_WR_HDR_FIFO_DEPTH);

// M2M WR PLD VFIFO
localparam M2M_PLD_FIFO_DEPTH      = 128;
localparam M2M_PLD_FIFO_DAT_BITS   = 1036;
localparam M2M_PLD_FIFO_ADR_BITS   = $clog2(M2M_PLD_FIFO_DEPTH);

// M2M WBK VFIFO
localparam M2M_WBK_FIFO_DEPTH      = 128;
localparam M2M_WBK_FIFO_DAT_BITS   = 96;
localparam M2M_WBK_FIFO_ADR_BITS   = $clog2(M2M_WBK_FIFO_DEPTH);

// INT CTXT
localparam INT_CTXT_CPM_RAM_DEPTH = 256;
localparam INT_CTXT_CPM_RAM_DAT_BITS = 160;
localparam INT_CTXT_CPM_RAM_ADR_BITS = $clog2(INT_CTXT_CPM_RAM_DEPTH);

// CMPT CTXT
localparam WRB_CTXT_HARD_RAM_ADDR_BITS = $bits(mdma_cqid_t);
localparam WRB_CTXT_RAM_DATA_BITS      = 218;

// DSC ENG VFIFO
localparam DSC_ENG_FIFO_DAT_BITS   = 400;    

// FMAP RAM
localparam FUNC_MAP_RAM_DEPTH     = 4096;
localparam FUNC_MAP_RAM_DATA_BITS = 54;
localparam FUNC_MAP_RAM_ADDR_BITS = $clog2(FUNC_MAP_RAM_DEPTH);


// vim:foldmethod=marker:foldlevel=0

`endif
