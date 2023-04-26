`ifndef __DDR5MC_BFM_MACROS_SVH__
`define __DDR5MC_BFM_MACROS_SVH__


// Interface define
`ifndef BFM_SIMULATION
  `define noc_npp_if ddr5mc_bfm_na_noc_npp_if
`else
  `define noc_npp_if noc2_npp_ddrmc5_if
`endif

// Vebosity parameter port assignment
`define VERBO_PARAM_ASSIGN     .VERBOSITY_EN                          (VERBOSITY_EN)  \
                              ,.VERBOSITY_LEVEL                       (VERBOSITY_LEVEL) \
                              ,.VERBOSITY_ERR_TO_WARN                 (VERBOSITY_ERR_TO_WARN)

// print macros 
 typedef enum bit[8:0] {DDR_NONE=0, DDR_LOW=100, DDR_MEDIUM=200, DDR_HIGH=300, DDR_FULL=400, DDR_DEBUG=500} verbosity_t;

 `define DDR_NONE 0
 `define DDR_LOW 100
 `define DDR_MEDIUM 200
 `define DDR_HIGH 300
 `define DDR_FULL 400
 `define DDR_DEBUG 500

`define bfm_info(TAG, VERBOSITY_ENABLE, VERBOSITY_LEVEL, MSG, MSG_LEVEL) \
  if(VERBOSITY_ENABLE) \
    if(MSG_LEVEL <= VERBOSITY_LEVEL) \
      $display("INFO: [%s] (%m) %0t : %s", TAG, $time, MSG);

`define bfm_warning(TAG, MSG) \
  $warning("[%s] (%m) %0t : WARNING: %s", TAG, $time, MSG);

`define bfm_error(TAG, VERBOSITY_ERR_TO_WARN, MSG) \
  if(VERBOSITY_ERR_TO_WARN) \
    $warning("[%s] (%m) %0t : WARNING: %s", TAG, $time, MSG); \
  else \
    $error("[%s] (%m) %0t : ERROR: %s", TAG, $time, MSG);

`define bfm_fatal(TAG, MSG) \
  $fatal(1,"[%s] (%m) %0t : ERROR: %s", TAG, $time, MSG);


`define ddr_info(MSG, LEVEL) \
  `bfm_info(TAG, VERBOSITY_EN, VERBOSITY_LEVEL, $sformatf(MSG), LEVEL)

`define ddr_warning(MSG) \
  `bfm_warning(TAG, MSG)

`define ddr_error(MSG) \
  `bfm_error(TAG, VERBOSITY_ERR_TO_WARN, MSG)

`define ddr_fatal(MSG) \
  `bfm_fatal(TAG, MSG)
  

`endif 
