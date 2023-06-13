`ifndef CPM5N_CDX5N_DMA5_DEFINES_SVH
`define CPM5N_CDX5N_DMA5_DEFINES_SVH

`include "cpm5n_dma5_axi4mm_axi_bridge.vh"
`include "cpm5n_dma5_defines.vh"
`include "cpm5n_dma5_attr_defines.vh"
`include "cpm5n_dma5_mdma_reg.svh"
`include "cpm5n_dma5_reg.svh"

// Interface Includes at bottom of file (use some structures defined in this file)
typedef enum logic [2:0] {DMA_DSC_OUT_2B=0, DMA_DSC_OUT_4B=1, DMA_DSC_OUT_8B=2, DMA_DSC_OUT_16B=3, DMA_DSC_OUT_32B=4, DMA_DSC_OUT_64B=5, DMA_DSC_OUT_128B=6, DMA_DSC_OUT_256B=7} dma_dsc_out_size_e;
typedef enum logic       {DMA_VIO_AVL_RNG_FETCH=0, DMA_VIO_AVL_IDX_FETCH=1} dma_dsc_vio_fetch_e;

`define IF_MI_CONVERSION_M \
  always_comb begin \
    ifc.wadr = wadr;\
    ifc.wen  = wen;\
    ifc.wpar = wpar;\
    ifc.wdat = wdat;\
    ifc.ren  = ren;\
    ifc.radr = radr;\
    rpar = ifc.rpar;\
    rdat = ifc.rdat;\
    rsbe = ifc.rsbe;\
    rdbe = ifc.rdbe;\
  end

`define IF_MI_CONVERSION_S \
  always_comb begin \
    wadr = ifc.wadr;\
    wen  = ifc.wen;\
    wpar = ifc.wpar;\
    wdat = ifc.wdat;\
    ren  = ifc.ren;\
    radr = ifc.radr;\
    ifc.rpar = rpar;\
    ifc.rdat = rdat;\
    ifc.rsbe = rsbe;\
    ifc.rdbe = rdbe;\
  end

// Spare Input Ports for DMA5 from dma5_pciea to dma5_wrapper
typedef logic [11:0] rcp_cnt_t;

typedef struct packed {
  logic [511:0] rsv;    // Allocate bits from here
} spare_input_t;

typedef union packed {
  logic [511:0] rsv;    // For compile size check
  spare_input_t spare;
} dma5_wrapper_spare_input_t;

// Spare Output Ports for DMA5 to dma5_pciea from dma5_wrapper
typedef struct packed {
  logic [511:0] rsv;    // Allocate bits from here
} spare_output_t;

typedef union packed {
  logic [511:0]  rsv;    // For compile size check
  spare_output_t spare;
} dma5_wrapper_spare_output_t;


typedef logic [10:0]  rd_rid_t; // for depth 1536 ROB

typedef struct packed {
  logic gen_sop;
  logic [`RID_WIDTH-1:0] rid;
  logic [`CHN_WIDTH-1:0] chn;
  logic [8:0] btlen;   // beatlen
  logic [`DID_WIDTH-1:0] did;
  logic [4:0] errc;
  logic [3:0] err;
} rcp_err_t;

typedef enum logic [1:0] {
  CDM_STATUS_SUCCESS  = 0,
  CDM_STATUS_ERR = 1,
  CDM_STATUS_BARRIER = 2
} cdm_status_t;

// Descriptor Sideband Info (Context RAM to DSC_CPLI_RAM)
typedef struct packed {
  logic [9:0] ecc;
  logic infer_mem_spc;
  csi_tph_t   tph;
  cdm_client_id_t   client_id;
  cdx_int_prof_id_t cdx_int_prof_id;
  logic c2h_st;
  logic [8:0] misc; // Removing virtio, c2h_pfch, rsvd as not used either on bypout or c2h internal
  union packed {
    struct packed {
      logic [12:0] qid;
      cdx_qdm_csi_prof_id_t qdm_csi_prof_id;
      logic [19:0] pasid;
      logic pasid_en;
    } qdm;
    struct packed {
      logic rsv;
      cdm_resp_cookie_t response_cookie;
      logic barrier_rsp;
      logic [4:0] start_offset;
      cdm_rd_chan_id_t  rc_id;
      logic [4:0] aoff;
      logic [8:0] len;
    } cdm;
  } u;
  logic vio_idx; // It was a virtio idx fetch
  logic [2:0] fmt;
  logic virtio_en;
  logic byp;
  logic is_mm;
  dma_dsc_out_size_e dsc_sz;
  logic end_rng; // The last descriptor of this fetch is the end of the ring
  logic wbi_imm;  // Do writeback/interrupt on descriptor completion
  logic wbi_chk;  // Check status before writeback/interrupt
  logic qen;
  mdma_fnid_t    fnc;
  logic   [15:0] cidx;
} dsc_sbi_t;

typedef struct packed {
  logic         err;
  logic [10:0]  dw_len;
  logic [6:0]   aln_off;
  logic         tlp_sop;
  logic         tlp_eop;
} rcp_usr_t;

typedef struct packed {
  logic        rsv3;
  logic [2:0]  attr;
  logic [2:0]  tc;
  logic        rsv2;
  logic [15:0] arid;
  logic [ 7:0] tag;
  logic [15:0] rid;
  logic        rsv1;
  logic [10:0] msg_dlen;
  logic        rsv0;
  logic        req_cmptd;
  logic        locked_rc;
  logic [12:0] rem_bcnt;
  logic [3:0]  err;
  logic [11:0] addr;
} rcd_hdr_t;

typedef struct packed {
  logic [31:0] parity;
  logic        discontinue;
  logic [2:0]  eop_dptr1;
  logic        eop1;
  logic [2:0]  eop_dptr0;
  logic        eop0;
  logic        sop1;
  logic        sop0;
  logic [31:0] byte_en;
} pcie_axis_tuser256_t;

