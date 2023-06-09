// Example instance of the top level module for: 
//     kernel_3mm
// To include this component in your design, include: 
//     kernel_3mm.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

kernel_3mm kernel_3mm_inst (
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
  // Interface: B (conduit sink)
  .B     ( ), // 64-bit data input
  // Interface: C (conduit sink)
  .C     ( ), // 64-bit data input
  // Interface: D (conduit sink)
  .D     ( ), // 64-bit data input
  // Interface: E (conduit sink)
  .E     ( ), // 64-bit data input
  // Interface: F (conduit sink)
  .F     ( ), // 64-bit data input
  // Interface: G (conduit sink)
  .G     ( )  // 64-bit data input
);
