// Example instance of the top level module for: 
//     if_loop_3
// To include this component in your design, include: 
//     if_loop_3.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

if_loop_3 if_loop_3_inst (
  // Interface: clock (clock end)
  .clock               ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn              ( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start               ( ), // 1-bit valid input
  .busy                ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done                ( ), // 1-bit valid output
  .stall               ( ), // 1-bit stall input
  // Interface: returndata (conduit source)
  .returndata          ( ), // 32-bit data output
  // Interface: a (conduit sink)
  .a                   ( ), // 64-bit data input
  // Interface: b (conduit sink)
  .b                   ( ), // 64-bit data input
  // Interface: n (conduit sink)
  .n                   ( ), // 32-bit data input
  // Interface: avmm_1_rw (avalon start)
  .avmm_1_rw_address   ( ), // 32-bit address output
  .avmm_1_rw_byteenable( ), // 32-bit byteenable output
  .avmm_1_rw_read      ( ), // 1-bit read output
  .avmm_1_rw_readdata  ( ), // 256-bit readdata input
  .avmm_1_rw_write     ( ), // 1-bit write output
  .avmm_1_rw_writedata ( ), // 256-bit writedata output
  // Interface: avmm_4_rw (avalon start)
  .avmm_4_rw_address   ( ), // 32-bit address output
  .avmm_4_rw_byteenable( ), // 32-bit byteenable output
  .avmm_4_rw_read      ( ), // 1-bit read output
  .avmm_4_rw_readdata  ( ), // 256-bit readdata input
  .avmm_4_rw_write     ( ), // 1-bit write output
  .avmm_4_rw_writedata ( )  // 256-bit writedata output
);
