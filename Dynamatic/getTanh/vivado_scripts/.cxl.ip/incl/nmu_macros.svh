`ifndef NMU_MACROS
   `define NMU_MACROS


    `define PRINT_NMU_MONITOR(ifdef_msg,msg,verbosity_l) \
    if( ifdef_msg) \
      $display("%m :: @%0t :: ",$time,msg);
  
    `define PRINT_NMU_MODEL(ifdef_msg,reg_handle,msg,verbosity_l) \
    begin \
    if( ifdef_msg) \
      $display("%m :: %0d :: @%0t :: REG_SRC ='d%0d :: ",`__LINE__,$time,reg_handle.REG_SRC,msg); \
    end
 
   `define PRINT_NMU_FATAL(reg_handle,msg) \
   $fatal(1,"%m :: time %0t :: REG_SRC ='d%0d :: ",$time,reg_handle.REG_SRC,msg);
 
   `define PRINT_NMU_ERROR(reg_handle,msg) \
   $error("%m :: time %0t :: REG_SRC ='d%0d :: ",$time,reg_handle.REG_SRC,msg);

`endif 
