`ifndef _ddrmc5_dc_common_define_vh_
`define _ddrmc5_dc_common_define_vh_


`define D5_DC_ADDR_WIDTH 48
`define D5_DC_ADDR_RANGE_LSB 28
`define D5_DC_NUM_ADDR_RANGE 2
`define D5_DC_DEC_SEL_WIDTH 6
`define D5_X32_PER_CH   2'b01
`define D5_X16_PER_CH   2'b10

`define D5_DC_CHNK_V_DLY_LENGTH 2
`define D5_DC_CHNK_V_DLY_OUT    ( `D5_DC_CHNK_V_DLY_LENGTH - 1 )
`define D5_DC_CHNK_V_UPPER      1
`define D5_DC_CHNK_V_LOWER      0

`define D5_DC_DRAM_RAS_CMD_BIT   16
`define D5_DC_DRAM_CAS_CMD_BIT   15
`define D5_DC_DRAM_WE_CMD_BIT    14
`define D5_DC_DRAM_PRE_CMD_ADDR  ( 3'b010 << `D5_DC_DRAM_WE_CMD_BIT )

`define D5_DC_DRAM_SCRUB_BANKADDR_WIDTH 3
`define D5_DC_DRAM_SCRUB_BANKADDR_MSB  ( `D5_DC_DRAM_SCRUB_BANKADDR_WIDTH -1 )


`define D5_DC_DRAM_ROWADDR_WIDTH 18
`define D5_DC_DRAM_COLADDR_WIDTH 11
`define D5_DC_DRAM_BANKADDR_WIDTH 2
`define D5_DC_DRAM_GRPADDR_WIDTH 3    // JJ FIXME DDR5   should be 4 bits
`define D5_DC_DRAM_RANKADDR_WIDTH 2
`define D5_DC_DRAM_LRANKADDR_WIDTH 4
`define D5_DC_LPDDR5_GRPADDR_WIDTH 2
`define D5_DC_DRAM_CA_ADDR_WIDTH 14


`define D5_DC_DRAM_BGRL_WIDTH (`D5_DC_DRAM_BANKADDR_WIDTH  +  `D5_DC_DRAM_GRPADDR_WIDTH  + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH)
`define D5_DC_DRAM_XXRL_WIDTH (`D5_DC_DRAM_RANKADDR_WIDTH  +  `D5_DC_DRAM_LRANKADDR_WIDTH)
`define D5_DC_DRAM_BGXX_WIDTH (`D5_DC_DRAM_BANKADDR_WIDTH  +  `D5_DC_DRAM_GRPADDR_WIDTH)
`define D5_DC_DRAM_BXRL_WIDTH (`D5_DC_DRAM_BANKADDR_WIDTH  + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH)
`define D5_DC_DRAM_XGRL_WIDTH (`D5_DC_DRAM_GRPADDR_WIDTH   + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH)

`define D5_DC_DRAM_BGRL_LRANK  0 +: `D5_DC_DRAM_LRANKADDR_WIDTH
`define D5_DC_DRAM_BGRL_RANK   `D5_DC_DRAM_LRANKADDR_WIDTH +: `D5_DC_DRAM_RANKADDR_WIDTH
`define D5_DC_DRAM_BGRL_GROUP  `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH +: `D5_DC_DRAM_GRPADDR_WIDTH
`define D5_DC_DRAM_BGRL_BANK   `D5_DC_DRAM_GRPADDR_WIDTH + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH +: `D5_DC_DRAM_BANKADDR_WIDTH 
`define D5_DC_DRAM_BGRL_COL    `D5_DC_DRAM_GRPADDR_WIDTH + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH + `D5_DC_DRAM_BANKADDR_WIDTH +: `D5_DC_DRAM_COLADDR_WIDTH
`define D5_DC_DRAM_BGRL_ROW    `D5_DC_DRAM_GRPADDR_WIDTH + `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH + `D5_DC_DRAM_BANKADDR_WIDTH + `D5_DC_DRAM_COLADDR_WIDTH +: `D5_DC_DRAM_ROWADDR_WIDTH

`define D5_DC_DRAM_RLGB_RANK_MSB    ( `D5_DC_DRAM_BGRL_WIDTH - 1 )
`define D5_DC_DRAM_BGRL_RANK_MSB    ( `D5_DC_DRAM_XXRL_WIDTH - 1 )
`define D5_DC_DRAM_LPDDR4_BXRX_WIDTH (`D5_DC_DRAM_BANKADDR_WIDTH  + 1  + `D5_DC_DRAM_RANKADDR_WIDTH - 1)

`define D5_DC_DRAM_SAFE_BGRL_WIDTH  ( `D5_DC_DRAM_BGRL_WIDTH  -1 )
`define D5_DC_DRAM_SAFE_XXRL_WIDTH  ( `D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH  -1 )
`define D5_DC_SAFE_BGRL_RANK_MSB    ( `D5_DC_DRAM_SAFE_XXRL_WIDTH - 1 )

