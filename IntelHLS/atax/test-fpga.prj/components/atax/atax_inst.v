// Example instance of the top level module for: 
//     atax
// To include this component in your design, include: 
//     atax.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

atax atax_inst (
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
  // Interface: x (conduit sink)
  .x     ( ), // 64-bit data input
  // Interface: y (conduit sink)
  .y     ( ), // 64-bit data input
  // Interface: tmp (conduit sink)
  .tmp   ( )  // 64-bit data input
);
