`ifndef DDR5_MACROS
   `define DDR5_MACROS

    `define PRINT_MODEL(ifdef_msg,msg) \
    if( ifdef_msg) \
      $display("%m :: %0d :: time %0t ::  ",`__LINE__,$time,msg);
 
   `define PRINT_FATAL(msg) \
   $fatal(1,"%m :: time %0t ::  ",$time,msg);
 
   `define PRINT_ERROR(msg) \
   $display("%m :: %0d :: time %0t ::  ",`__LINE__,$time,msg); \
   $error;
 
   `define PRINT_WARNING(msg) \
   $display("%m :: %0d :: time %0t ::  ",`__LINE__,$time,msg); \
   $warning;


`ifdef MODEL_TECH
  `define QUESTA_SIM
`elsif INCA
  `define NCSIM_SIM
`elsif VCS
  `define VCS_SIM
`elsif _VCP
  `define RIVIERA_SIM
`elsif XILINX_SIMULATOR
  `define XSIM_SIM
`endif

`endif 