`define D5_DC_NUM_BGRL  ( 32'b1<<( `D5_DC_DRAM_BGRL_WIDTH ) )
`define D5_DC_NUM_XXRL  ( 32'b1<<(`D5_DC_DRAM_RANKADDR_WIDTH + `D5_DC_DRAM_LRANKADDR_WIDTH ) )
`define D5_DC_NUM_RANK  ( 32'b1<<( `D5_DC_DRAM_RANKADDR_WIDTH ) )
`define D5_DC_NUM_LRANK ( 32'b1<<( `D5_DC_DRAM_LRANKADDR_WIDTH ) )
`define D5_DC_NUM_BXRX_LPDDR4  ( 32'b1<<( `D5_DC_DRAM_LPDDR4_BXRX_WIDTH) )

`define D5_DC_NUM_SAFE_BGRL  ( 32'b1<<( `D5_DC_DRAM_SAFE_BGRL_WIDTH ) )
`define D5_DC_NUM_SAFE_BGXX  ( 32'b1<<( `D5_DC_DRAM_BANKADDR_WIDTH + `D5_DC_DRAM_GRPADDR_WIDTH ) )
`define D5_DC_NUM_SAFE_XXRL  ( 32'b1<<( `D5_DC_DRAM_SAFE_XXRL_WIDTH ) )

`define D5_DC_DRAM_SAFE_L_LSB  0
`define D5_DC_DRAM_SAFE_L_MSB (`D5_DC_DRAM_LRANKADDR_WIDTH-2)
`define D5_DC_DRAM_SAFE_R_LSB (`D5_DC_DRAM_SAFE_L_MSB+1)
`define D5_DC_DRAM_SAFE_R_MSB (`D5_DC_DRAM_SAFE_R_LSB+`D5_DC_DRAM_RANKADDR_WIDTH-1)
`define D5_DC_DRAM_SAFE_G_LSB (`D5_DC_DRAM_SAFE_R_MSB+1)
`define D5_DC_DRAM_SAFE_G_MSB (`D5_DC_DRAM_SAFE_G_LSB+`D5_DC_DRAM_GRPADDR_WIDTH-1)
`define D5_DC_DRAM_SAFE_B_LSB (`D5_DC_DRAM_SAFE_G_MSB+1)
`define D5_DC_DRAM_SAFE_B_MSB (`D5_DC_DRAM_SAFE_B_LSB+`D5_DC_DRAM_BANKADDR_WIDTH-1)

`define D5_DC_DRAM_SAFE_LPDDR4_R_LSB  0
`define D5_DC_DRAM_SAFE_LPDDR4_R_MSB  0
`define D5_DC_DRAM_SAFE_LPDDR4_B_LSB  `D5_DC_DRAM_SAFE_LPDDR4_R_MSB+1  //1
`define D5_DC_DRAM_SAFE_LPDDR4_B_MSB  `D5_DC_DRAM_SAFE_LPDDR4_B_LSB+`D5_DC_DRAM_BANKADDR_WIDTH  //3

`define D5_DC_DRAM_L_LSB  0
`define D5_DC_DRAM_L_MSB (`D5_DC_DRAM_LRANKADDR_WIDTH-1)
`define D5_DC_DRAM_R_LSB (`D5_DC_DRAM_L_MSB+1)
`define D5_DC_DRAM_R_MSB (`D5_DC_DRAM_R_LSB+`D5_DC_DRAM_RANKADDR_WIDTH-1)
`define D5_DC_DRAM_G_LSB (`D5_DC_DRAM_R_MSB+1)
`define D5_DC_DRAM_G_MSB (`D5_DC_DRAM_G_LSB+`D5_DC_DRAM_GRPADDR_WIDTH-1)
`define D5_DC_DRAM_B_LSB (`D5_DC_DRAM_G_MSB+1)
`define D5_DC_DRAM_B_MSB (`D5_DC_DRAM_B_LSB+`D5_DC_DRAM_BANKADDR_WIDTH-1)
`define D5_DC_DRAM_ADDR_WIDTH      (`D5_DC_DRAM_ROWADDR_WIDTH  + `D5_DC_DRAM_COLADDR_WIDTH  + `D5_DC_DRAM_BGRL_WIDTH)
`define D5_DC_DRAM_ACAM_ADDR_WIDTH (`D5_DC_DRAM_ADDR_WIDTH + 1)
`define D5_DC_DDR4_ACAM_MASK ( 3'b111 << ( `D5_DC_DRAM_BGRL_WIDTH ) )
`define D5_DC_LP4_ACAM_MASK ( 4'b1111 << ( `D5_DC_DRAM_BGRL_WIDTH ) )
`define D5_DC_LPDDR4_CA_PIN_WIDTH 6   
`define D5_DC_PT_TIMER_WIDTH 2
`define D5_DC_PT_COUNTER_WIDTH 16
`define D5_DC_ARB_CMD_TYPE    9
`define D5_DC_ARB_RD_CAS_BIT  8
`define D5_DC_ARB_WR_CAS_BIT  7
`define D5_DC_ARB_WIDTH       7
`define D5_DC_ARB_MRS_BIT     6
`define D5_DC_ARB_REF_BIT     5
`define D5_DC_ARB_RD_ACT_BIT  4
`define D5_DC_ARB_WR_ACT_BIT  3
`define D5_DC_ARB_RD_PRE_BIT  2
`define D5_DC_ARB_WR_PRE_BIT  1
`define D5_DC_ARB_PT_PRE_BIT  0

`define D5_DC_ENTRY_NUM 48
`define D5_DC_REQ_WIDTH 48
`define D5_DC_ENTRY_ENCODED 6
`define D5_DC_ENTRY_ID_WIDTH 8     //used in dc, na, xpi, crypto, cal
`define D5_DC_TXNQ_RES_SEL `D5_DC_ENTRY_NUM*`D5_DC_DRAM_BGRL_WIDTH
`define D5_DC_HIT_COUNT_WIDTH 6
`define D5_DC_OTF_SCRUB_COUNT_WIDTH 2
`define D5_DC_OTF_SCRUB_REQ_DELAY 2
`define D5_DC_SKIP_COUNT_WIDTH 10

`define D5_DC_SCRUB_INTVL_WIDTH 24
`define D5_DC_SCRUB_TO_INTVL_WIDTH 32
`define D5_DC_NUM_FULL_SCRUB_WIDTH 8
`define D5_DC_SCRUB_ASYNC_FIFO_DEPTH 6

`define D5_DC2CAL_SEL_WIDTH 16
`define D5_DC2CAL_ACT_N_WIDTH 4
`define D5_DC2CAL_ADDR_WIDTH 56
`define D5_DC2CAL_CKE_WIDTH 8
`define D5_DC2CAL_BANK_WIDTH 8
`define D5_DC2CAL_GRP_WIDTH 12
`define D5_DC2CAL_CBIT_WIDTH 16
`define D5_DC2CAL_PAR_WIDTH 4
`define D5_DC2CAL_ODT_WIDTH 8   
`define D5_DC2CAL_RESET_WIDTH 2
`define D5_DC2CAL_WR_DATA_WIDTH 320
`define D5_DC2CAL_WR_DM_WIDTH    40
`define D5_CAL2DC_RD_DATA_WIDTH 320

`define D5_CAL2DC_DQ_WIDTH  320
`define D5_CAL2DC_CB_WIDTH   16
`define D5_CAL2DC_DM_WIDTH   40


`define D5_ODT_ON_COUNTER_WIDTH 5    
`define D5_ODT_WAIT_COUNTER_WIDTH 5
`define D5_ODT_PATTEN_WIDTH  64    //total shift size including wait time and on time

`define D5_DC_BE_WIDTH        36
`define D5_DC_BE_ALIGN_WIDTH   8

`define D5_DC_FAR_CMD_WIDTH 6

//txnq module
`define D5_TXNQ_FSM_WIDTH 8
`define D5_TXNQ_FSM_IDLE       8'b0000_0001
`define D5_TXNQ_FSM_READ       8'b0000_0010
`define D5_TXNQ_FSM_WRITE      8'b0000_0100
`define D5_TXNQ_FSM_SCRUB      8'b0000_1000
`define D5_TXNQ_FSM_RWAIT      8'b0001_0000
`define D5_TXNQ_FSM_WWAIT      8'b0010_0000
`define D5_TXNQ_FSM_DALOC      8'b0100_0000
`define D5_TXNQ_FSM_DRAIN_CAS  8'b1000_0000
`define D5_TXNQ_FSM_IDLE_BIT 0
`define D5_TXNQ_FSM_READ_BIT 1
`define D5_TXNQ_FSM_WRITE_BIT 2
`define D5_TXNQ_FSM_RWAIT_BIT 4
`define D5_TXNQ_FSM_WWAIT_BIT 5

`define D5_TXNQ_ARB_FSM_WIDTH 		5
`define D5_TXNQ_ARB_FSM_RD_PRIORITY     5'b00_001
`define D5_TXNQ_ARB_FSM_RD_STARVED      5'b00_010
`define D5_TXNQ_ARB_FSM_WR_RD_PRIORITY  5'b00_100
`define D5_TXNQ_ARB_FSM_WR_TOP          5'b01_000
`define D5_TXNQ_ARB_FSM_WR_PRIORITY     5'b10_000
`define D5_TXNQ_ARB_FSM_RD_PRIORITY_BIT     1
`define D5_TXNQ_ARB_FSM_RD_STARVED_BIT      2
`define D5_TXNQ_ARB_FSM_WR_RD_PRIORITY_BIT  3
`define D5_TXNQ_ARB_FSM_WR_TOP_BIT          4
`define D5_TXNQ_ARB_FSM_WR_PRIORITY_BIT     5
`define D5_TXNQ_ARB_TIMER_WIDTH  		16

`define D5_TXNQ_SKIP_FSM_WIDTH  3
`define D5_TXNQ_SKIP_FSM_IDLE   3'b001
`define D5_TXNQ_SKIP_FSM_READ   3'b010
`define D5_TXNQ_SKIP_FSM_WRITE  3'b100


`define D5_PER_RD_FSM_WIDTH 15
`define D5_PER_RD_FSM_IDLE    15'b000_0000_0000_0001
`define D5_PER_RD_FSM_ISCRUB  15'b000_0000_0000_0010
`define D5_PER_RD_FSM_INTVLW  15'b000_0000_0000_0100
`define D5_PER_RD_FSM_ASCRUB  15'b000_0000_0000_1000
`define D5_PER_RD_FSM_REQW    15'b000_0000_0001_0000
`define D5_PER_RD_FSM_REQA    15'b000_0000_0010_0000
`define D5_PER_RD_FSM_DONEW   15'b000_0000_0100_0000
`define D5_PER_RD_FSM_USERB   15'b000_0000_1000_0000
`define D5_PER_RD_FSM_HOLD    15'b000_0001_0000_0000
`define D5_PER_RD_FSM_IFILL   15'b000_0010_0000_0000
`define D5_PER_RD_FSM_TAVAIL  15'b000_0100_0000_0000
`define D5_PER_RD_FSM_TFULL   15'b000_1000_0000_0000
`define D5_PER_RD_FSM_TWAIT   15'b001_0000_0000_0000
`define D5_PER_RD_FSM_TPREQ   15'b010_0000_0000_0000
`define D5_PER_RD_FSM_TPDONE  15'b100_0000_0000_0000
`define D5_PER_RD_FSM_IDLE_BIT 0
`define D5_PER_RD_FSM_DONEW_BIT 6
`define D5_PER_RD_FSM_HOLD_BIT 8

`define D5_USER_REF_FSM_WIDTH 3
`define D5_USER_REF_FSM_IDLE  3'b001
`define D5_USER_REF_FSM_INC   3'b010
`define D5_USER_REF_FSM_ACK   3'b100


`define D5_TFAW_SHIFT_WIDTH 80
`define D5_TFAW_SHIFT_ID_WIDTH 8
`define D5_TFAW_DLR_SHIFT_ID_WIDTH 6
`define D5_TFAW_COUNTER_WIDTH 3
`define D5_TRP_TIMER_WIDTH  8
`define D5_TAP_RP_TIMER_WIDTH  10
`define D5_TRAS_TIMER_WIDTH 8
`define D5_TRCD_TIMER_WIDTH 8
`define D5_TRTP_TIMER_WIDTH 5
`define D5_TWTP_TIMER_WIDTH 8
`define D5_TCCD_TIMER_WIDTH 8
`define D5_TRRD_TIMER_WIDTH 5
`define D5_TRRD_DLR_TIMER_WIDTH 4
`define D5_TRFC_TIMER_WIDTH 12
`define D5_TRFC_TIMER_NUM   256
`define D5_TRFC_TIMER_VEC_WIDTH    `D5_TRFC_TIMER_NUM*`D5_TRFC_TIMER_WIDTH
`define D5_TREF_TIMER_WIDTH 8
`define D5_TRFM_TIMER_WIDTH 8


`define D5_TCS_MRW_2ANY 6
`define D5_TCS_MRR_2ANY 6

`define D5_DC_DDR4_CMD_WIDTH 18
`define D5_DC_LPDDR4_OPCODE_WIDTH 8
`define D5_DC_LPDDR5_OPCODE_WIDTH 8
`define D5_DC_LPDDR4_MA_WIDTH 6
`define D5_DC_LPDDR5_MA_WIDTH 7
`define D5_DC_DDR5_MRA_WIDTH  8
`define D5_DC_DDR5_OPCODE_WIDTH  8

`define D5_DC_CMD_PREALL_DDR4  6'b010_000
`define D5_DC_CMD_REFRESH_DDR4 6'b001_000
`define D5_DC_CMD_ZQCS_DDR4    6'b110_000
`define D5_DC_CMD_PRE_PB_LP4    6'b010_001
`define D5_DC_CMD_PRE_AB_LP4    6'b110_001
`define D5_DC_CMD_REFRESH_PB_LP4 6'b001_001
`define D5_DC_CMD_REFRESH_AB_LP4 6'b101_001

`define D5_DC_CMD_MR_SET 6'b000_010
`define D5_DC_CMD_MPR_READ 6'b000_001
`define D5_DC_CMD_MRR_LP4 6'b000_011
`define D5_DC_CMD_MRW_LP4 6'b000_100
`define D5_DC_CMD_MPC_LP4 6'b000_101

//DDR5, LP5
`define D5_DC_CMD_MRR_DDR5 6'b000_001
`define D5_DC_CMD_MRW_DDR5 6'b000_010
`define D5_DC_CMD_MPC_DDR5 6'b000_011
`define D5_DC_CMD_MRR_LP5 6'b000_100
`define D5_DC_CMD_MRW_LP5 6'b000_110
`define D5_DC_CMD_MPC_LP5 6'b000_111

`define D5_DC_CMD_PREAB_DDR5 6'b001_000
`define D5_DC_CMD_PRESB_DDR5 6'b010_000
`define D5_DC_CMD_REFAB_DDR5 6'b101_000
`define D5_DC_CMD_REFSB_DDR5 6'b110_000
`define D5_DC_CMD_RFMAB_DDR5 6'b111_000
`define D5_DC_CMD_RFMSB_DDR5 6'b011_000

`define D5_DC_CMD_PREPB_LP5 6'b001_001
`define D5_DC_CMD_PREAB_LP5 6'b010_001
`define D5_DC_CMD_REFPB_LP5 6'b101_001
`define D5_DC_CMD_REFAB_LP5 6'b110_001
`define D5_DC_CMD_RFMAB_LP5 6'b111_001
`define D5_DC_CMD_RFMPB_LP5 6'b011_001

//farb module
`define D5_FARB_CAS_REQ_NUM          6
`define D5_DC_DDR5_CA_PIN_WIDTH      14		
`define D5_DC_LPDDR5_CA_PIN_WIDTH    7


//retry module
`define D5_DC_ALRT_CWDTH			 `DDRMC5_MAIN_REG_RETRY_1_FLD_RETRY_FIFO_DEALLOC_PERIOD_WIDTH  //6
`define D5_RETRY_MAX_ALERT_PERIOD    	 2**`D5_DC_ALRT_CWDTH  //64
`define D5_RETRY_BLOCK_WAIT_TIMER_WIDTH     `DDRMC5_MAIN_REG_RETRY_1_FLD_RETRY_WAIT_TIMER_WIDTH //6
`define D5_RETRY_REFRESH_WAIT_TIMER_WIDTH   `DDRMC5_MAIN_REG_RETRY_1_FLD_REF_WAIT_TIMER_WIDTH   //7
`define D5_RETRY_REF_NUM_WIDTH              `DDRMC5_MAIN_REG_RETRY_1_FLD_REF_EXTRA_NUM_WIDTH    //3

`define D5_RETRY_FSM_WIDTH          20

`define D5_RETRY_FSM_IDLE              20'b0000_0000_0000_0000_0001
`define D5_RETRY_FSM_BLOCK             20'b0000_0000_0000_0000_0010
`define D5_RETRY_FSM_WAIT_ALRT_LOW     20'b0000_0000_0000_0000_0100
`define D5_RETRY_FSM_WAIT_BS_DONE_LOW  20'b0000_0000_0000_0000_1000
`define D5_RETRY_FSM_REQ_BS_RESET      20'b0000_0000_0000_0001_0000
`define D5_RETRY_FSM_WAIT_BS_ACK       20'b0000_0000_0000_0010_0000
`define D5_RETRY_FSM_WAIT_BS_DONE      20'b0000_0000_0000_0100_0000
`define D5_RETRY_FSM_CLEAR_RROB        20'b0000_0000_0000_1000_0000
`define D5_RETRY_FSM_TXNQ_RMW_CLEAR    20'b0000_0000_0001_0000_0000
`define D5_RETRY_FSM_REF_INC           20'b0000_0000_0010_0000_0000
`define D5_RETRY_FSM_REF_EN            20'b0000_0000_0100_0000_0000
`define D5_RETRY_FSM_WR_CLEAR_FIFO     20'b0000_0000_1000_0000_0000
`define D5_RETRY_FSM_WR_EN             20'b0000_0001_0000_0000_0000
`define D5_RETRY_FSM_WR_WAIT_DRAIN     20'b0000_0010_0000_0000_0000
`define D5_RETRY_FSM_RD_CLEAR_FIFO     20'b0000_0100_0000_0000_0000
`define D5_RETRY_FSM_RD_EN             20'b0000_1000_0000_0000_0000
`define D5_RETRY_FSM_RD_WAIT_DE_DRAIN  20'b0001_0000_0000_0000_0000
`define D5_RETRY_FSM_RD_CLEAR_RE_FIFO  20'b0010_0000_0000_0000_0000
`define D5_RETRY_FSM_RD_WAIT_RE_DRAIN  20'b0100_0000_0000_0000_0000
`define D5_RETRY_FSM_UNBLOCK           20'b1000_0000_0000_0000_0000

`define D5_RETRY_FSM_IDLE_BIT        0
`define D5_RETRY_FSM_BLOCK_BIT       1
`define D5_RETRY_FSM_RESTART_BIT     2
`define D5_RETRY_FSM_MR_RECOVERY_BIT 3
`define D5_RETRY_FSM_REFRESH_EN_BIT  4
`define D5_RETRY_FSM_RE_ISSUE_BIT    5
`define D5_RETRY_FSM_UNBLOCK_BIT     6

`define D5_RETRY_FIFO_DEPTH      32
`define D5_RETRY_FIFO_WIDTH      ( 3 + `D5_DC_ENTRY_ID_WIDTH )
`define D5_RETRY_WR_FIFO_WIDTH   ( `D5_MC_QOS_BASE + `D5_DC_ENTRY_ENCODED )
`define D5_RETRY_RD_FIFO_WIDTH   ( `D5_DC_ENTRY_ID_WIDTH )

`define D5_RD_DEALLOC_FIFO_DEPTH      40
`define D5_RD_DEALLOC_FIFO_WIDTH      ( 3 + `D5_DC_ENTRY_ID_WIDTH + `D5_DC_ENTRY_ENCODED )

`define D5_RETRY_READ_FIFO_DEPTH      40
`define D5_RETRY_READ_FIFO_WIDTH      ( 4 + `D5_DC_DRAM_ADDR_WIDTH + `D5_DC_ENTRY_ID_WIDTH )


//pt module
`define D5_DC_PT_PAGE_OPEN_WIDTH     4 + `D5_DC_DRAM_ROWADDR_WIDTH
`define D5_DC_PT_PAGE_OPEN_DEPTH     256
`define D5_DC_PT_PAGE_ENTRY_ID_WIDTH 8
`define D5_DC_PT_ENTRY_OPEN_BIT      0
`define D5_DC_PT_ENTRY_ROW_BIT       `D5_DC_DRAM_ROWADDR_WIDTH:1
`define D5_DC_PT_ENTRY_RL_BIT        `D5_DC_DRAM_ROWADDR_WIDTH+3:`D5_DC_DRAM_ROWADDR_WIDTH+1   

`define D5_DC_PT_PAGE_TIMER_NUM     512 //TODO `D5_DC_PT_PAGE_OPEN_DEPTH

//safe module 
`define D5_DC_SAFE_TABLE_ENTRY_NUM       128
`define D5_DC_SAFE_TABLE_ENTRY_ID_WIDTH    7
`define D5_DC_SAFE_TABLE_ENTRY_RL_WIDTH    2
`define D5_DC_SAFE_AP_TABLE_ENTRY_NUM     32
`define D5_DC_SAFE_AP_TABLE_ENTRY_ID_WIDTH 5


//ecc module
`define D5_ECC_CODE_WIDTH  	79    //ECC + poison + addr parity + codeword order + data
`define D5_ECC_PROTECTION_WIDTH 	71    //poison + addr parity + codeword order + data
`define D5_ECC_DATA_WIDTH 		64    //data

`define D5_ECC_WIDTH       	8
`define D5_ECC_BURST_NUM 		8
`define D5_SIDEBAND_ECC_WIDTH 	32    //32b ECC for 256b data; ECC_WIDTH*(ECC_BURST_NUM/2)
`define D5_ILC_ECC_WIDTH   	32

// NPI async I/O definition
`define D5_NPI_PROT_AFIFO_STAGE   2
`define D5_NPI_PROT_AFIFO_DEPTH   8


//in-line
`define D5_ILC_CACHE_DEPTH	        32

///
typedef struct packed {
  logic [`D5_DC_DRAM_LRANKADDR_WIDTH-1:0] lrank;                       // Transaction Data Lrank Address
  logic [`D5_DC_DRAM_RANKADDR_WIDTH-1:0]  rank;                        // Transaction Data Rank Address
  logic [`D5_DC_DRAM_GRPADDR_WIDTH-1:0]   group;                       // Transaction Data Group Address
  logic [`D5_DC_DRAM_BANKADDR_WIDTH-1:0]  bank;                        // Transaction Data Bank Address
  logic [`D5_DC_DRAM_ROWADDR_WIDTH-1:0]   row;                         // Transaction Data Row Address
  logic [`D5_DC_DRAM_COLADDR_WIDTH-1:0]   col;                         // Transaction Data Col Address
} ddr_addr_t;

typedef struct packed {
  logic        bgrl;                 				    // Parity protection for bank, group, rank, and lrank
  logic        row;
  logic        col;
} addr_par_t;

typedef struct packed {
  ddr_addr_t a;
  addr_par_t par;
} ddr_addr_w_par_t;

typedef struct packed {
    logic                                 scrub_req;			// transaction is scrub
    logic                                 type_read;			// transaction is read
    logic                                 partial;
    logic                                 align_wstb;
    logic 				  xmpu_poison;			// If aserted high drop transaction
    logic                                 ecc_err_inj;
    logic [`D5_DC_ENTRY_ID_WIDTH-1:0]        rrob_add;			// RROB ID that read data is to be returned to
    logic 				  type_exclusive;		// Asserted high for Exclusive transactions
    logic 				  exokay;			// If asserted low drop transaction if it is Exclusive
    logic                                 ecc_protected;
} push_type_t;

