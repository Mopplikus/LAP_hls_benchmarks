// Example instance of the top level module for: 
//     bicg
// To include this component in your design, include: 
//     bicg.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

bicg bicg_inst (
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
  // Interface: A (conduit sink)
  .A     ( ), // 64-bit data input
  // Interface: s (conduit sink)
  .s     ( ), // 64-bit data input
  // Interface: q (conduit sink)
  .q     ( ), // 64-bit data input
  // Interface: p (conduit sink)
  .p     ( ), // 64-bit data input
  // Interface: r (conduit sink)
  .r     ( )  // 64-bit data input
);