typedef struct packed {
  logic [63:0] parity;
  logic        discontinue;
  logic [3:0]  eop_dptr3;
  logic [3:0]  eop_dptr2;
  logic [3:0]  eop_dptr1;
  logic [3:0]  eop_dptr0;
  logic        eop3;
  logic        eop2;
  logic        eop1;
  logic        eop0;
  logic [1:0]  sop_ptr3;
  logic [1:0]  sop_ptr2;
  logic [1:0]  sop_ptr1;
  logic [1:0]  sop_ptr0;
  logic        sop3;
  logic        sop2;
  logic        sop1;
  logic        sop0;
  logic [63:0] byte_en;
} pcie_axis_tuser512_t;

// Req fab read vch parameters
localparam ROB_DATA_VFIFO_BRG_NUM_CHNL = 16;
localparam ROB_DATA_VFIFO_DMA_NUM_CHNL = 8;
localparam ROB_VCH_DMA_CHNL_OFFSET = 8;
localparam ROB_VCH_BASE_BRG_SLV = 0;    // can use all 16 if DMA is not enabled
localparam ROB_VCH_BASE_H2C_ST  = 0;
localparam ROB_VCH_BASE_DSC_ENG = 8;
localparam ROB_VCH_BASE_H2C_MM  = 16;

localparam PRI_DATA_VFIFO_NUM_CHNL = 2;
localparam PRI_VCH_BASE_C2H_MM  = 0;    // 2 channels   -> fix parameter in instantiation

// Data Width values
`define REQ_FAB_WIDTH_128   0
`define REQ_FAB_WIDTH_256   1
`define REQ_FAB_WIDTH_512   2
`define REQ_FAB_WIDTH_1024  3

// Req fab structs
typedef logic [20:0] buf_req_len_t;
typedef logic [11:0] buf_req_aoff_t;
typedef logic [6:0]  buf_req_saln_t;
typedef logic [3:0]  buf_req_sid_t;  // support 0-8  req vch
typedef logic [4:0]  rd_buf_vch_t;   // support 0-23 rob vch
typedef logic [3:0]  rd_buf_eid_t; // FIXME review
typedef logic [0:0]  rcp_buf_id_t;
typedef logic [9:0]  wcp_rid_t;
typedef struct packed {
  logic sop;
  logic eop;
} buf_req_frm_t;

typedef logic [13:0] cdm_job_src_id_t;

// Common header fields
typedef struct packed {
  logic err;    // 1
  logic cancel; // 1
  logic is_not_admin;   // 1
  csi_pasid_t pasid;  // 19
  csi_pcie_addr_type_t addr_type; // 2
  csi_addr_t  addr;  // 62
  csi_pcie_attr_t attr; // 3
  csi_func_t fnc; // 16
  logic job_end; // 1
  cdm_job_src_id_t job_id; // 14
  logic unmanaged; // 1
  cdm_client_id_t client_id; // 4
} cmn_req_hdr_t;

// Read Header
typedef struct packed {
  logic [146-1-$bits(cmn_req_hdr_t)-1-6:0]    rsv;
  logic [5:0] binfo_mdat; // only use for M2M
  logic rro;
  cmn_req_hdr_t cmn;
} rd_fab_hdr_t;

// Read Metadata
typedef logic [191:0] rrq_data_t;
typedef logic [191:0] rd_fab_meta_data_t;

// Write Header
typedef struct packed {
  logic [170-1-$bits(cmn_req_hdr_t)-$bits(wcp_rid_t)-1-$bits(csi_tph_t):0]    rsv;
  csi_tph_t tph;
  logic wcp;
  wcp_rid_t rid;
  cmn_req_hdr_t cmn;
} wr_fab_hdr_t;

typedef struct packed {
  logic         last;
  logic [21:0]  aoff;
  logic [10:0]  len;
  csi_intf_id_t csi_dst;
  logic [8:0]   csi_fifo;
  buf_req_sid_t sid;
  logic [2:0]   eid;
} wr_fab_hdr_sb_t;

typedef struct packed {
  logic suff1st;
  logic xtra;   // Extra aligner beat needed
  logic empty;  // Insert empty beat for end_pad
  logic [1:0] aoff;
  logic [6:0] saln;
  logic [6:0] mask; // only apply to EOP
  logic [3:0] cnt; // Quanta of 128B
  logic [2:0] eid;
} wr_fab_pld_sb_t;

// Read Structs
typedef struct packed {
  logic inc;        // Increment pointer. In current implementation, always tie to 1
  rd_buf_vch_t vch; // ROB Channel to dequeue from
  logic eop_stall;  // Add 1 extra dummy beat after returning RCP data back to engine
  logic rsp_chn;    // Determine which response data channel to use. Only H2C-ST uses channel 1, tie to 0 for other engines
  logic [7:0] dw_en; // Data width-conversion enable
} rd_fab_deq_t;

typedef struct packed {
  logic bar; // Barrier. Response to REQ with dma_bar=1. Internally generated, not from Initiators.
  logic sob; // start completion of buffer request
  logic eob; // last completion of buffer request
  logic sod; // start completion of dequeue request
  logic eod; // end completion of dequeue request
  buf_req_frm_t frm; // SOP/EOP framing bits
  logic [2:0]   err; // cdm_resp_err_status_t
  rd_buf_vch_t  vch; // virtual channel for data response
  rd_rid_t      rid; // Only for debug
  logic [`DAT_WIDTH/8-1:0] par;
  logic [`DAT_WIDTH-1:0]   dat;
} rd_fab_rcp_t;

typedef struct packed {
  logic eor; // last completion of request post-TLP splitting
  logic [2:0] csi_dst; // encoded CSI destination ID
  logic [4:0] dest_id; // scheduler destination ID
} rd_fab_rcp_sb_t;