typedef struct packed {
  logic [$bits(ddr_addr_t)-1-4:0] ma;				// MSBs of address
  logic 			    valid;
  logic 			    dirty;
  logic [7:0] 			    wr_pend;
  logic [7:0] 			    fetch;
  logic [7:0] 			    rd_pend;
  logic [7:0][7:0] 		    ecc_byte_valid;		// ECC BL16: 8 sets of 8Bytes of ECC  - Date BL16: needs 8Bytes of ECC
} ilc_tag_t;

typedef enum logic [1:0] { 
		     DC_ILC_PASS=2'b00,
		     DC_ILC_DAT=2'b01, 
		     DC_ILC_ILC=2'b10,
		     DC_ILC_SCRB=2'b11
} ilc_dtype_t;

typedef struct packed {
  ilc_dtype_t dtype;				// transaction type: PASS - no ILC, DAT - data, ILC - ECC data
  logic [4:0] id;				// id (allocated by ILC module)
  logic [2:0] idx;				// for DC_ILC_DAT index in ECC table
} txn_type_t;

`define  D5_TXN_TYPE_T_WIDTH   10   // width of all txn_type_t fields combined

///


//=====================================================================
// Macros
//=====================================================================

// Encode one-hot vector to binary count format
// ----------------------------------------------
// vect_in   - one hot or cold vector VEC_WIDTH wide
// idx_out   - encoded bit position of the one in vect_in
// loop_idx  - an integer
// VEC_WIDTH - width of vect_in
// IDX_WIDTH - width of idx_out
`define D5_ONEHOT2ENC(vect_in, idx_out, loop_idx, VEC_WIDTH, IDX_WIDTH)                 \
  always @(*) begin                                                                  \
    idx_out = '0;                                                                    \
    for (loop_idx = 1; loop_idx < VEC_WIDTH; loop_idx = loop_idx + 1)                \
      idx_out |= { IDX_WIDTH { vect_in[loop_idx] } } & loop_idx[IDX_WIDTH-1:0];      \
  end

