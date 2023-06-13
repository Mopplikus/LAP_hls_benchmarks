// Example instance of the top level module for: 
//     jacobi_1d
// To include this component in your design, include: 
//     jacobi_1d.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

jacobi_1d jacobi_1d_inst (
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
  // Interface: A_1 (conduit sink)
  .A_1                 ( ), // 64-bit data input
  // Interface: A_2 (conduit sink)
  .A_2                 ( ), // 64-bit data input
  // Interface: B (conduit sink)
  .B                   ( ), // 64-bit data input
  // Interface: avmm_1_rw (avalon start)
  .avmm_1_rw_address   ( ), // 32-bit address output
  .avmm_1_rw_byteenable( ), // 4-bit byteenable output
  .avmm_1_rw_read      ( ), // 1-bit read output
  .avmm_1_rw_readdata  ( ), // 32-bit readdata input
  .avmm_1_rw_write     ( ), // 1-bit write output
  .avmm_1_rw_writedata ( )  // 32-bit writedata output
);