typedef struct packed {
  rd_fab_rcp_t pld;
  rd_fab_meta_data_t  mdat;
} rd_fab_rcp_meta_t;

typedef struct packed {
  logic zb_csi_bar;
  buf_req_frm_t frm;
  logic eob;
  rd_buf_vch_t  vch;
} rd_fab_rcp_stat_t;

typedef struct packed {
  logic [3:0]   client_id;
  logic [5:0]   mdat;
  logic [6:0]   aoff;
  buf_req_frm_t frm;
  buf_req_len_t len;
} rd_fab_rcp_binfo_t;

typedef struct packed {
  logic vld;
  logic eor;
  logic bar;
  rd_buf_vch_t vch;
  logic [2:0]  csi_dst;
} rd_fab_enq_pop_t;

typedef struct packed {
  logic vld;
  logic eor;
  logic bar;
  logic [2:0]  eid;
  rd_buf_vch_t vch;
  logic [5:0]  dest_id;
  logic managed;
} rd_fab_deq_pop_t;

typedef struct packed {
  logic zb_csi_bar;
  buf_req_frm_t frm;
  logic eob;
  logic [2:0] eid; // hack to allow 1 extra bit for nptr usage
} stat_nptr_sb_t;

typedef struct packed {
  logic [2:0] rsv;
  logic sob;
  logic eob;
  buf_req_frm_t frm;
} deq_nptr_sb_t;

typedef union packed {
  stat_nptr_sb_t stat;
  deq_nptr_sb_t  deq;
} rob_nptr_sb_t;

// Write buffer request
localparam WR_BUF_SID_NUM_BUF = 0;

typedef struct packed {
  logic [31:0] dat;
} wbrq_t;

// ROB Structs
typedef struct packed {
  rob_nptr_sb_t sb;
  logic [11:0] nptr; // FIXME hardcoded length?
} rob_nptr_t;

typedef struct packed {
  logic managed;
  logic zb_csi_bar;
  logic bar;
  logic [11:0]  cnt; // FIXME hardcoded length?
  rd_buf_eid_t  eid;
  rd_buf_vch_t  vch;
  buf_req_frm_t frm;
  logic data_en;
  logic sob;
  logic eob;
} rd_pend_fifo_data_t;

typedef enum logic [1:0]{
  TRQ_PCIE = 0,
  TRQ_AXI  = 1,
  TRQ_MGMT = 2
} trq_src_e;

typedef struct packed {
  mdma_dmap_sel_e  sel;
  logic rd;
  logic wr;
  logic [31:0] adr;
  logic [31:0] dat;
} trq_t;

typedef enum logic [1:0] {
  TCP_OK = 0,
  TCP_SLV_ERR = 2,
  TCP_DECERR = 3
} tcp_err_e;

typedef struct packed {
  logic vld;
  logic [31:0] dat;
  tcp_err_e err;
} tcp_t;

typedef struct packed {
  trq_src_e    src;
  logic [3:0]  host_id;
  mdma_cqid_t  qid;
  logic wr;
  logic [31:0] data;
} mdma_dyn_ptr_upd_t;

