
`ifndef XBR4x2_MACROS
`define XBR4x2_MACROS
  `ifndef VERBOSITY_ENUM_XBR4x2
    `define VERBOSITY_ENUM_XBR4x2
//    typedef enum {LOW,FULL,DBG} verbosity_t;
//    parameter verbosity_t VERBOSITY=DBG;
  `endif

`define PRINT_XBR4x2(ifdef_msg,msg,verbosity_l) \
  if (ifdef_msg ) \
  $display("%m : @%t ",$time,msg); \
//  if(VERBOSITY>=verbosity_l) $display("%m : @%0t ",$time,msg); \
  else \
    begin end \
 
`define PRINT_XBR4x2_MODEL(ifdef_msg,msg,verbosity_l) \
  if (ifdef_msg ) \
  $display("%m : @%t ",$time,msg); \
// if(VERBOSITY>=verbosity_l) $display("%m : @%0t ",$time,msg); \
 
`define PRINT_XBR4x2_WARNING(msg) \
  $warning("UVM_WARNING %m ::: at time %t ::: ",$time,msg); \
 
`define PRINT_XBR4x2_FATAL(msg) \
  $fatal(1,"UVM_FATAL %m ::: at time %t ::: ",$time,msg); \
 
`define PRINT_XBR4x2_ERROR(msg) \
  $error("UVM_ERROR %m ::: at time %t ::: ",$time,msg); \

`endif 