// Find first non-asserted bit in vector searching from MSB to LSB
// ----------------------------------------------
// in_use_vec     - multi-hot one dimentional vector
// one_hot_result - one-hot cold vector corresponding to the highest bit of in_use_vec with a zero
// loop_idx       - an integer
// sub_loop_idx   - an integer
// NUM_BITS       - width of in_use_vec and one_hot_result
`define D5_MHOT2ONEHOT(in_use_vec, one_hot_result, loop_idx, sub_loop_idx, NUM_BITS)                   \
  always @(*) begin                                                                                 \
    one_hot_result = in_use_vec;                                                                    \
    for (loop_idx = 0; loop_idx < NUM_BITS-1; loop_idx = loop_idx + 1)                              \
      for (sub_loop_idx = loop_idx + 1; sub_loop_idx < NUM_BITS; sub_loop_idx = sub_loop_idx + 1)   \
        one_hot_result[loop_idx] &= ~in_use_vec[sub_loop_idx];                                      \
  end

// MUX with one-hot select vector
// ----------------------------------------------
// vect_in    - one hot or cold vector VEC_WIDTH wide
// data_in    - input to be MUX's down
// loop_idx   - an integer
// VEC_WIDTH  - width of vect_in
// DATA_WIDTH - width of data_out
`define D5_ONEHOTMUX(vect_in, data_in, data_out, loop_idx, VEC_WIDTH, DATA_WIDTH)   \
  always @(*) begin                                                              \
    data_out = '0;                                                               \
    for (loop_idx = 0; loop_idx < VEC_WIDTH; loop_idx = loop_idx + 1)            \
      data_out |= { DATA_WIDTH { vect_in[loop_idx] } } & data_in[loop_idx];      \
  end