typedef struct packed {
  logic run;
  logic c2h_wbk_ena;
  logic noninc;
  logic [`ADR_WIDTH-1:0] cdc_wbk_adr;
} creg_t;

typedef struct packed {
  logic        pasid1_pr; // 182 Privilege
  logic        pasid0_pr; // 181 Privilege
  logic        pasid1_ex; // 180 Execute
  logic        pasid0_ex; // 179 Execute
  logic [19:0] pasid1;    // 178:159 PASID 1 (20-bits)
  logic [19:0] pasid0;    // 158:139 PASID 0 (20-bits)
  logic        pasid1_en; // 138    PASID TLP Valid 1
  logic        pasid0_en; // 137    PASID TLP Valid 0
  logic [63:0] par;       // 136:73 Parity filled later
  logic [5:0]  seq1;      // 72:67  Sequence Num 1
  logic [5:0]  seq0;      // 66:61  Sequence Num 0
  logic [23:0] tph;       // 60:45  TPH St Tag
    // 44:43  TPH Ind Tag
    // 42:39  TPH Type
    // 38:37  TPH Present
  logic disc; // 36 Discontinue
  logic [3:0] eop1_ptr; // 35:32  EOP 1 Ptr
  logic [3:0] eop0_ptr; // 31:28  EOP 0 Ptr
  logic eop1; // 27 EOP 1
  logic eop0; // 26 EOP 0
  logic [1:0] sop1_ptr; // 25:24  SOP 1 Ptr
  logic [1:0] sop0_ptr; // 23:22  SOP 0 Ptr
  logic sop1; // 21 SOP 1
  logic sop0; // 20 SOP 0
  logic [3:0] adr; // 19:16  Address offset - Address aligned mode only
  logic [3:0] lbe1;
  logic [3:0] lbe0;
  logic [3:0] fbe1;
  logic [3:0] fbe0;
} rq_usr_straddle_t;

typedef struct packed {
  logic [97:0] rsv2;     // 182:85
  logic        pasid_pr; // 84 Privilege
  logic        pasid_ex; // 83 Execute
  logic [19:0] pasid;    // 82:63 PASID 0 (20-bits)
  logic        pasid_en; // 62    PASID TLP Valid 0
  logic [1:0]  rsv0; // 61:60
  logic [31:0] par;  // 59:28
  logic [3:0]  seq;  // 27:24
  logic [11:0] tph;  // 23:12
  logic        dis;  // 11
  logic [2:0]  adr;  // 10:8
  logic [3:0]  lbe;  // 7:4
  logic [3:0]  fbe;  // 3:0
} rq_usr_nostraddle_t;

typedef union packed {
  rq_usr_straddle_t rqu_str;
  rq_usr_nostraddle_t rqu_nstr;
} rq_usr_t;

typedef struct packed {
  logic [12:0] pcie_mrrs;
  logic [12:0] pcie_mps;
  logic [12:0] axi_mrrs;
  logic [12:0] axi_mps;
} cfg_dma_t;

typedef struct packed {
  logic        ecrc;
  logic [2:0]  attr;
  logic [2:0]  tc;
  logic        rid_en;
  logic [15:0] cpl_id;
  logic [7:0]  tag;
  logic [15:0] req_id;
  logic        poison;
  logic [3:0]  req;
  logic [10:0] len;
  logic [63:0] adr;
} rq_hdr_fields_t;

typedef struct packed {
  logic [23:0] dw3_misc;
  logic [7:0]  tag;
  logic [16:0] dw2_misc;
  logic [3:0]  req;
  logic [10:0] len;
  logic [63:0] adr;
} rq_hdr_compact_t;

typedef struct packed {
  logic [31:0] dw3;
  logic [31:0] dw2;
  logic [31:0] dw1;
  logic [31:0] dw0;
} rq_hdr_dwords_t;

typedef union packed {
  rq_hdr_fields_t  rqh_f;
  rq_hdr_compact_t rqh_c;
  rq_hdr_dwords_t  rqh_d;
} rq_hdr_t;

typedef struct packed {
  logic wen;
  logic [`DSC_DID_WIDTH-1:0] waddr;
  logic [255:0] wdat;
  logic [`DSC_RID_WIDTH-1:0] raddr;
}dsc_bram_in_t;

//
typedef struct packed {
  logic    [11:0]            func;
  //logic    [3:0]            be;
} dma_axil_user_t;

typedef struct packed {
  logic  rsvd;   // 31
  logic [11:0] func;   // 30:19
  logic [2:0]  steering; // 18:16
  logic [3:0]  bar_id;   // 15:12
  logic  is_brdg_tfc;  // 11 : Set only for bridge traffic
  logic  inst_id;  // 10
  logic [9:0]  smid;   // 9:0
} dma_axi_mst_br_user_t;

typedef struct packed {
  logic [12:0] qid;      // 31:19
  logic [2:0]  steering; // 18:16
  logic [3:0]  host_id;  // 15:12
  logic        is_brdg_tfc; // 11 : Set only for bridge traffic
  logic        inst_id;  // 10
  logic [9:0]  smid;     // 9:0
} dma_axi_mst_dma_user_t;

typedef union packed {
  dma_axi_mst_br_user_t brdg;
  dma_axi_mst_dma_user_t dma;
} dma_axi_mst_user_t;

typedef struct packed {
  logic [11:0] vfg_offset;  // 54:43
  logic [2:0]  vfg;         // 42:40
  logic [7:0]  bus_num;     // 39:32
  logic        rsvd;        // 31
  logic [11:0] func;        // 30:19
  logic [2:0]  steering;    // 18:16
  logic [3:0]  bar_id;      // 15:12
  logic        is_brdg_tfc; // 11 : Set only for bridge traffic
  logic        inst_id;     // 10
  logic [9:0]  smid;        // 9:0
} dma_axi_mst_br_user_soft_t;

typedef struct packed {
  logic   [22:0]     rsvd;        // 54:32
  dma_axi_mst_dma_user_t user;  // 31:0
} dma_axi_mst_dma_user_soft_t;

typedef union packed {
  dma_axi_mst_br_user_soft_t brdg;
  dma_axi_mst_dma_user_soft_t dma;
} dma_axi_mst_user_soft_t;

typedef struct packed {
  logic pasid_en; // 34
  logic [19:0] pasid;  // 33:12
  logic [11:0] func;   // 11:0
} dma_axi_slv_br_user_soft_t;

// Descriptor Completion
`define DCP_SRC_BASE 0
`define DCP_LEN_BASE 64
`define DCP_STP_BASE 92
`define DCP_CPL_BASE 93
`define DCP_EOP_BASE 94
`define DCP_DST_BASE 128
typedef struct packed {
  logic h2cmm_vch_id;
  mdma_host_id_t host_id;
  //mdma_h2c_wb_data_t mdma;
  logic [63:0] rsv3;
  logic [63:0] wadr;
  logic [31:0] rsv2;
  logic rsv1;
  logic eop;
  logic cpl;
  logic stp;
  logic [27:0] len;
  logic [63:0] radr;
} dcp_t;

// MM Internal Descriptor Format
typedef struct packed { // Must be 256-bits wide
  logic [4:0]  rsv1;           // 255:251
  logic [11:0] src_fnc;        // 250:239
  logic [8:0]  dst_csi_fifo;   // 238:230
  logic [4:0]  dst_csi_dst;    // 229:225
  logic [19:0] dst_pasid;      // 224:205
  logic        dst_pasid_en;   // 204
  logic [11:0] dst_fnc;        // 203:192
  logic [63:0] dst_addr;       // 191:128
  logic [8:0]  src_csi_fifo;   // 127:119
  logic [4:0]  src_csi_dst;    // 118:114
  logic [19:0] src_pasid;      // 113:94
  logic        src_pasid_en;   //  93
  logic [7:0]  rsv0;           //  92:85
  logic [20:0] len;            //  84:64
  logic [63:0] src_addr;       //  63:0
} dsc_mm_int_t;

//Descriptor Format defines
`define DMA_DSC_FMT_VIO_AVL_RING_ENTRY 3'h4   //Avail-Ring entry
`define DMA_DSC_FMT_VIO_DESC 3'h6   //Virtio-Descriptor

// Descriptor Out Credits (dma_eng credits -> dsc_eng)
typedef struct packed {
  logic                        vld;
  logic    [3:0]               crd;
} dma_dsc_out_crd_t;

typedef struct packed {
  logic [3:0] h2c_byp_out;
  logic [3:0] c2h_byp_out;
  logic [3:0] h2c_byp_in;
  logic [3:0] c2h_byp_in;
  logic xdma_byp_in_axi; //If XDMA is used this globally select 1: AXI 0:load interface
} reg_dsc_byp_enable_t;

// Descriptor Out (dma descriptors -> user)
typedef struct packed {
  logic [2:0] fmt;  //  0: normal descriptor fetch; 3'h1 : is_wb cycle contains wb information, not descriptor; 3'h2 : fetch_imm; 4'h4 virtio_avl_ring, 4'h6 virtio dsc
  logic [2:0] port_id;
  logic       wbi;
  logic       wbi_chk;
  dma_dsc_out_size_e dsc_sz;
  logic       sel;        // 0: H2C, 1: C2H
  logic       st_mm;      // 0: Stream,  1: MM
  mdma_qid_t  qid;
  logic       last;
  logic       error;
  mdma_fnid_t func;
  logic[15:0] cidx;
} dma_h2c_byp_dsc_out_sb_t;

typedef struct packed {
  dma_h2c_byp_dsc_out_sb_t sb;
  logic [255:0] dsc;
} dma_h2c_byp_dsc_out_t;

typedef struct packed {
  logic desc_chain; // Chain descriptor
  mdma_dma_buf_len_t len; // Length
  logic var_desc;
  mdma_c2h_cache_tag_t pfch_tag; // Tag of C2H Pfch cache
  logic pasid_en;
  logic [19:0]   pasid;
  mdma_host_id_t host_id; // 0: PCIe, 1: AXIMM
  logic [5:0] cnt; // Number of completed descriptors in the beat
  logic [2:0] fmt; //  0: normal descriptor fetch; 2'h1 : is_wb cycle contains wb information, not descriptor; 2'h2 : fetch_imm
  logic [2:0] port_id;
  logic wbi;
  logic wbi_chk;
  dma_dsc_out_size_e          dsc_sz;
  logic sel;   // 0: H2C, 1: C2H
  logic st_mm; // 0: Stream,  1: MM
  mdma_qid_t qid;
  logic last;
  logic error;
  mdma_fnid_t func;
  logic    [15:0] cidx;
} mdma_c2h_byp_dsc_out_sb_t;

typedef struct packed {
  mdma_c2h_byp_dsc_out_sb_t   sb;
  logic    [255:0]            dsc;
} mdma_c2h_byp_dsc_out_t;

// Descriptor Out (dma descriptors -> user)
typedef struct packed {
  logic desc_chain; // Chain descriptor
  mdma_dma_buf_len_t len; // Length
  logic var_desc;
  mdma_c2h_cache_tag_t pfch_tag; // Tag of C2H Pfch cache
  logic pasid_en;
  logic [19:0]   pasid;
  mdma_host_id_t host_id; // 0: PCIe, 1: AXIMM
  logic [5:0] cnt; // Number of completed descriptors in the beat
  logic [2:0] fmt; // 0: normal descriptor fetch; 2'h1 : is_wb cycle contains wb information, not descriptor; 2'h2 : fetch_imm
  logic [2:0] port_id;
  logic wbi;
  logic wbi_chk;
  dma_dsc_out_size_e   dsc_sz;
  logic sel;   // 0: H2C, 1: C2H
  logic st_mm; // 0: Stream,  1: MM
  mdma_qid_t qid;
  logic last;
  logic error;
  mdma_fnid_t func;
  logic [15:0] cidx;
} mdma_h2c_byp_dsc_out_sb_t;

typedef struct packed {
  mdma_h2c_byp_dsc_out_sb_t   sb;
  logic    [255:0]            dsc;
} mdma_h2c_byp_dsc_out_t;

typedef struct packed {
  logic        sim_byp;
  logic        desc_chain; // Chain descriptor
  logic [15:0] desc_chain_idx;
  logic [2:0]  desc_chain_flag;
  logic        var_desc;
  mdma_c2h_cache_tag_t pfch_tag; // Tag of C2H Pfch cache
  logic        pasid_en;
  logic [19:0] pasid;
  mdma_dma_buf_len_t len; // Length
  logic [3:0]  host_id; // 0: PCIe, 1: AXIMM
  logic [1:0]  at;
  logic [2:0]  fmt; // 0: normal descriptor fetch; 2'h1 : is_wb cycle contains wb information, not descriptor; 2'h2 : fetch_imm
  logic [2:0]  port_id;
  logic        wbi;
  logic        wbi_chk;
  logic        err2ctxt; // If qsts port enabled, sent DMA error to context instead.  Applies to MM , H2C ST
  dma_dsc_out_size_e dsc_sz; // XDMA 32B, UDMA AXIS/MDMA 8B,UDMA MM 16B
  logic        sel;   // 0: H2C, 1: C2H
  logic        st_mm; // 0: Stream,  1: MM
  mdma_qid_t   qid;
  logic        last;
  logic        error;
  mdma_fnid_t  func;
  logic [15:0] cidx;
} mdma_c2h_byp_dsc_in_sb_t;

typedef struct packed {
  mdma_c2h_byp_dsc_in_sb_t sb;
  logic [255:0] dsc;
} mdma_c2h_byp_dsc_in_t;

typedef struct packed {
  logic [19:0] pasid;
  logic        pasid_en;
  logic [11:0] func;
  logic [3:0]  host_id;
  logic [2:0]  port_id;
  logic [15:0] cidx;
  logic        error;
  logic [12:0] qid;
  logic        mrkr_req;
  logic        sdi;
  logic [27:0] len;
  logic        no_dma;
  logic [1:0]  at;
  logic [63:0] wadr;
  logic [63:0] radr;
} mdma_fab_c2h_byp_dsc_in_mm_t;

typedef struct packed {
  logic        desc_chain;
  logic [15:0] desc_chain_idx;
  logic [2:0]  desc_chain_flag;
  logic [19:0] pasid;
  logic        pasid_en;
  logic        var_desc;
  logic [6:0]  pfch_tag;
  logic [3:0]  host_id;
  logic [2:0]  port_id;
  logic [2:0]  fmt;
  logic [15:0] cidx;
  logic [11:0] func;
  logic        error;
  logic [1:0]  at;
  logic [15:0] len;
  logic [63:0] addr;
} mdma_fab_c2h_byp_dsc_in_st_t;

typedef struct packed {
  logic        desc_chain;
  logic [15:0] desc_chain_idx;
  logic [2:0]  desc_chain_flag;
  logic        var_desc;
  mdma_c2h_cache_tag_t pfch_tag; // Tag of C2H Pfch cache
  logic        pasid_en;
  logic [19:0] pasid;
  mdma_dma_buf_len_t len; // Length
  logic [3:0] host_id;    // 0: PCIe, 1: AXIMM
  logic [1:0] at;
  logic [2:0] fmt;      //  0: normal descriptor fetch; 2'h1 : is_wb cycle contains wb information, not descriptor; 2'h2 : fetch_imm
  logic [2:0] port_id;
  logic       wbi;
  logic       wbi_chk;
  logic       err2ctxt; // If qsts port enabled, sent DMA error to context instead.  Applies to MM , H2C ST
  dma_dsc_out_size_e   dsc_sz; // XDMA 32B, UDMA AXIS/MDMA 8B,UDMA MM 16B
  logic        sel;     // 0: H2C, 1: C2H
  logic        st_mm;   // 0: Stream,  1: MM
  mdma_qid_t   qid;
  logic        last;
  logic        error;
  mdma_fnid_t  func;
  logic [15:0] cidx;
} mdma_h2c_byp_dsc_in_sb_t;

typedef struct packed {
  mdma_h2c_byp_dsc_in_sb_t    sb;
  logic    [255:0]            dsc;
} mdma_h2c_byp_dsc_in_t;

typedef struct packed {
  logic [19:0] pasid;
  logic        pasid_en;
  logic [11:0] func;
  logic [3:0]  host_id;
  logic [2:0]  port_id;
  logic [15:0] cidx;
  logic        error;
  logic [12:0] qid;
  logic        mrkr_req;
  logic        sdi;
  logic [27:0] len;
  logic        no_dma;
  logic [1:0]  at;
  logic [63:0] wadr;
  logic [63:0] radr;
} mdma_fab_h2c_byp_dsc_in_mm_t;

typedef struct packed {
  logic [19:0] pasid;
  logic        pasid_en;
  logic [11:0] func;
  logic [3:0]  host_id;
  logic [2:0]  port_id;
  logic [12:0] qid;
  logic [15:0] cidx;
  logic        error;
  logic        no_dma;
  logic        mrkr_req;
  logic        sdi;
  logic        eop;
  logic        sop;
  logic [1:0]  at;
  logic [15:0] len;
  logic [63:0] addr;
} mdma_fab_h2c_byp_dsc_in_st_t;

typedef struct packed {
  logic wbi; //(UDMA only)
  logic wbi_chk; //(UDMA only)
  logic [15:0] cidx; //(UDMA only)
  dma_dsc_out_size_e siz; // XDMA 32B, UDMA AXIS 8B & UDMA MM 16B
  logic [`QID_WIDTH-1:0] qid; // Q ID (UDMA only)
  logic [255:0] dsc;
} dma_c2h_byp_dsc_out_t;

