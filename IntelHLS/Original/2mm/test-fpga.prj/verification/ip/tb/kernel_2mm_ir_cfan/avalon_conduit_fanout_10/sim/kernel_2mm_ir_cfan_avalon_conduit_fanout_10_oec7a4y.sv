// (c) 1992-2021 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


 
// $Id: avalon_conduit_fanout.sv.terp#1 $
// $Revision: #1 $
// $Date: 2014/07/17 $


// --------------------------------------------------------------------------------
//| Avalon Conduit Fan-Out
// --------------------------------------------------------------------------------

// ------------------------------------------
// Generation parameters:
//   output_name:       kernel_2mm_ir_cfan_avalon_conduit_fanout_10_oec7a4y
//   numFanOut:         6
//   
// ------------------------------------------

module kernel_2mm_ir_cfan_avalon_conduit_fanout_10_oec7a4y (     

// Interface: out_conduit_0
 output                    out_conduit_0,
// Interface: out_conduit_1
 output                    out_conduit_1,
// Interface: out_conduit_2
 output                    out_conduit_2,
// Interface: out_conduit_3
 output                    out_conduit_3,
// Interface: out_conduit_4
 output                    out_conduit_4,
// Interface: out_conduit_5
 output                    out_conduit_5,

// Interface: in_conduit
 input                   in_conduit

);

   assign  out_conduit_0 = in_conduit;
   assign  out_conduit_1 = in_conduit;
   assign  out_conduit_2 = in_conduit;
   assign  out_conduit_3 = in_conduit;
   assign  out_conduit_4 = in_conduit;
   assign  out_conduit_5 = in_conduit;

endmodule //