// PT BGRL subset match detection
// subset_bgrl_bit_en        - bgrl wide bit compare enable
// bgrl_0, bgrl_1            - two bgrl vectors to compare
// farb_won                  - valid signal
// match_out                 - single bit output indicating all enabled bgrl bits match
`define  D5_PT_BGRL_MATCH(subset_bgrl_bit_en, bgrl_0, bgrl_1, farb_won, match_out)    \
  assign match_out = ( & ( ~( bgrl_0 ^ bgrl_1 ) | ~subset_bgrl_bit_en ) ) & farb_won;

`define  D5_PT_BGRL_MATCH_A(subset_bgrl_bit_en, bgrl_0, bgrl_1, farb_won, match_out)    \
         match_out = ( & ( ~( bgrl_0 ^ bgrl_1 ) | ~subset_bgrl_bit_en ) ) & farb_won;


//RAM input data swizzle 0
// ----------------------------------------------
//WIDTH: number of separation between bits
//LENGTH: (total bits of input data / WIDTH)
//input_data: input data
//data_swizzle: data after swizzle
//For 256-bit data, separation of 4 for 4-bit parity, config WIDTH=4, LENGTH=256/4=64
//For 256-bit data, separation of 8 for 8-bit parity, config WIDTH=8, LENGTH=256/8=32
//For 256-bit data, separation of 4 for 64-bit parity, config WIDTH=64, LENGTH=256/64=4
`define D5_RAM_DATA_SWIZZLE_0(input_data, data_swizzle, loop_idx, sub_loop_idx, WIDTH, LENGTH)        	 \
  always @(*) begin                                                                                	 \
    data_swizzle = '0;                                                                             	 \
    for (loop_idx = 0; loop_idx < WIDTH; loop_idx = loop_idx + 1)                                  	 \
      for (sub_loop_idx = 0; sub_loop_idx < LENGTH; sub_loop_idx = sub_loop_idx + 1)               	 \
        data_swizzle[loop_idx*LENGTH + sub_loop_idx] = input_data[sub_loop_idx*WIDTH + loop_idx];    	 \
  end



//RAM output data unswizzle 0
// ----------------------------------------------
//WIDTH: number of separation between bits
//LENGTH: (total bits of input swizzle data / WIDTH)
//input_swizzle_data: input swizzle data
//data_unswizzle: data after unswizzle
`define D5_RAM_DATA_UNSWIZZLE_0(input_swizzle_data, data_unswizzle, loop_idx, sub_loop_idx, WIDTH, LENGTH)         \
  always @(*) begin                                                                                 		\
    data_unswizzle = '0;                                                                    			\
    for (loop_idx = 0; loop_idx < LENGTH; loop_idx = loop_idx + 1)                              		\
      for (sub_loop_idx = 0; sub_loop_idx < WIDTH; sub_loop_idx = sub_loop_idx + 1)   				\
        data_unswizzle[loop_idx*WIDTH + sub_loop_idx] = input_swizzle_data[sub_loop_idx*LENGTH + loop_idx];     \
  end