typedef struct packed {
  logic [255:0] dsc;
} dma_h2c_byp_dsc_in_t;

`define NEW_BYPASS_IN_ONLY_XXX

typedef struct packed {
  logic [255:0] dsc;
} dma_c2h_byp_dsc_in_t;


typedef struct packed {
  mdma_host_id_t host_id;
  logic [1:0]  pend;
  logic [31:0] vec;
  mdma_fnid_t  fnc;
  logic req;
} cfg_interrupt_msix_req_t; // TODO: Remove all usage of this struct in CDX

typedef struct packed {
  logic fail;
  logic sent;
} cfg_interrupt_msix_ack_t;

typedef struct packed {
  logic [`MSIX_WIDTH-1:0] ack;
  logic fail;
// No completion function needed
// legacy mode supports only function 0.
// new mode supports 1 outstanding request at a time
} mdma_usr_irq_if_out_t;

typedef struct packed {
  logic vld;
  mdma_host_id_t host_id;
  logic  [`MSIX_WIDTH-1:0] vec;
  logic  [12:0] fnc;
  logic  [1:0]  pnd;
} mdma_usr_irq_if_in_t;

typedef struct packed {
  logic  [15:0] ack;
  logic fail;
// No completion function needed
// legacy mode supports only function 0.
// new mode supports outstanding request at a time
} xdma_usr_irq_if_out_t;

typedef struct packed {
  logic  [15:0] sent_vec;
  logic sent_fail;
  logic sent_vld;

  logic acc_vld;
  logic acc_fail;
} xdma_usr_irq_enc_if_out_t;

typedef struct packed {
  logic vld;
  logic [15:0] vec;
  logic [12:0] fnc;
  logic [1:0]  pnd;
} xdma_usr_irq_if_in_t;

typedef struct packed {
  logic [12:0] fnc;
  logic vld;
} usr_flr_if_out_t;

typedef struct packed {
  logic [12:0] fnc;
  logic vld;
} usr_flr_if_in_t;

// Dma Management Interface Mux Structs
typedef struct packed {
   logic eop;
   logic [16:0] dat;
} dma_mgmt_req_if_t;


typedef struct packed {
   logic [16:0] dat;
} dma_mgmt_cpl_if_t;

// Dma Management Interface Fabric Structs
typedef struct packed {
  logic vld;
  dma_mgmt_cpl_if_t pay;
} dma_mgmt_cpl_if_out_t;

typedef struct packed {
  logic crd;
} dma_mgmt_cpl_if_in_t;


typedef struct packed {
  logic crd;
} dma_mgmt_req_if_out_t;

typedef struct packed {
  logic vld;
  dma_mgmt_req_if_t pay;
} dma_mgmt_req_if_in_t;

typedef struct packed {
  logic crd;
} mdma_dsc_imm_crd_oif_t;
typedef struct packed {
  logic vld;
  mdma_dsc_eng_imm_crdt_t info;
} mdma_dsc_imm_crd_iif_t;

// Dma Management Transaction Structs
typedef struct packed  {
  logic [31:0]  dat;
  logic [31:0]  adr;
  logic [12:0]  fnc;
  logic [5:0]   msc;  // Misc.  Reserved
  logic [1:0]   cmd;  // 2'h0: Read, 2'h1 Write.
} dma_mgmt_req_t;

typedef struct packed  {
  logic [1:0]   sts;
  logic [31:0]  dat;
} dma_mgmt_cpl_t;

typedef struct packed {
  logic upd;
  logic [12:0] fnc;
} dma_mgmt_flr_done_t;

typedef struct packed {
   logic        sbe;
   logic        dbe;
   logic [31:0] log;
} ram_err_log_t;

typedef enum logic [1:0]{
   MDMA_RCP_DSC     = 0,
   MDMA_RCP_VIO_IDX = 1,
   MDMA_RCP_IMM     = 2,
   MDMA_RCP_RSV1    = 3
} rcp_evt_t;

typedef struct packed {
  logic [4:0]  err;
  logic [16:0] dat;
  logic [0:0]  chn; // H2C or C2H
  logic [12:0] qid;
  mdma_dsc_evt_e evt;
} ctxt_arb_t;

typedef struct packed {
  logic imm;
  dma_dsc_vio_fetch_e vio_idx;
  logic [1:0]  bsel;
  logic [4:0]  chn;
  logic [12:0] qid;
  logic [63:0] adr;
  mdma_dsc_hw_ctxt_t  hw_ctxt;
  mdma_ind_dsc_t sw_ctxt;
} dscf_pipe_t;

// SR: BDF Table
typedef struct packed {
  logic [31:0] pcie_addr_lo;
} bdf_addr_reg0;

typedef struct packed {
  logic [31:0] pcie_addr_hi;
} bdf_addr_reg1;

typedef struct packed {
  logic [8:0]  rsvd;    //31:23
  logic [19:0] pasid; //22:1
  logic pasid_en;//0
} bdf_pasid_reg;

typedef struct packed {
  logic [19:0] rsvd;    //31:12
  logic [11:0] func_id;//11:0
} bdf_function_reg;

typedef struct packed {
  logic [1:0] access_perm;//31:30
  logic       error;     //29
  logic [2:0] prot;     //28:26
  logic [25:0]win_size;//25:0
} bdf_window_reg;

typedef struct packed {
  logic [19:0] rsvd;   //31:12
  logic [1:0]  ats;   //11:10
  logic [9:0]  smid; //9:0
} bdf_smid_reg;

// BDF Table Lookup
typedef struct packed {
  logic [1:0]  ats;
  logic [9:0]  smid;
  logic [1:0]  access_perm;
  logic        error;
  logic [2:0]  prot;
  logic [25:0] win_size;
  logic [11:0] func_id;
  logic [19:0] pasid;
  logic        pasid_en;
  logic [63:0] pcie_addr;
} bdf_table_entry_t;

// BDF Error Type:
// 0 : trustzone violation
// 1 : incompleted BDF entry
// 2 : exceed BDF window size
// 3 : access permission violation
// 4 : error flag is set
// 8 : SMID mismatch
typedef struct packed {
  bdf_table_entry_t bdf_entry;
  logic [7:0]  bdf_tbl_idx;
  logic [3:0]  bdf_err_type;
  logic        bdf_err_det;
  logic [2:0]  bar_rlx_rd;
} bdf_lookup_result_t;

//AXI interrupt structs
typedef struct packed {
  logic vld;
  mdma_host_id_t host_id;
  mdma_int_vec_out_t  vec;
  mdma_fnid_t func_num;
} axi_intr_out_t;

typedef struct packed {
  logic ack;
} axi_intr_in_t;

// Cfg Extension Struct
typedef struct packed {
  logic [31:0] cfg_ext_read_data;
  logic cfg_ext_read_data_vld;
} cfg_ext_usr_in_t;


typedef struct packed {
  logic        cfg_ext_read_received;
  logic        cfg_ext_write_received;
  logic [31:0] cfg_ext_write_data;
  logic [3:0]  cfg_ext_write_byte_enable;
  logic [7:0]  cfg_ext_function_number;
  logic [9:0]  cfg_ext_register_number;
} cfg_ext_usr_out_t;

// Structures for Firmware Controlled Logic via APB such as PCIe Firewall
typedef struct packed {
  logic [25:0]   rsvd;          // TBD
  logic pcie_rq;       // [5]
  logic pcie_rc;       // [4]
  logic pcie_req;      // [3]
  logic axi_mm_mst_rd; // [2]
  logic axi_mm_mst_wr; // [1]
  logic rx_msg_fifo;   // [0]
} dma_sub_domains_t; // DMA Sub-domains

typedef struct packed {
  dma_sub_domains_t dma_soft_reset;   // per sub-domains
  logic pcie_firewall_en; // PCIe Firewall Enable
} fw_dma_ctl_t; // Controls for Firmware

typedef struct packed {
   dma_sub_domains_t dma_is_busy;   // per sub-domains
} fw_dma_sts_t; // Statuses for Firmware

// Debug enable
localparam DEBUG_INTERFACE_REG  = 3;
localparam DEBUG_INTERFACE_ONLY = 2;
localparam DEBUG_REG_ONLY       = 1;
localparam DEBUG_NONE           = 0;

// Convert VF to PF
function automatic mdma_fnid_t vf_to_pf (input mdma_fnid_t func_in, input  attr_dma_pf_t [3:0]  attr_dma_pf);

  localparam PF_NUM = 4;

  vf_to_pf = 'h0;

  if (func_in < PF_NUM)
  begin
     vf_to_pf = func_in;
  end
  else
  begin
    for (integer i = 0; i < PF_NUM; i = i+1)
      if ((func_in <  (attr_dma_pf[i].firstvf_offset + i + attr_dma_pf[i].num_vfs)) && // 1st vfoffset is relative to the PF
        (func_in >= (attr_dma_pf[i].firstvf_offset + i)))                             // 1st vfoffset is relative to the PF
        vf_to_pf = i[$bits(mdma_fnid_t)-1:0];
  end

endfunction

// Convert VF to PF. TODO: Not needed iN INT block. Needed in CDX? If not, remove.
function automatic mdma_fnid_t vf_to_pf2 (integer PF_NUM, input mdma_fnid_t func_in, input  attr_dma_pf_t [31:0]  attr_dma_pf);
  vf_to_pf2 = 'h0;

  if (func_in < PF_NUM)
  begin
     vf_to_pf2 = func_in;
  end
  else
  begin
    for (integer i = 0; i < PF_NUM; i = i+1)
      if ((func_in <  (attr_dma_pf[i].firstvf_offset + i + attr_dma_pf[i].num_vfs)) && // 1st vfoffset is relative to the PF
        (func_in >= (attr_dma_pf[i].firstvf_offset + i)))                             // 1st vfoffset is relative to the PF
        vf_to_pf2 = i[$bits(mdma_fnid_t)-1:0];
  end

endfunction


// Interface Conversion

`define PCIE_CC_TO_DMA_CC_IF(pcie_cc, dma_cc) \
assign pcie_cc.axis_cc_tvalid =       dma_cc.tvalid; \
assign pcie_cc.axis_cc_tdata  = 'h0 | dma_cc.tdata; \
assign pcie_cc.axis_cc_tuser  = 'h0 | dma_cc.tuser; \
assign pcie_cc.axis_cc_tkeep  = 'h0 | dma_cc.tkeep; \
assign pcie_cc.axis_cc_tlast  =       dma_cc.tlast; \
assign dma_cc.tready = 'h0 | pcie_cc.axis_cc_tready;

`define PCIE_CQ_TO_DMA_CQ_IF(pcie_cq, dma_cq) \
assign dma_cq.tvalid =     | pcie_cq.axis_cq_tvalid; \
assign dma_cq.tdata  = 'h0 | pcie_cq.axis_cq_tdata; \
assign dma_cq.tuser  = 'h0 | pcie_cq.axis_cq_tuser; \
assign dma_cq.tkeep  = 'h0 | pcie_cq.axis_cq_tkeep; \
assign dma_cq.tlast  =     | pcie_cq.axis_cq_tlast; \
assign pcie_cq.axis_cq_tready  = 'h0 | dma_cq.tready;

`define PCIE_RC_TO_DMA_RC_IF(pcie_rc, dma_rc) \
assign dma_rc.tvalid =     | pcie_rc.axis_rc_tvalid; \
assign dma_rc.tdata  = 'h0 | pcie_rc.axis_rc_tdata; \
assign dma_rc.tuser  = 'h0 | pcie_rc.axis_rc_tuser; \
assign dma_rc.tkeep  = 'h0 | pcie_rc.axis_rc_tkeep; \
assign dma_rc.tlast  =     | pcie_rc.axis_rc_tlast; \
assign pcie_rc.axis_rc_tready  = 'h0 | dma_rc.tready;

`define PCIE_RQ_TO_DMA_RQ_IF(pcie_rq, dma_rq) \
assign pcie_rq.axis_rq_tvalid =       dma_rq.tvalid; \
assign pcie_rq.axis_rq_tdata  = 'h0 | dma_rq.tdata; \
assign pcie_rq.axis_rq_tuser  = 'h0 | dma_rq.tuser; \
assign pcie_rq.axis_rq_tkeep  = 'h0 | dma_rq.tkeep; \
assign pcie_rq.axis_rq_tlast  =       dma_rq.tlast; \
assign dma_rq.tready = 'h0 | pcie_rq.axis_rq_tready;

typedef struct packed {
  logic [32-11-1:0] rsv;
  logic rc_discontinue;
  logic rc_prty_err;
  logic rc_flr;
  logic rc_timeout;
  logic rc_inv_bcnt;
  logic rc_inv_tag;
  logic rc_start_addr_mismch;
  logic rc_rid_tc_attr_mismch;
  logic rc_no_data;
  logic rc_ur_ca_crs;
  logic rc_poisoned;
} pcie_req_err_stat_t;

typedef struct packed {
  dsc_sbi_t dsb;   // qid, qen, ...
  logic [7:0] cnt;
  logic [2:0] err;
} dsc_outi_t;
typedef enum logic [1:0] {
  CDX_MM_WBK_DMAC = 3,
  CDX_MM_WBK_FAB1 = 2,
  CDX_MM_WBK_FAB0 = 1,
  CDX_MM_WBK_INT  = 0
} cdx_mm_wbk_chn_e;

typedef struct packed {
  cdm_client_id_t client_id;
  logic [3:0]     ring_sz_idx;
  tm_dsc_sts_t    tm_sts;
} cdm_tm_dsc_sts_t;

typedef struct packed {
  mdma_c2h_misc_t misc;
  cdm_client_id_t client_id;
  logic [3:0]     ring_sz_idx;
  tm_dsc_sts_t    tm_sts;
} new_tm_dsc_sts_t;

typedef struct packed {
  mdma_qidx_t cidx;
  logic       wbi;
  logic       wbi_chk;
} wb_chk_info_t;

`include "cpm5n_dma5_debug_defines.svh"
`endif
