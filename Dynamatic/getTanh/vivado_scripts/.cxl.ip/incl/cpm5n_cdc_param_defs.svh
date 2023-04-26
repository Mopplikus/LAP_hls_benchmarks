
`ifndef CDX5N_CDC_PARAM_DEFS
`define CDX5N_CDC_PARAM_DEFS

`define max2(v1, v2) ((v1) > (v2) ? (v1) : (v2))
`define max3(v1, v2, v3) `max2((v1), `max2((v2), (v3)))

// base params 
  parameter NUM_CLIENT             = 16;
  parameter NUM_QUEUE              = 4096;
  parameter NUM_CLIST              = 512;
  parameter OP_MASK_W              = 5;
  parameter NUM_CLINE             = 1024;
  parameter DESC_SIZE_BITS         = 129;
  parameter NUM_DESC_PER_CLINE     = 32;
  parameter NUM_DESC_PER_CYCLE_W     = 2;
  parameter NUM_DESC_PER_CYCLE_R     = 4;
  parameter NUM_DESC_PER_CYCLE_R_N   = 4;
  parameter NUM_DESC_PER_CYCLE_P     = 8;
  parameter TOTAL_CACHE_MEM_DEPTH  = NUM_CLINE * NUM_DESC_PER_CLINE;
  parameter IND_CACHE_MEM_DEPTH    = TOTAL_CACHE_MEM_DEPTH/NUM_DESC_PER_CYCLE_R;
  parameter DESC_WANT_NEED_W       = 7;
  parameter RPTR_DELTA_W           = 7;
  parameter WPTR_DELTA_W           = 2;
  parameter PPTR_DELTA_W           = 10;
  parameter NUM_DESC_EVCT_W        = 8;
  parameter ERROR_CODE_W           = 4;
  parameter CDC_MEM_WR_LAT          = 2;
  parameter CDC_MEM_RD_LAT          = 2;
  parameter DESC_EXTRA_W           = 64;
  parameter DESC_EXTRA_ACC_W       = 56;
  parameter TOTAL_NUM_STAGES       = 1+ CDC_MEM_RD_LAT + 1 + 1; // S1 + s2XN + s3 + s4
  parameter NUM_ENTRY_CAM          = 64;
  parameter MAX_OTSD_JOBS_PER_Q    = 8;

  parameter AXI_ADDR_WIDTH       = 16;
  parameter AXI_DATA_WIDTH       = 32;
  parameter AXI_USER_WIDTH       = 1;

//der params
  parameter CLIENT_ID_W          = $clog2(NUM_CLIENT);
  parameter QUEUE_ID_W           = $clog2(NUM_QUEUE);
  parameter CLIST_ID_W           = $clog2(NUM_CLIST);
  parameter CLINE_ID_W           = $clog2(NUM_CLINE);
  parameter CLINE_PTR_WIDTH      = $clog2(NUM_DESC_PER_CLINE);
`endif