//RAM input data swizzle 1
// ----------------------------------------------
//used for separation of 4 for 8 bit parity data swizzle
//input_data: 32-bit input data
//data_swizzle: 32-bit data after swizzle
`define D5_RAM_DATA_SWIZZLE_1(input_data, data_swizzle, loop_idx, sub_loop_idx)         		\
  always @(*) begin                                                                             \
    data_swizzle = '0;                                                                          \
    for (loop_idx = 0; loop_idx < 8; loop_idx = loop_idx + 1)                              	\
      for (sub_loop_idx = 0; sub_loop_idx < 4; sub_loop_idx = sub_loop_idx + 1)                	\
        data_swizzle[loop_idx*4 + sub_loop_idx] = input_data[sub_loop_idx*8 + loop_idx];   	\
  end


//RAM output data unswizzle 1
// ----------------------------------------------
//used for separation of 4 for 8 bit parity data unswizzle
//input_swizzle_data: 32-bit input swizzle data
//data_unswizzle: 32-bit data after unswizzle
`define D5_RAM_DATA_UNSWIZZLE_1(input_swizzle_data, data_unswizzle, loop_idx, sub_loop_idx)        	\
  always @(*) begin                                                                             	\
    data_unswizzle = '0;                                                                        	\
    for (loop_idx = 0; loop_idx < 4; loop_idx = loop_idx + 1)                              		\
      for (sub_loop_idx = 0; sub_loop_idx < 8; sub_loop_idx = sub_loop_idx + 1)                		\
        data_unswizzle[loop_idx*8 + sub_loop_idx] = input_swizzle_data[sub_loop_idx*4 + loop_idx];   	\
  end


`endif

