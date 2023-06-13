`ifndef CPM5N_CDX5N_CSI_PARAM_DEFS
`define CPM5N_CDX5N_CSI_PARAM_DEFS

`define max1(v1, v2) ((v1) > (v2) ? (v1) : (v2))
`define max2(v1, v2) ((v1) > (v2) ? (v1) : (v2))
`define max3(v1, v2, v3) `max2((v1), `max2((v2), (v3)))

  parameter C_NUM_CLNTS = 4;
  parameter C_NUM_TMT = C_NUM_CLNTS-1;

  parameter C_SEG_W = 160;        //Segment Width
  parameter C_SRC_ID_W = 4;       //Source ID width
  parameter C_DEST_ID_W = 4;      //Destination ID width
  parameter C_VIRT_CH_ID_W = 3;   //Virtual channel ID width
  parameter C_DEST_FIFO_ID_W = 9; //Virtual channel ID width
  parameter GBUF_ID_W = 11;       //Global Buffer ID width
  parameter LBUF_ID_W = C_DEST_FIFO_ID_W + $clog2(C_NUM_CLNTS);//C_DEST_ID_W;          //Local Buffer ID width
  parameter LBUF_ADD_W = 20;      //Local Buffer address width
  parameter C_WP_EBUF_D = 8;        
  parameter CSI_DW_LEN_W = 11;    //pkt size in dw    
  parameter C_JB_CHNK_LEN = CSI_DW_LEN_W +1;    //pkt size in dw + 28 bytes    
  parameter CSR_DATA_WIDTH = 32;
  parameter TCQ =0; 

  parameter C_JOB_SZ_W = CSI_DW_LEN_W+1; //To cover the value 4KB(1K DW) we need 11 bits.. 
//parameter C_NUM_MEM = 32;

  parameter C_JB_TMR_W = 20;
  parameter C_CFG_JB_TVAL_W = 9;

  parameter C_AXI_D_W = 32;
  parameter C_AXI_A_W = 17;

  parameter C_SMID = 12'hFFF;
///// Needs to be removed ///////
  parameter C_NUM_SEG_CDM  = 8;
  parameter C_NUM_SEG_PCIE = 4;
  parameter C_NUM_SEG_TNOC = 4;
  parameter C_NUM_SEG_PSX  = 4;
  parameter C_NUM_SEG_NPR  = 1;
//below should replace above

  parameter C_RD_HAS_FUR_CDM  = 0;
  parameter C_RD_HAS_FUR_PCIE = 1;
  parameter C_RD_HAS_FUR_TNOC = 1;
  parameter C_RD_HAS_FUR_PSX  = 0;

  parameter C_RD_RULE_CHK_EN_CDM  = 0;
  parameter C_RD_RULE_CHK_EN_PCIE = 1;
  parameter C_RD_RULE_CHK_EN_TNOC = 1;
  parameter C_RD_RULE_CHK_EN_PSX  = 1;

  parameter C_PCIE_PRCMPL_NUM_SEG = 4;
  parameter C_PCIE_PRCMPL_NUM_SINKS = 3;
  parameter C_PCIE_NPR_NUM_SEG = 1;
  parameter C_PCIE_NPR_NUM_SINKS = 2;

  parameter C_TNOC_PRCMPL_NUM_SEG = 4;
  parameter C_TNOC_PRCMPL_NUM_SINKS = 3;
  parameter C_TNOC_NPR_NUM_SEG = 1;
  parameter C_TNOC_NPR_NUM_SINKS = 2;

  parameter C_PSX_PRCMPL_NUM_SEG = 4;
  parameter C_PSX_PRCMPL_NUM_SINKS = 3;
  parameter C_PSX_NPR_NUM_SEG = 1;
  parameter C_PSX_NPR_NUM_SINKS = 2;

  parameter C_CDM_PRCMPL_NUM_SEG = 8;
  parameter C_CDM_PRCMPL_NUM_SINKS = 3;
  parameter C_CDM_NPR_NUM_SEG = 1;
  parameter C_CDM_NPR_NUM_SINKS = 3;


  parameter C_NUM_RP_PRTS_CDM  = 1;
  parameter C_NUM_RP_PRTS_PCIE = 4;
  parameter C_NUM_RP_PRTS_TNOC = 4;
  parameter C_NUM_RP_PRTS_PSX  = 1;
  parameter C_NUM_RP_PRTS_WR_CDM  = C_NUM_RP_PRTS_CDM*2;
  parameter C_NUM_RP_PRTS_WR_PCIE = C_NUM_RP_PRTS_PCIE*2;
  parameter C_NUM_RP_PRTS_WR_TNOC = C_NUM_RP_PRTS_TNOC*2;
  parameter C_NUM_RP_PRTS_WR_PSX  = C_NUM_RP_PRTS_PSX*2;

  parameter C_NUM_RP_SEG_CDM  = 8;
  parameter C_NUM_RP_SEG_PCIE = 4;
  parameter C_NUM_RP_SEG_TNOC = 4;
  parameter C_NUM_RP_SEG_PSX  = 4;

  parameter NUM_TEL_BUS_CDM = 4;
  parameter NUM_TEL_BUS_CDM_NPR = 1;
  parameter NUM_TEL_BUS_PCIE = 4;
  parameter NUM_TEL_BUS_PCIE_NPR = 1;
  parameter NUM_TEL_BUS_PSX = 4;
  parameter NUM_TEL_BUS_PSX_NPR = 1;
  parameter NUM_TEL_BUS_TNOC = 2;
  parameter NUM_TEL_BUS_TNOC_NPR = 1;

  //Per sink PR/CMPL buffer numbers
  parameter C_NUM_BUF_CDM  = 26;//108;
  parameter C_NUM_BUF_PCIE = 26;//104;
  parameter C_NUM_BUF_TNOC = 26;//104;
  parameter C_NUM_BUF_PSX  = 8;//32;

  //Per Sink NPR Buffer numbers
  parameter C_NUM_NPR_BUF_CDM  = 0;
  parameter C_NUM_NPR_BUF_PCIE = 18;//68;
  parameter C_NUM_NPR_BUF_TNOC = 16;//68;
  parameter C_NUM_NPR_BUF_PSX  = 6;//20;

  parameter NUM_TMT_CDM  = 3;
  parameter NUM_TMT_PCIE = 3;
  parameter NUM_TMT_TNOC = 3;
  parameter NUM_TMT_PSX  = 3;

  parameter CDM_SNK_ID  = 2'b00;
  parameter PCIE_SNK_ID = 2'b01;
  parameter TNOC_SNK_ID = 2'b10;
  parameter PSX_SNK_ID  = 2'b11;

  //Total number of PR/CMPL buffers
  parameter C_NUM_PCMPL_BUF = (C_NUM_BUF_CDM+C_NUM_BUF_PCIE+C_NUM_BUF_TNOC+C_NUM_BUF_PSX);

  //Total number of NPR buffers
  parameter C_NUM_NPR_BUF = (C_NUM_NPR_BUF_CDM+C_NUM_NPR_BUF_PCIE+C_NUM_NPR_BUF_TNOC+C_NUM_NPR_BUF_PSX);

  parameter C_NUM_BUF = C_NUM_PCMPL_BUF + C_NUM_NPR_BUF;

//Parameter definition for the number of buffer per source sink pair
// Format:   NUM_BUF_SRC_SNK
  parameter int NUM_BUF_CDM_PCIE  = 32;
  parameter int NUM_BUF_CDM_TNOC  = 32;
  parameter int NUM_BUF_CDM_PSX   = 32;

  parameter int NUM_BUF_PCIE_CDM  = 32;
  parameter int NUM_BUF_PCIE_TNOC = 32;
  parameter int NUM_BUF_PCIE_PSX  = 32;

  parameter int NUM_BUF_TNOC_CDM  = 32;
  parameter int NUM_BUF_TNOC_PCIE = 32;
  parameter int NUM_BUF_TNOC_PSX  = 32;

  parameter int NUM_BUF_PSX_CDM   = 32;
  parameter int NUM_BUF_PSX_PCIE  = 32;
  parameter int NUM_BUF_PSX_TNOC  = 32;

  parameter int NUM_NPR_BUF_CDM_PCIE  = 32;
  parameter int NUM_NPR_BUF_CDM_TNOC  = 32;
  parameter int NUM_NPR_BUF_CDM_PSX   = 32;

  parameter int NUM_NPR_BUF_PCIE_CDM  = 32;
  parameter int NUM_NPR_BUF_PCIE_TNOC = 32;
  parameter int NUM_NPR_BUF_PCIE_PSX  = 32;

  parameter int NUM_NPR_BUF_TNOC_CDM  = 32;
  parameter int NUM_NPR_BUF_TNOC_PCIE = 32;
  parameter int NUM_NPR_BUF_TNOC_PSX  = 32;

  parameter int NUM_NPR_BUF_PSX_CDM   = 32;
  parameter int NUM_NPR_BUF_PSX_PCIE  = 32;
  parameter int NUM_NPR_BUF_PSX_TNOC  = 32;

//parameter int NUM_DEST_CSCHED_A1  = 72;   
  parameter int NUM_DEST_CSCHED_A2  = 8;   
  parameter int NUM_DEST_CSCHED_A3  = 10;   
  parameter int NUM_DEST_CSCHED_A4  = 8;   
  parameter int NUM_DEST_CSCHED_A5  = 4;   
//parameter int NUM_DEST_CSCHED_B   = 20;   
  parameter int NUM_DEST_CSCHED_MAX = 16;   
  parameter int CSCHED_DEST_ID_W    = 3 + $clog2(NUM_DEST_CSCHED_MAX); 
//parameter CSCHED_A1_ID = 3'b000; 
  parameter CSCHED_A2_ID = 3'b000; 
  parameter CSCHED_A3_ID = 3'b001; 
  parameter CSCHED_A4_ID = 3'b010; 
  parameter CSCHED_A5_ID = 3'b011; 
//parameter CSCHED_B_ID  = 3'b101; 

  parameter int CRDT_CNTR_W_PCIE_SNK = $clog2(`max3(NUM_BUF_CDM_PCIE,NUM_BUF_TNOC_PCIE,NUM_BUF_PSX_PCIE));
  parameter int CRDT_CNTR_W_TNOC_SNK = $clog2(`max3(NUM_BUF_CDM_TNOC,NUM_BUF_PCIE_TNOC,NUM_BUF_PSX_TNOC));
  parameter int CRDT_CNTR_W_PSX_SNK  = $clog2(`max3(NUM_BUF_CDM_PSX,NUM_BUF_TNOC_PSX,NUM_BUF_PCIE_PSX));
  parameter int CRDT_CNTR_W_CDM_SNK  = $clog2(`max3(NUM_BUF_PCIE_CDM,NUM_BUF_TNOC_CDM,NUM_BUF_PSX_CDM));
  parameter int TEMP                 = `max3(CRDT_CNTR_W_PCIE_SNK,CRDT_CNTR_W_TNOC_SNK,CRDT_CNTR_W_PSX_SNK);
  parameter int CRDT_CNTR_W_MAX      = `max2(CRDT_CNTR_W_CDM_SNK,TEMP);

  parameter ACC_CRDT_W_LCRDT = 16;
  parameter ACC_CRDT_W_DCRDT = 6;

///// CAM possible requests of global and local IDs
  parameter C_NUM_CDM_CAM_LBUF_REQ  =  C_PCIE_PRCMPL_NUM_SEG + C_TNOC_PRCMPL_NUM_SEG + C_PSX_PRCMPL_NUM_SEG ; // no NPR to CDM
  parameter C_NUM_CDM_CAM_GBUF_REQ  =  1; // no furcation
  parameter C_NUM_PCIE_CAM_LBUF_REQ =  C_CDM_PRCMPL_NUM_SEG + C_TNOC_PRCMPL_NUM_SEG + C_PSX_PRCMPL_NUM_SEG + 
                                       C_CDM_NPR_NUM_SEG    + C_TNOC_NPR_NUM_SEG    + C_PSX_NPR_NUM_SEG ; 
  parameter C_NUM_PCIE_CAM_GBUF_REQ =  C_PCIE_PRCMPL_NUM_SEG; 
  parameter C_NUM_PSX_CAM_LBUF_REQ  =  C_CDM_PRCMPL_NUM_SEG + C_TNOC_PRCMPL_NUM_SEG + C_PCIE_PRCMPL_NUM_SEG + 
                                       C_CDM_NPR_NUM_SEG    + C_TNOC_NPR_NUM_SEG    + C_PCIE_NPR_NUM_SEG ; 
  parameter C_NUM_PSX_CAM_GBUF_REQ  =  C_PSX_PRCMPL_NUM_SEG; // confirm furcation allowed
  parameter C_NUM_TNOC_CAM_LBUF_REQ =  C_CDM_PRCMPL_NUM_SEG + C_PSX_PRCMPL_NUM_SEG + C_PCIE_PRCMPL_NUM_SEG + 
                                       C_CDM_NPR_NUM_SEG    + C_PSX_NPR_NUM_SEG    + C_PCIE_NPR_NUM_SEG ; 
  parameter C_NUM_TNOC_CAM_GBUF_REQ =  C_TNOC_PRCMPL_NUM_SEG;

  ///RAM related Parameters
  parameter NUM_PRCMPL_CDM_RAMS  = 32;
  parameter NUM_PRCMPL_PCIE_RAMS = 32;
  parameter NUM_PRCMPL_TNOC_RAMS = 32;
  parameter NUM_PRCMPL_PSX_RAMS  = 32;

  parameter NUM_NPR_CDM_RAMS  = 16;
  parameter NUM_NPR_PCIE_RAMS = 16;
  parameter NUM_NPR_TNOC_RAMS = 16;
  parameter NUM_NPR_PSX_RAMS  = 16;

  parameter NUM_NPR_RAMS = 16;

  parameter RAM_DEPTH = 5120;
  //Read governor params
  parameter MAX_CMPL_DATA_OTSD = 256*1024;
  parameter MAX_CMPL_DATA_OTSD_IN_DW = 256*1024/4;
  parameter MAX_NPR_OTSD = 1024;


  //RAM related parameters End

  parameter int NUM_SEG_ARRAY [C_NUM_CLNTS-1:0] = {C_NUM_SEG_PSX,C_NUM_SEG_TNOC,C_NUM_SEG_PCIE,C_NUM_SEG_CDM};

  parameter int NUM_BUF_ARRAY [C_NUM_CLNTS-1:0] = {C_NUM_BUF_PSX,C_NUM_BUF_TNOC,C_NUM_BUF_PCIE,C_NUM_BUF_CDM};

  parameter int NUM_RP_ARRAY  [C_NUM_CLNTS-1:0] = {C_NUM_RP_PRTS_PSX,C_NUM_RP_PRTS_TNOC,C_NUM_RP_PRTS_PCIE,C_NUM_RP_PRTS_CDM};

  parameter NUM_WP_PRTS_CDM  = (C_NUM_SEG_PCIE+C_NUM_SEG_TNOC+C_NUM_SEG_PSX );
  parameter NUM_WP_PRTS_PCIE = (C_NUM_SEG_CDM +C_NUM_SEG_TNOC+C_NUM_SEG_PSX );
  parameter NUM_WP_PRTS_TNOC = (C_NUM_SEG_CDM +C_NUM_SEG_PCIE+C_NUM_SEG_PSX );
  parameter NUM_WP_PRTS_PSX  = (C_NUM_SEG_CDM +C_NUM_SEG_PCIE+C_NUM_SEG_TNOC);

  parameter NUM_NPR_WP_PRTS_CDM  = 0;//CDM SINK Has 0 NPR buffers
  parameter NUM_NPR_WP_PRTS_PCIE = (C_CDM_NPR_NUM_SEG + C_TNOC_NPR_NUM_SEG + C_PSX_NPR_NUM_SEG  );
  parameter NUM_NPR_WP_PRTS_TNOC = (C_CDM_NPR_NUM_SEG + C_TNOC_NPR_NUM_SEG + C_PSX_NPR_NUM_SEG  );
  parameter NUM_NPR_WP_PRTS_PSX  = (C_CDM_NPR_NUM_SEG + C_PCIE_NPR_NUM_SEG + C_TNOC_NPR_NUM_SEG );

  parameter int NUM_WP_ARRAY  [C_NUM_CLNTS-1:0] = {NUM_WP_PRTS_PSX,NUM_WP_PRTS_TNOC,NUM_WP_PRTS_PCIE,NUM_WP_PRTS_CDM};
  //PR/CMPL Sink Identifier Bit Position
  parameter SA_BIT_POS = $clog2(C_NUM_BUF_CDM+C_NUM_BUF_PCIE+C_NUM_BUF_TNOC+C_NUM_BUF_PSX);
  //NPR Sink Identifier Bit Position 
  parameter NPR_SA_BIT_POS = $clog2(C_NUM_NPR_BUF_CDM+C_NUM_NPR_BUF_PCIE+C_NUM_NPR_BUF_TNOC+C_NUM_NPR_BUF_PSX);
  
  parameter C_NUM_SRCS_CDM  = 3;
  parameter C_NUM_SRCS_PCIE = 3;
  parameter C_NUM_SRCS_TNOC = 3;
  parameter C_NUM_SRCS_PSX  = 3;
  parameter C_NUM_NPR_SRCS_CDM  = 0;
  parameter C_NUM_NPR_SRCS_PCIE = 3;
  parameter C_NUM_NPR_SRCS_TNOC = 3;
  parameter C_NUM_NPR_SRCS_PSX  = 3;

  parameter PCI_CSI_PR_SEQ_CNT     = 84;                                    
  parameter PCI_CSI_NPR_SEQ_CNT    = 68;
  parameter PCI_CSI_CMPL_SEQ_CNT   = 20;

  parameter TNOC_CSI_PR_SEQ_CNT    = 84;
  parameter TNOC_CSI_NPR_SEQ_CNT   = 68;
  parameter TNOC_CSI_CMPL_SEQ_CNT  = 20;

  parameter CDM_CSI_PR_SEQ_CNT     = 0;
  parameter CDM_CSI_NPR_SEQ_CNT    = 0;
  parameter CDM_CSI_CMPL_SEQ_CNT   = 108;

  parameter PSX_CSI_PR_SEQ_CNT     = 52;
  parameter PSX_CSI_NPR_SEQ_CNT    = 20;
  parameter PSX_CSI_CMPL_SEQ_CNT   = 8;

  parameter C_RP_EBUF_D = 3;
  parameter C_CAP_HDR_BYTES = 28;
  parameter C_CRC_BYTES = 4;
  parameter CAP_FLOW_WID = 2;
  parameter CAP_TYPE_WID = 6;
  parameter CSI_PR_SEQ_WID = 40;
  parameter CSI_CAP_PR_SEQ_WID = 8;
  parameter CAP_PLD_DW_WID = 10;
//parameter JSZ_WID        = 8;
  parameter JR_SIZE_WID    = 8;
  parameter C_DEBUG_EN     = 1;
  
  parameter FUR_ATTR_WID           = 3;
  parameter SNK_THRES_WID          = 12;


  parameter PCI_SINK_SRC_NODE_AWIDTH 	= 8;
  parameter PCI_SINK_SCRED_3STATE_EN  = 1;
  parameter PCI_SINK_DEST_AWIDTH_INT  = 4;
  parameter PCI_SINK_C_MTU_SIZE       = 2;
 		
  parameter TNOC_SINK_SRC_NODE_AWIDTH = 8;
  parameter TNOC_SINK_SCRED_3STATE_EN = 1;
  parameter TNOC_SINK_DEST_AWIDTH_INT = 4;
  parameter TNOC_SINK_C_MTU_SIZE      = 2; 	

  parameter CDM_SINK_SRC_NODE_AWIDTH 	= 7;
  parameter CDM_SINK_SCRED_3STATE_EN  = 1;
  parameter CDM_SINK_DEST_AWIDTH_INT  = 1;
  parameter CDM_SINK_C_MTU_SIZE       = 2; 	

  parameter BNOC_SINK_SRC_NODE_AWIDTH = 6;
  parameter BNOC_SINK_SCRED_3STATE_EN = 1;
  parameter BNOC_SINK_DEST_AWIDTH_INT = 2;
  parameter BNOC_SINK_C_MTU_SIZE      = 2;	
  
  parameter PR_CTR_REF_W = 8;
  parameter SYNC_CTR_PRCMPL_REF_W = 8;
  parameter SRC_LCL_CRD_CTR_REF_W = 8;
`endif
