// Example instance of the top level module for: 
//     histogram
// To include this component in your design, include: 
//     histogram.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

histogram histogram_inst (
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
  // Interface: hist_r (conduit sink)
  .hist_r( ), // 64-bit data input
  // Interface: n (conduit sink)
  .n     ( )  // 32-bit data input
);
