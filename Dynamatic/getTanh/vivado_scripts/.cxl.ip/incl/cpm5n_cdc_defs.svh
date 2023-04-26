`ifndef CPM5N_CDX5N_CDC_DEFS
`define CPM5N_CDX5N_CDC_DEFS

`include "cpm5n_cdc_param_defs.svh"


typedef struct packed {
  logic  [($clog2(NUM_CLIENT))-1 : 0]  client_id;
  logic  [($clog2(NUM_QUEUE))-1 : 0]   q_id;
} cq_id_t;

typedef struct packed {
  cq_id_t  cq_id;
  logic [$clog2(NUM_CLIST)-1:0]  list_id;
  logic    vld;
} cam_ct_t;

typedef enum logic [ERROR_CODE_W-1:0]{
  NO_ERROR=0,
  RESP_INCOMPLETE = 1, 
  INSUF_DESC = 2, 
  LID_MISS=3, 
  POP_VIOLATE_RD = 4,
  WR_VIOLATE_RSVD = 5,  // Not mentioned in arch spec
  RESP_INCOMPLETE_AND_POP_VIOLATE_RD = 6,  // Not mentioned in arch spec
  INSUF_DESC_AND_POP_VIOLATE_RD = 7,  // Not mentioned in arch spec
  MAX_LOC_RSVD = 8  // Not mentioned in arch spec
} cdc_err_code_e;

// LIST STATE TABLE 
typedef struct packed {
   logic [9:0]  desc_in_cache;         // number of descriptors in cache for this particular q ID  
   logic [9:0]  desc_in_cache_to_pop;  // number of descriptors in cache for this particular q ID  
   logic [9:0]  desc_wr_pend;          // number of descriptors pendimg to be written in cache
   cq_id_t cq_id;                      // the qid within the associated client
   logic vld;                      // the qid within the associated client
   logic [CLINE_ID_W-1:0] wr_line_id;  // the fifo id into which the descriptors are to be written when the WriteDesc command arrives
   logic [CLINE_ID_W-1:0] rd_line_id;  // the fifo id into which the descriptors are to be read from when the ReadDesc command arrives 
   logic [CLINE_ID_W-1:0] pop_line_id; // the fifo id into which the descriptors are to be "pop"ped from when the pop ptr is updated
} clist_ctrl_t;



   //logic [7:0]  desc_wanted_per_job;  // descriptor this queue ID asked for each job, assumed to be constant all the time  
   //logic [5:0]  desc_wanted_per_job[MAX_OTSD_JOB-1:0];  // descriptor this queue ID asked for each job, assuming non constant 
//size = 1 + 4 + 8 + 10 + 10 +4 +12 +5 +11 +11 = 64 bits
//total size = 64*128 = 8192 
//total size = 64*1000 = 64K 

typedef struct packed {
   logic  asted;                      // 1'b1 if the list is associated 
   logic  wr_pend;                    // 1'b1 if the list is associated 
   logic [$clog2(MAX_OTSD_JOBS_PER_Q):0]  asted_cnt;            // getlist putlist count 
   logic flag_neg_astedcnt;
} clist_asted_t;

typedef struct packed {
   logic [CLINE_PTR_WIDTH:0] wr_ptr; 
   logic [CLINE_PTR_WIDTH:0] rd_ptr; 
   logic [CLINE_PTR_WIDTH:0] pop_ptr; 
   logic [CLINE_ID_W-1:0] next_line;   // the id of the next fifo chained to the current fifo
   logic [CLINE_ID_W-1:0] prev_line;   // the id of the prev fifo chained to the current fifo
   logic next_line_vld;   
} cline_ctrl_t;
// size = 6 + 6 + 6 + 1 + 5 + 11 + 1 = 31 bits
//total size = 31 * number of clines = 31 *2k = 62k Bits = 8KB


typedef struct packed {
  logic evict_en;
  logic getlist_en;
  logic wrdesc_en;
  logic rddesc_en;
  logic putlist_en;
} op_mask_t;

typedef struct packed {
  logic  [NUM_DESC_PER_CYCLE_W-1:0] [DESC_SIZE_BITS-1:0]  desc; //  128*4 = 512
  logic  [DESC_EXTRA_ACC_W-1:0]  desc_extra; //64  
  cq_id_t                              cq_id;  //12 
  logic  [($clog2(NUM_CLIST))-1 : 0]   list_id; // 9
  logic                                list_vld; //1 
  op_mask_t                            op_mask; // 5 
  logic  [DESC_WANT_NEED_W-1 : 0]      desc_wanted; // 6
  logic  [RPTR_DELTA_W-1 : 0]          rptr_delta; //6
  logic  [PPTR_DELTA_W-1 : 0]          pptr_delta;// 6
  logic  [WPTR_DELTA_W-1 : 0]          wptr_delta;//6
  logic                                flush_q;//1 
  logic                                eoq_flag;//1
  logic                                resp_needed;//1
} cdc_req_t;


typedef struct packed {
  logic  [NUM_DESC_PER_CYCLE_R-1:0] [DESC_SIZE_BITS-1:0]  desc;
  logic  [DESC_EXTRA_ACC_W-1:0]  desc_extra; 
  cq_id_t                              cq_id;
  logic  [($clog2(NUM_CLIST))-1 : 0]   list_id;
  op_mask_t                            op_mask;
  logic  [DESC_WANT_NEED_W-1 : 0]      desc_needed;
  logic  [RPTR_DELTA_W-1 : 0]          num_desc_read;
  logic  [NUM_DESC_EVCT_W-1 : 0]       num_desc_evict;
  cdc_err_code_e                       err_code;
  logic                                flush_resp; 
} cdc_resp_t;

typedef struct packed {
  cq_id_t                              cq_id;
  logic  [($clog2(NUM_CLIST))-1 : 0]   list_id;
  op_mask_t                            op_mask;
  logic  [DESC_WANT_NEED_W-1 : 0]      desc_needed;
  logic  [RPTR_DELTA_W-1 : 0]          num_desc_read;
  logic  [NUM_DESC_EVCT_W-1 : 0]       num_desc_evict;
  cdc_err_code_e                       err_code;
  logic                                flush_resp; 
} cdc_int_resp_t;


`endif
