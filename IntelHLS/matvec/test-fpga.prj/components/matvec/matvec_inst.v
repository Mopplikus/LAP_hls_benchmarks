// Example instance of the top level module for: 
//     matvec
// To include this component in your design, include: 
//     matvec.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

matvec matvec_inst (
  // Interface: clock (clock end)
  .clock ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn( ), // 1-bit reset_n input
  // Interface: call (conduit sink)
  .start ( ), // 1-bit valid input
  .busy  ( ), // 1-bit stall output
  // Interface: return (conduit source)
  .done  ( ), // 1-bit valid output
  .stall ( ), // 1-bit stall input
  // Interface: M (conduit sink)
  .M     ( ), // 64-bit data input
  // Interface: V (conduit sink)
  .V     ( ), // 64-bit data input
  // Interface: Out0 (conduit sink)
  .Out0  ( )  // 64-bit data input
);
