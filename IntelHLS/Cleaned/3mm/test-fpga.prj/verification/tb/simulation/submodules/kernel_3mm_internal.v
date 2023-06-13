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
// Generated by Intel(R) HLS Compiler, Version 21.4.0 Build 53.1

/////////////////////////////////////////////////////////////////
// MODULE kernel_3mm_internal
/////////////////////////////////////////////////////////////////
module kernel_3mm_internal
(
   input logic clock,
   input logic resetn,
   input logic [63:0] A,
   input logic [63:0] B,
   input logic [63:0] C,
   input logic [63:0] D,
   input logic [63:0] E,
   input logic [63:0] F,
   input logic [63:0] G,
   input logic start,
   output logic busy,
   output logic done,
   input logic stall,
   // AVM avmm_1_rw
   output logic avmm_1_rw_enable,
   output logic avmm_1_rw_read,
   output logic avmm_1_rw_write,
   output logic [31:0] avmm_1_rw_address,
   output logic [31:0] avmm_1_rw_writedata,
   output logic [3:0] avmm_1_rw_byteenable,
   input logic [31:0] avmm_1_rw_readdata,
   input logic avmm_1_rw_readdatavalid,
   output logic avmm_1_rw_burstcount,
   input logic avmm_1_rw_writeack
);
   genvar __i;
   logic avmm_1_global_avm_enable [12];
   logic avmm_1_global_avm_read [12];
   logic avmm_1_global_avm_write [12];
   logic [31:0] avmm_1_global_avm_address [12];
   logic [31:0] avmm_1_global_avm_writedata [12];
   logic [3:0] avmm_1_global_avm_byteenable [12];
   logic avmm_1_global_avm_waitrequest [12];
   logic [31:0] avmm_1_global_avm_readdata [12];
   logic avmm_1_global_avm_readdatavalid [12];
   logic avmm_1_global_avm_burstcount [12];
   logic avmm_1_global_avm_writeack [12];

   // INST kernel_3mm_internal of kernel_3mm_function_wrapper
   kernel_3mm_function_wrapper kernel_3mm_internal
   (
      .clock(clock),
      .resetn(resetn),
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .E(E),
      .F(F),
      .G(G),
      .start(start),
      .busy(busy),
      .done(done),
      .stall(stall),
      // AVM avm_memdep_3_kernel_3mm
      .avm_memdep_3_kernel_3mm_enable(avmm_1_global_avm_enable[0]),
      .avm_memdep_3_kernel_3mm_read(avmm_1_global_avm_read[0]),
      .avm_memdep_3_kernel_3mm_write(avmm_1_global_avm_write[0]),
      .avm_memdep_3_kernel_3mm_address(avmm_1_global_avm_address[0]),
      .avm_memdep_3_kernel_3mm_writedata(avmm_1_global_avm_writedata[0]),
      .avm_memdep_3_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[0]),
      .avm_memdep_3_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[0]),
      .avm_memdep_3_kernel_3mm_readdata(avmm_1_global_avm_readdata[0]),
      .avm_memdep_3_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[0]),
      .avm_memdep_3_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[0]),
      .avm_memdep_3_kernel_3mm_writeack(avmm_1_global_avm_writeack[0]),
      // AVM avm_memdep_7_kernel_3mm
      .avm_memdep_7_kernel_3mm_enable(avmm_1_global_avm_enable[1]),
      .avm_memdep_7_kernel_3mm_read(avmm_1_global_avm_read[1]),
      .avm_memdep_7_kernel_3mm_write(avmm_1_global_avm_write[1]),
      .avm_memdep_7_kernel_3mm_address(avmm_1_global_avm_address[1]),
      .avm_memdep_7_kernel_3mm_writedata(avmm_1_global_avm_writedata[1]),
      .avm_memdep_7_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[1]),
      .avm_memdep_7_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[1]),
      .avm_memdep_7_kernel_3mm_readdata(avmm_1_global_avm_readdata[1]),
      .avm_memdep_7_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[1]),
      .avm_memdep_7_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[1]),
      .avm_memdep_7_kernel_3mm_writeack(avmm_1_global_avm_writeack[1]),
      // AVM avm_memdep_kernel_3mm
      .avm_memdep_kernel_3mm_enable(avmm_1_global_avm_enable[2]),
      .avm_memdep_kernel_3mm_read(avmm_1_global_avm_read[2]),
      .avm_memdep_kernel_3mm_write(avmm_1_global_avm_write[2]),
      .avm_memdep_kernel_3mm_address(avmm_1_global_avm_address[2]),
      .avm_memdep_kernel_3mm_writedata(avmm_1_global_avm_writedata[2]),
      .avm_memdep_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[2]),
      .avm_memdep_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[2]),
      .avm_memdep_kernel_3mm_readdata(avmm_1_global_avm_readdata[2]),
      .avm_memdep_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[2]),
      .avm_memdep_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[2]),
      .avm_memdep_kernel_3mm_writeack(avmm_1_global_avm_writeack[2]),
      // AVM avm_unnamed_kernel_3mm10_kernel_3mm
      .avm_unnamed_kernel_3mm10_kernel_3mm_enable(avmm_1_global_avm_enable[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_read(avmm_1_global_avm_read[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_write(avmm_1_global_avm_write[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_address(avmm_1_global_avm_address[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_writedata(avmm_1_global_avm_writedata[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_readdata(avmm_1_global_avm_readdata[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[3]),
      .avm_unnamed_kernel_3mm10_kernel_3mm_writeack(avmm_1_global_avm_writeack[3]),
      // AVM avm_unnamed_kernel_3mm16_kernel_3mm
      .avm_unnamed_kernel_3mm16_kernel_3mm_enable(avmm_1_global_avm_enable[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_read(avmm_1_global_avm_read[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_write(avmm_1_global_avm_write[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_address(avmm_1_global_avm_address[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_writedata(avmm_1_global_avm_writedata[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_readdata(avmm_1_global_avm_readdata[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[4]),
      .avm_unnamed_kernel_3mm16_kernel_3mm_writeack(avmm_1_global_avm_writeack[4]),
      // AVM avm_unnamed_kernel_3mm17_kernel_3mm
      .avm_unnamed_kernel_3mm17_kernel_3mm_enable(avmm_1_global_avm_enable[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_read(avmm_1_global_avm_read[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_write(avmm_1_global_avm_write[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_address(avmm_1_global_avm_address[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_writedata(avmm_1_global_avm_writedata[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_readdata(avmm_1_global_avm_readdata[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[5]),
      .avm_unnamed_kernel_3mm17_kernel_3mm_writeack(avmm_1_global_avm_writeack[5]),
      // AVM avm_unnamed_kernel_3mm20_kernel_3mm
      .avm_unnamed_kernel_3mm20_kernel_3mm_enable(avmm_1_global_avm_enable[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_read(avmm_1_global_avm_read[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_write(avmm_1_global_avm_write[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_address(avmm_1_global_avm_address[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_writedata(avmm_1_global_avm_writedata[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_readdata(avmm_1_global_avm_readdata[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[6]),
      .avm_unnamed_kernel_3mm20_kernel_3mm_writeack(avmm_1_global_avm_writeack[6]),
      // AVM avm_unnamed_kernel_3mm26_kernel_3mm
      .avm_unnamed_kernel_3mm26_kernel_3mm_enable(avmm_1_global_avm_enable[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_read(avmm_1_global_avm_read[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_write(avmm_1_global_avm_write[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_address(avmm_1_global_avm_address[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_writedata(avmm_1_global_avm_writedata[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_readdata(avmm_1_global_avm_readdata[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[7]),
      .avm_unnamed_kernel_3mm26_kernel_3mm_writeack(avmm_1_global_avm_writeack[7]),
      // AVM avm_unnamed_kernel_3mm27_kernel_3mm
      .avm_unnamed_kernel_3mm27_kernel_3mm_enable(avmm_1_global_avm_enable[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_read(avmm_1_global_avm_read[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_write(avmm_1_global_avm_write[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_address(avmm_1_global_avm_address[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_writedata(avmm_1_global_avm_writedata[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_readdata(avmm_1_global_avm_readdata[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[8]),
      .avm_unnamed_kernel_3mm27_kernel_3mm_writeack(avmm_1_global_avm_writeack[8]),
      // AVM avm_unnamed_kernel_3mm29_kernel_3mm
      .avm_unnamed_kernel_3mm29_kernel_3mm_enable(avmm_1_global_avm_enable[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_read(avmm_1_global_avm_read[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_write(avmm_1_global_avm_write[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_address(avmm_1_global_avm_address[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_writedata(avmm_1_global_avm_writedata[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_readdata(avmm_1_global_avm_readdata[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[9]),
      .avm_unnamed_kernel_3mm29_kernel_3mm_writeack(avmm_1_global_avm_writeack[9]),
      // AVM avm_unnamed_kernel_3mm34_kernel_3mm
      .avm_unnamed_kernel_3mm34_kernel_3mm_enable(avmm_1_global_avm_enable[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_read(avmm_1_global_avm_read[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_write(avmm_1_global_avm_write[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_address(avmm_1_global_avm_address[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_writedata(avmm_1_global_avm_writedata[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_readdata(avmm_1_global_avm_readdata[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[10]),
      .avm_unnamed_kernel_3mm34_kernel_3mm_writeack(avmm_1_global_avm_writeack[10]),
      // AVM avm_unnamed_kernel_3mm35_kernel_3mm
      .avm_unnamed_kernel_3mm35_kernel_3mm_enable(avmm_1_global_avm_enable[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_read(avmm_1_global_avm_read[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_write(avmm_1_global_avm_write[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_address(avmm_1_global_avm_address[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_writedata(avmm_1_global_avm_writedata[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_byteenable(avmm_1_global_avm_byteenable[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_waitrequest(avmm_1_global_avm_waitrequest[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_readdata(avmm_1_global_avm_readdata[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_readdatavalid(avmm_1_global_avm_readdatavalid[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_burstcount(avmm_1_global_avm_burstcount[11]),
      .avm_unnamed_kernel_3mm35_kernel_3mm_writeack(avmm_1_global_avm_writeack[11])
   );

   generate
   begin:avmm_1_
      logic avmm_1_icm_in_arb_request [12];
      logic avmm_1_icm_in_arb_enable [12];
      logic avmm_1_icm_in_arb_read [12];
      logic avmm_1_icm_in_arb_write [12];
      logic avmm_1_icm_in_arb_burstcount [12];
      logic [29:0] avmm_1_icm_in_arb_address [12];
      logic [31:0] avmm_1_icm_in_arb_writedata [12];
      logic [3:0] avmm_1_icm_in_arb_byteenable [12];
      logic avmm_1_icm_in_arb_stall [12];
      logic avmm_1_icm_in_wrp_ack [12];
      logic avmm_1_icm_in_rrp_datavalid [12];
      logic [31:0] avmm_1_icm_in_rrp_data [12];
      logic icm_out_0_rw_arb_request [1];
      logic icm_out_0_rw_arb_enable [1];
      logic icm_out_0_rw_arb_read [1];
      logic icm_out_0_rw_arb_write [1];
      logic icm_out_0_rw_arb_burstcount [1];
      logic [29:0] icm_out_0_rw_arb_address [1];
      logic [31:0] icm_out_0_rw_arb_writedata [1];
      logic [3:0] icm_out_0_rw_arb_byteenable [1];
      logic [3:0] icm_out_0_rw_arb_id [1];
      logic icm_out_0_rw_arb_stall [1];
      logic icm_out_0_rw_wrp_ack [1];
      logic icm_out_0_rw_rrp_datavalid [1];
      logic [31:0] icm_out_0_rw_rrp_data [1];
      logic icm_routedavmm_1_rw_arb_request [12];
      logic icm_routedavmm_1_rw_arb_enable [12];
      logic icm_routedavmm_1_rw_arb_read [12];
      logic icm_routedavmm_1_rw_arb_write [12];
      logic icm_routedavmm_1_rw_arb_burstcount [12];
      logic [29:0] icm_routedavmm_1_rw_arb_address [12];
      logic [31:0] icm_routedavmm_1_rw_arb_writedata [12];
      logic [3:0] icm_routedavmm_1_rw_arb_byteenable [12];
      logic icm_routedavmm_1_rw_arb_stall [12];
      logic icm_routedavmm_1_rw_wrp_ack [12];
      logic icm_routedavmm_1_rw_rrp_datavalid [12];
      logic [31:0] icm_routedavmm_1_rw_rrp_data [12];

      for( __i = 0; __i < 12; __i = __i + 1 )
      begin:t
         // INST avmm_1_avm_to_ic of acl_avm_to_ic
         acl_avm_to_ic
         #(
            .DATA_W(32),
            .WRITEDATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(32),
            .BYTEENA_W(4)
         )
         avmm_1_avm_to_ic
         (
            // AVM avm
            .avm_enable(avmm_1_global_avm_enable[__i]),
            .avm_read(avmm_1_global_avm_read[__i]),
            .avm_write(avmm_1_global_avm_write[__i]),
            .avm_address(avmm_1_global_avm_address[__i]),
            .avm_writedata(avmm_1_global_avm_writedata[__i]),
            .avm_byteenable(avmm_1_global_avm_byteenable[__i]),
            .avm_waitrequest(avmm_1_global_avm_waitrequest[__i]),
            .avm_readdata(avmm_1_global_avm_readdata[__i]),
            .avm_readdatavalid(avmm_1_global_avm_readdatavalid[__i]),
            .avm_burstcount(avmm_1_global_avm_burstcount[__i]),
            .avm_writeack(avmm_1_global_avm_writeack[__i]),
            // ICM ic
            .ic_arb_request(avmm_1_icm_in_arb_request[__i]),
            .ic_arb_enable(avmm_1_icm_in_arb_enable[__i]),
            .ic_arb_read(avmm_1_icm_in_arb_read[__i]),
            .ic_arb_write(avmm_1_icm_in_arb_write[__i]),
            .ic_arb_burstcount(avmm_1_icm_in_arb_burstcount[__i]),
            .ic_arb_address(avmm_1_icm_in_arb_address[__i]),
            .ic_arb_writedata(avmm_1_icm_in_arb_writedata[__i]),
            .ic_arb_byteenable(avmm_1_icm_in_arb_byteenable[__i]),
            .ic_arb_stall(avmm_1_icm_in_arb_stall[__i]),
            .ic_wrp_ack(avmm_1_icm_in_wrp_ack[__i]),
            .ic_rrp_datavalid(avmm_1_icm_in_rrp_datavalid[__i]),
            .ic_rrp_data(avmm_1_icm_in_rrp_data[__i])
         );

      end

      // INST global_icavmm_1_rw of kernel_3mm_internal_ic_12859678891910164533
      kernel_3mm_internal_ic_12859678891910164533 global_icavmm_1_rw
      (
         .clock(clock),
         .resetn(resetn),
         // ICM m
         .m_arb_request(icm_routedavmm_1_rw_arb_request),
         .m_arb_enable(icm_routedavmm_1_rw_arb_enable),
         .m_arb_read(icm_routedavmm_1_rw_arb_read),
         .m_arb_write(icm_routedavmm_1_rw_arb_write),
         .m_arb_burstcount(icm_routedavmm_1_rw_arb_burstcount),
         .m_arb_address(icm_routedavmm_1_rw_arb_address),
         .m_arb_writedata(icm_routedavmm_1_rw_arb_writedata),
         .m_arb_byteenable(icm_routedavmm_1_rw_arb_byteenable),
         .m_arb_stall(icm_routedavmm_1_rw_arb_stall),
         .m_wrp_ack(icm_routedavmm_1_rw_wrp_ack),
         .m_rrp_datavalid(icm_routedavmm_1_rw_rrp_datavalid),
         .m_rrp_data(icm_routedavmm_1_rw_rrp_data),
         // ICM mout
         .mout_arb_request(icm_out_0_rw_arb_request[0]),
         .mout_arb_enable(icm_out_0_rw_arb_enable[0]),
         .mout_arb_read(icm_out_0_rw_arb_read[0]),
         .mout_arb_write(icm_out_0_rw_arb_write[0]),
         .mout_arb_burstcount(icm_out_0_rw_arb_burstcount[0]),
         .mout_arb_address(icm_out_0_rw_arb_address[0]),
         .mout_arb_writedata(icm_out_0_rw_arb_writedata[0]),
         .mout_arb_byteenable(icm_out_0_rw_arb_byteenable[0]),
         .mout_arb_id(icm_out_0_rw_arb_id[0]),
         .mout_arb_stall(icm_out_0_rw_arb_stall[0]),
         .mout_wrp_ack(icm_out_0_rw_wrp_ack[0]),
         .mout_rrp_datavalid(icm_out_0_rw_rrp_datavalid[0]),
         .mout_rrp_data(icm_out_0_rw_rrp_data[0])
      );

      for( __i = 0; __i < 12; __i = __i + 1 )
      begin:mavmm_1_rw
         assign icm_routedavmm_1_rw_arb_request[__i] = avmm_1_icm_in_arb_request[__i];
         assign icm_routedavmm_1_rw_arb_enable[__i] = avmm_1_icm_in_arb_enable[__i];
         assign icm_routedavmm_1_rw_arb_read[__i] = avmm_1_icm_in_arb_read[__i];
         assign icm_routedavmm_1_rw_arb_write[__i] = avmm_1_icm_in_arb_write[__i];
         assign icm_routedavmm_1_rw_arb_burstcount[__i] = avmm_1_icm_in_arb_burstcount[__i];
         assign icm_routedavmm_1_rw_arb_address[__i] = avmm_1_icm_in_arb_address[__i];
         assign icm_routedavmm_1_rw_arb_writedata[__i] = avmm_1_icm_in_arb_writedata[__i];
         assign icm_routedavmm_1_rw_arb_byteenable[__i] = avmm_1_icm_in_arb_byteenable[__i];
         assign avmm_1_icm_in_arb_stall[__i] = icm_routedavmm_1_rw_arb_stall[__i];
         assign avmm_1_icm_in_wrp_ack[__i] = icm_routedavmm_1_rw_wrp_ack[__i];
         assign avmm_1_icm_in_rrp_datavalid[__i] = icm_routedavmm_1_rw_rrp_datavalid[__i];
         assign avmm_1_icm_in_rrp_data[__i] = icm_routedavmm_1_rw_rrp_data[__i];
      end

      // INST global_out_ic_to_avmavmm_1_rw of acl_ic_to_avm
      acl_ic_to_avm
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(32),
         .BYTEENA_W(4),
         .LATENCY(1),
         .USE_WRITE_ACK(0),
         .NO_IDLE_STALL(0),
         .ENABLE_WAITREQUEST_ALLOWANCE(0),
         .ID_W(4),
         .ASYNC_RESET(1),
         .SYNCHRONIZE_RESET(0)
      )
      global_out_ic_to_avmavmm_1_rw
      (
         // ICM ic
         .ic_arb_request(icm_out_0_rw_arb_request[0]),
         .ic_arb_enable(icm_out_0_rw_arb_enable[0]),
         .ic_arb_read(icm_out_0_rw_arb_read[0]),
         .ic_arb_write(icm_out_0_rw_arb_write[0]),
         .ic_arb_burstcount(icm_out_0_rw_arb_burstcount[0]),
         .ic_arb_address(icm_out_0_rw_arb_address[0]),
         .ic_arb_writedata(icm_out_0_rw_arb_writedata[0]),
         .ic_arb_byteenable(icm_out_0_rw_arb_byteenable[0]),
         .ic_arb_id(icm_out_0_rw_arb_id[0]),
         .ic_arb_stall(icm_out_0_rw_arb_stall[0]),
         .ic_wrp_ack(icm_out_0_rw_wrp_ack[0]),
         .ic_rrp_datavalid(icm_out_0_rw_rrp_datavalid[0]),
         .ic_rrp_data(icm_out_0_rw_rrp_data[0]),
         // AVM avm
         .avm_enable(avmm_1_rw_enable),
         .avm_read(avmm_1_rw_read),
         .avm_write(avmm_1_rw_write),
         .avm_address(avmm_1_rw_address),
         .avm_writedata(avmm_1_rw_writedata),
         .avm_byteenable(avmm_1_rw_byteenable),
         .avm_readdata(avmm_1_rw_readdata),
         .avm_readdatavalid(avmm_1_rw_readdatavalid),
         .avm_burstcount(avmm_1_rw_burstcount),
         .avm_writeack(avmm_1_rw_writeack),
         .clock(clock),
         .resetn(resetn),
         .avm_waitrequest(1'b0)
      );

   end
   endgenerate

endmodule

/////////////////////////////////////////////////////////////////
// MODULE kernel_3mm_internal_ic_12859678891910164533
/////////////////////////////////////////////////////////////////
module kernel_3mm_internal_ic_12859678891910164533
(
   input logic clock,
   input logic resetn,
   // ICM m
   input logic m_arb_request [12],
   input logic m_arb_enable [12],
   input logic m_arb_read [12],
   input logic m_arb_write [12],
   input logic m_arb_burstcount [12],
   input logic [29:0] m_arb_address [12],
   input logic [31:0] m_arb_writedata [12],
   input logic [3:0] m_arb_byteenable [12],
   output logic m_arb_stall [12],
   output logic m_wrp_ack [12],
   output logic m_rrp_datavalid [12],
   output logic [31:0] m_rrp_data [12],
   // ICM mout
   output logic mout_arb_request,
   output logic mout_arb_enable,
   output logic mout_arb_read,
   output logic mout_arb_write,
   output logic mout_arb_burstcount,
   output logic [29:0] mout_arb_address,
   output logic [31:0] mout_arb_writedata,
   output logic [3:0] mout_arb_byteenable,
   output logic [3:0] mout_arb_id,
   input logic mout_arb_stall,
   input logic mout_wrp_ack,
   input logic mout_rrp_datavalid,
   input logic [31:0] mout_rrp_data
);
   genvar __i;
   generate
      for( __i = 0; __i < 12; __i = __i + 1 )
      begin:m
         logic [3:0] id;
         acl_ic_host_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) m_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) arb_intf();
         acl_ic_wrp_intf
         #(
            .ID_W(4)
         ) wrp_intf();
         acl_ic_rrp_intf
         #(
            .DATA_W(32),
            .ID_W(4)
         ) rrp_intf();

         assign id = __i;
         // INST m_endp of acl_ic_host_endpoint
         acl_ic_host_endpoint
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4),
            .NUM_READ_HOSTS(12),
            .NUM_WRITE_HOSTS(12),
            .ID(__i)
         )
         m_endp
         (
            .clock(clock),
            .resetn(resetn),
            .m_intf(m_intf),
            .arb_intf(arb_intf),
            .wrp_intf(wrp_intf),
            .rrp_intf(rrp_intf)
         );

         assign m_intf.arb.req.request = m_arb_request[__i];
         assign m_intf.arb.req.enable = m_arb_enable[__i];
         assign m_intf.arb.req.read = m_arb_read[__i];
         assign m_intf.arb.req.write = m_arb_write[__i];
         assign m_intf.arb.req.burstcount = m_arb_burstcount[__i];
         assign m_intf.arb.req.address = m_arb_address[__i];
         assign m_intf.arb.req.writedata = m_arb_writedata[__i];
         assign m_intf.arb.req.byteenable = m_arb_byteenable[__i];
         assign m_arb_stall[__i] = m_intf.arb.stall;
         assign m_wrp_ack[__i] = m_intf.wrp.ack;
         assign m_rrp_datavalid[__i] = m_intf.rrp.datavalid;
         assign m_rrp_data[__i] = m_intf.rrp.data;
         assign m_intf.arb.req.id = id;
      end

   endgenerate

   generate
   begin:s
      acl_arb_intf
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(30),
         .BYTEENA_W(4),
         .ID_W(4)
      ) in_arb_intf();
      acl_arb_intf
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(30),
         .BYTEENA_W(4),
         .ID_W(4)
      ) out_arb_intf();
      acl_ic_wrp_intf
      #(
         .ID_W(4)
      ) wrp_intf();
      acl_ic_rrp_intf
      #(
         .DATA_W(32),
         .ID_W(4)
      ) rrp_intf();

      // INST s_endp of acl_ic_agent_endpoint
      acl_ic_agent_endpoint
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(30),
         .BYTEENA_W(4),
         .ID_W(4),
         .NUM_READ_HOSTS(12),
         .NUM_WRITE_HOSTS(12),
         .PIPELINE_RETURN_PATHS(1),
         .WRP_FIFO_DEPTH(0),
         .RRP_FIFO_DEPTH(64),
         .RRP_USE_LL_FIFO(1),
         .AGENT_FIXED_LATENCY(3),
         .SEPARATE_READ_WRITE_STALLS(0),
         .ASYNC_RESET(1),
         .SYNCHRONIZE_RESET(0)
      )
      s_endp
      (
         .clock(clock),
         .resetn(resetn),
         .m_intf(in_arb_intf),
         .s_intf(out_arb_intf),
         .s_readdatavalid(mout_rrp_datavalid),
         .s_readdata(mout_rrp_data),
         .s_writeack(mout_wrp_ack),
         .wrp_intf(wrp_intf),
         .rrp_intf(rrp_intf)
      );

   end
   endgenerate

   generate
   begin:wrp
      assign m[0].wrp_intf.ack = s.wrp_intf.ack;
      assign m[0].wrp_intf.id = s.wrp_intf.id;
      assign m[1].wrp_intf.ack = s.wrp_intf.ack;
      assign m[1].wrp_intf.id = s.wrp_intf.id;
      assign m[2].wrp_intf.ack = s.wrp_intf.ack;
      assign m[2].wrp_intf.id = s.wrp_intf.id;
      assign m[3].wrp_intf.ack = s.wrp_intf.ack;
      assign m[3].wrp_intf.id = s.wrp_intf.id;
      assign m[4].wrp_intf.ack = s.wrp_intf.ack;
      assign m[4].wrp_intf.id = s.wrp_intf.id;
      assign m[5].wrp_intf.ack = s.wrp_intf.ack;
      assign m[5].wrp_intf.id = s.wrp_intf.id;
      assign m[6].wrp_intf.ack = s.wrp_intf.ack;
      assign m[6].wrp_intf.id = s.wrp_intf.id;
      assign m[7].wrp_intf.ack = s.wrp_intf.ack;
      assign m[7].wrp_intf.id = s.wrp_intf.id;
      assign m[8].wrp_intf.ack = s.wrp_intf.ack;
      assign m[8].wrp_intf.id = s.wrp_intf.id;
      assign m[9].wrp_intf.ack = s.wrp_intf.ack;
      assign m[9].wrp_intf.id = s.wrp_intf.id;
      assign m[10].wrp_intf.ack = s.wrp_intf.ack;
      assign m[10].wrp_intf.id = s.wrp_intf.id;
      assign m[11].wrp_intf.ack = s.wrp_intf.ack;
      assign m[11].wrp_intf.id = s.wrp_intf.id;
   end
   endgenerate

   generate
   begin:rrp
      assign m[0].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[0].rrp_intf.data = s.rrp_intf.data;
      assign m[0].rrp_intf.id = s.rrp_intf.id;
      assign m[1].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[1].rrp_intf.data = s.rrp_intf.data;
      assign m[1].rrp_intf.id = s.rrp_intf.id;
      assign m[2].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[2].rrp_intf.data = s.rrp_intf.data;
      assign m[2].rrp_intf.id = s.rrp_intf.id;
      assign m[3].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[3].rrp_intf.data = s.rrp_intf.data;
      assign m[3].rrp_intf.id = s.rrp_intf.id;
      assign m[4].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[4].rrp_intf.data = s.rrp_intf.data;
      assign m[4].rrp_intf.id = s.rrp_intf.id;
      assign m[5].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[5].rrp_intf.data = s.rrp_intf.data;
      assign m[5].rrp_intf.id = s.rrp_intf.id;
      assign m[6].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[6].rrp_intf.data = s.rrp_intf.data;
      assign m[6].rrp_intf.id = s.rrp_intf.id;
      assign m[7].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[7].rrp_intf.data = s.rrp_intf.data;
      assign m[7].rrp_intf.id = s.rrp_intf.id;
      assign m[8].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[8].rrp_intf.data = s.rrp_intf.data;
      assign m[8].rrp_intf.id = s.rrp_intf.id;
      assign m[9].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[9].rrp_intf.data = s.rrp_intf.data;
      assign m[9].rrp_intf.id = s.rrp_intf.id;
      assign m[10].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[10].rrp_intf.data = s.rrp_intf.data;
      assign m[10].rrp_intf.id = s.rrp_intf.id;
      assign m[11].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[11].rrp_intf.data = s.rrp_intf.data;
      assign m[11].rrp_intf.id = s.rrp_intf.id;
   end
   endgenerate

   generate
      for( __i = 0; __i < 11; __i = __i + 1 )
      begin:a
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) m0_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) m1_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) mout_intf();

         // INST a of acl_arb2
         acl_arb2
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4),
            .PIPELINE("none"),
            .KEEP_LAST_GRANT(1),
            .NO_STALL_NETWORK(0),
            .ASYNC_RESET(1),
            .SYNCHRONIZE_RESET(0)
         )
         a
         (
            .clock(clock),
            .resetn(resetn),
            .m0_intf(m0_intf),
            .m1_intf(m1_intf),
            .mout_intf(mout_intf)
         );

      end

   endgenerate

   generate
      for( __i = 0; __i < 14; __i = __i + 1 )
      begin:dp
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) in_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) out_intf();

         // INST dp of acl_arb_pipeline_reg
         acl_arb_pipeline_reg
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4),
            .ASYNC_RESET(1),
            .SYNCHRONIZE_RESET(0)
         )
         dp
         (
            .clock(clock),
            .resetn(resetn),
            .in_intf(in_intf),
            .out_intf(out_intf)
         );

      end

   endgenerate

   generate
      for( __i = 0; __i < 2; __i = __i + 1 )
      begin:sp
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) in_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4)
         ) out_intf();

         // INST sp of acl_arb_staging_reg
         acl_arb_staging_reg
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(30),
            .BYTEENA_W(4),
            .ID_W(4),
            .ASYNC_RESET(1),
            .SYNCHRONIZE_RESET(0)
         )
         sp
         (
            .clock(clock),
            .resetn(resetn),
            .in_intf(in_intf),
            .out_intf(out_intf)
         );

      end

   endgenerate

   assign mout_arb_request = dp[0].out_intf.req.request;
   assign mout_arb_enable = dp[0].out_intf.req.enable;
   assign mout_arb_read = dp[0].out_intf.req.read;
   assign mout_arb_write = dp[0].out_intf.req.write;
   assign mout_arb_burstcount = dp[0].out_intf.req.burstcount;
   assign mout_arb_address = dp[0].out_intf.req.address;
   assign mout_arb_writedata = dp[0].out_intf.req.writedata;
   assign mout_arb_byteenable = dp[0].out_intf.req.byteenable;
   assign mout_arb_id = dp[0].out_intf.req.id;
   assign dp[0].out_intf.stall = mout_arb_stall;
   assign dp[0].in_intf.req = sp[0].out_intf.req;
   assign sp[0].out_intf.stall = dp[0].in_intf.stall;
   assign sp[0].in_intf.req = s.out_arb_intf.req;
   assign s.out_arb_intf.stall = sp[0].in_intf.stall;
   assign s.in_arb_intf.req = sp[1].out_intf.req;
   assign sp[1].out_intf.stall = s.in_arb_intf.stall;
   assign sp[1].in_intf.req = dp[1].out_intf.req;
   assign dp[1].out_intf.stall = sp[1].in_intf.stall;
   assign dp[1].in_intf.req = a[10].mout_intf.req;
   assign a[10].mout_intf.stall = dp[1].in_intf.stall;
   assign a[10].m0_intf.req = a[9].mout_intf.req;
   assign a[9].mout_intf.stall = a[10].m0_intf.stall;
   assign a[10].m1_intf.req = a[8].mout_intf.req;
   assign a[8].mout_intf.stall = a[10].m1_intf.stall;
   assign a[9].m0_intf.req = a[6].mout_intf.req;
   assign a[6].mout_intf.stall = a[9].m0_intf.stall;
   assign a[9].m1_intf.req = a[7].mout_intf.req;
   assign a[7].mout_intf.stall = a[9].m1_intf.stall;
   assign a[8].m0_intf.req = a[4].mout_intf.req;
   assign a[4].mout_intf.stall = a[8].m0_intf.stall;
   assign a[8].m1_intf.req = a[5].mout_intf.req;
   assign a[5].mout_intf.stall = a[8].m1_intf.stall;
   assign a[6].m0_intf.req = a[0].mout_intf.req;
   assign a[0].mout_intf.stall = a[6].m0_intf.stall;
   assign a[6].m1_intf.req = a[1].mout_intf.req;
   assign a[1].mout_intf.stall = a[6].m1_intf.stall;
   assign a[7].m0_intf.req = a[2].mout_intf.req;
   assign a[2].mout_intf.stall = a[7].m0_intf.stall;
   assign a[7].m1_intf.req = a[3].mout_intf.req;
   assign a[3].mout_intf.stall = a[7].m1_intf.stall;
   assign a[4].m0_intf.req = dp[2].out_intf.req;
   assign dp[2].out_intf.stall = a[4].m0_intf.stall;
   assign a[4].m1_intf.req = dp[3].out_intf.req;
   assign dp[3].out_intf.stall = a[4].m1_intf.stall;
   assign a[5].m0_intf.req = dp[4].out_intf.req;
   assign dp[4].out_intf.stall = a[5].m0_intf.stall;
   assign a[5].m1_intf.req = dp[5].out_intf.req;
   assign dp[5].out_intf.stall = a[5].m1_intf.stall;
   assign a[0].m0_intf.req = dp[6].out_intf.req;
   assign dp[6].out_intf.stall = a[0].m0_intf.stall;
   assign a[0].m1_intf.req = dp[7].out_intf.req;
   assign dp[7].out_intf.stall = a[0].m1_intf.stall;
   assign a[1].m0_intf.req = dp[8].out_intf.req;
   assign dp[8].out_intf.stall = a[1].m0_intf.stall;
   assign a[1].m1_intf.req = dp[9].out_intf.req;
   assign dp[9].out_intf.stall = a[1].m1_intf.stall;
   assign a[2].m0_intf.req = dp[10].out_intf.req;
   assign dp[10].out_intf.stall = a[2].m0_intf.stall;
   assign a[2].m1_intf.req = dp[11].out_intf.req;
   assign dp[11].out_intf.stall = a[2].m1_intf.stall;
   assign a[3].m0_intf.req = dp[12].out_intf.req;
   assign dp[12].out_intf.stall = a[3].m0_intf.stall;
   assign a[3].m1_intf.req = dp[13].out_intf.req;
   assign dp[13].out_intf.stall = a[3].m1_intf.stall;
   assign dp[2].in_intf.req = m[8].arb_intf.req;
   assign m[8].arb_intf.stall = dp[2].in_intf.stall;
   assign dp[3].in_intf.req = m[9].arb_intf.req;
   assign m[9].arb_intf.stall = dp[3].in_intf.stall;
   assign dp[4].in_intf.req = m[10].arb_intf.req;
   assign m[10].arb_intf.stall = dp[4].in_intf.stall;
   assign dp[5].in_intf.req = m[11].arb_intf.req;
   assign m[11].arb_intf.stall = dp[5].in_intf.stall;
   assign dp[6].in_intf.req = m[0].arb_intf.req;
   assign m[0].arb_intf.stall = dp[6].in_intf.stall;
   assign dp[7].in_intf.req = m[1].arb_intf.req;
   assign m[1].arb_intf.stall = dp[7].in_intf.stall;
   assign dp[8].in_intf.req = m[2].arb_intf.req;
   assign m[2].arb_intf.stall = dp[8].in_intf.stall;
   assign dp[9].in_intf.req = m[3].arb_intf.req;
   assign m[3].arb_intf.stall = dp[9].in_intf.stall;
   assign dp[10].in_intf.req = m[4].arb_intf.req;
   assign m[4].arb_intf.stall = dp[10].in_intf.stall;
   assign dp[11].in_intf.req = m[5].arb_intf.req;
   assign m[5].arb_intf.stall = dp[11].in_intf.stall;
   assign dp[12].in_intf.req = m[6].arb_intf.req;
   assign m[6].arb_intf.stall = dp[12].in_intf.stall;
   assign dp[13].in_intf.req = m[7].arb_intf.req;
   assign m[7].arb_intf.stall = dp[13].in_intf.stall;
endmodule

