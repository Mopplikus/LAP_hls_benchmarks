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
// MODULE example_internal
/////////////////////////////////////////////////////////////////
module example_internal
(
   input logic clock,
   input logic resetn,
   input logic start,
   output logic busy,
   output logic done,
   input logic stall,
   output logic [31:0] returndata
);
   genvar __i;
   genvar __j;
   genvar __k;
   logic local_avm_aspace64_enable [1][1];
   logic local_avm_aspace64_read [1][1];
   logic local_avm_aspace64_write [1][1];
   logic [31:0] local_avm_aspace64_address [1][1];
   logic [31:0] local_avm_aspace64_writedata [1][1];
   logic [3:0] local_avm_aspace64_byteenable [1][1];
   logic local_avm_aspace64_waitrequest [1][1];
   logic [31:0] local_avm_aspace64_readdata [1][1];
   logic local_avm_aspace64_readdatavalid [1][1];
   logic local_avm_aspace64_burstcount [1][1];
   logic local_avm_aspace64_writeack [1][1];
   logic local_avm_aspace65_enable [1][1];
   logic local_avm_aspace65_read [1][1];
   logic local_avm_aspace65_write [1][1];
   logic [31:0] local_avm_aspace65_address [1][1];
   logic [31:0] local_avm_aspace65_writedata [1][1];
   logic [3:0] local_avm_aspace65_byteenable [1][1];
   logic local_avm_aspace65_waitrequest [1][1];
   logic [31:0] local_avm_aspace65_readdata [1][1];
   logic local_avm_aspace65_readdatavalid [1][1];
   logic local_avm_aspace65_burstcount [1][1];
   logic local_avm_aspace65_writeack [1][1];

   // INST example_internal of example_function_wrapper
   example_function_wrapper example_internal
   (
      .clock(clock),
      .resetn(resetn),
      .start(start),
      .busy(busy),
      .done(done),
      .stall(stall),
      .returndata(returndata),
      // AVM avm_unnamed_example3_example
      .avm_unnamed_example3_example_enable(local_avm_aspace64_enable[0][0]),
      .avm_unnamed_example3_example_read(local_avm_aspace64_read[0][0]),
      .avm_unnamed_example3_example_write(local_avm_aspace64_write[0][0]),
      .avm_unnamed_example3_example_address(local_avm_aspace64_address[0][0]),
      .avm_unnamed_example3_example_writedata(local_avm_aspace64_writedata[0][0]),
      .avm_unnamed_example3_example_byteenable(local_avm_aspace64_byteenable[0][0]),
      .avm_unnamed_example3_example_waitrequest(local_avm_aspace64_waitrequest[0][0]),
      .avm_unnamed_example3_example_readdata(local_avm_aspace64_readdata[0][0]),
      .avm_unnamed_example3_example_readdatavalid(local_avm_aspace64_readdatavalid[0][0]),
      .avm_unnamed_example3_example_burstcount(local_avm_aspace64_burstcount[0][0]),
      .avm_unnamed_example3_example_writeack(local_avm_aspace64_writeack[0][0]),
      // AVM avm_unnamed_example4_example
      .avm_unnamed_example4_example_enable(local_avm_aspace65_enable[0][0]),
      .avm_unnamed_example4_example_read(local_avm_aspace65_read[0][0]),
      .avm_unnamed_example4_example_write(local_avm_aspace65_write[0][0]),
      .avm_unnamed_example4_example_address(local_avm_aspace65_address[0][0]),
      .avm_unnamed_example4_example_writedata(local_avm_aspace65_writedata[0][0]),
      .avm_unnamed_example4_example_byteenable(local_avm_aspace65_byteenable[0][0]),
      .avm_unnamed_example4_example_waitrequest(local_avm_aspace65_waitrequest[0][0]),
      .avm_unnamed_example4_example_readdata(local_avm_aspace65_readdata[0][0]),
      .avm_unnamed_example4_example_readdatavalid(local_avm_aspace65_readdatavalid[0][0]),
      .avm_unnamed_example4_example_burstcount(local_avm_aspace65_burstcount[0][0]),
      .avm_unnamed_example4_example_writeack(local_avm_aspace65_writeack[0][0])
   );

   generate
   begin:local_mem_system_aspace64
      logic local_icm_arb_request [1][1];
      logic local_icm_arb_enable [1][1];
      logic local_icm_arb_read [1][1];
      logic local_icm_arb_write [1][1];
      logic local_icm_arb_burstcount [1][1];
      logic [6:0] local_icm_arb_address [1][1];
      logic [31:0] local_icm_arb_writedata [1][1];
      logic [3:0] local_icm_arb_byteenable [1][1];
      logic local_icm_arb_stall [1][1];
      logic local_icm_wrp_ack [1][1];
      logic local_icm_rrp_datavalid [1][1];
      logic [31:0] local_icm_rrp_data [1][1];

      for( __i = 0; __i < 1; __i = __i + 1 )
      begin:local_mem_group
         for( __j = 0; __j < 1; __j = __j + 1 )
         begin:host
            // INST avm_to_ic of acl_avm_to_ic
            acl_avm_to_ic
            #(
               .DATA_W(32),
               .WRITEDATA_W(32),
               .BURSTCOUNT_W(1),
               .ADDRESS_W(32),
               .BYTEENA_W(4)
            )
            avm_to_ic
            (
               // AVM avm
               .avm_enable(local_avm_aspace64_enable[__i][__j]),
               .avm_read(local_avm_aspace64_read[__i][__j]),
               .avm_write(local_avm_aspace64_write[__i][__j]),
               .avm_address(local_avm_aspace64_address[__i][__j]),
               .avm_writedata(local_avm_aspace64_writedata[__i][__j]),
               .avm_byteenable(local_avm_aspace64_byteenable[__i][__j]),
               .avm_waitrequest(local_avm_aspace64_waitrequest[__i][__j]),
               .avm_readdata(local_avm_aspace64_readdata[__i][__j]),
               .avm_readdatavalid(local_avm_aspace64_readdatavalid[__i][__j]),
               .avm_burstcount(local_avm_aspace64_burstcount[__i][__j]),
               .avm_writeack(local_avm_aspace64_writeack[__i][__j]),
               // ICM ic
               .ic_arb_request(local_icm_arb_request[__i][__j]),
               .ic_arb_enable(local_icm_arb_enable[__i][__j]),
               .ic_arb_read(local_icm_arb_read[__i][__j]),
               .ic_arb_write(local_icm_arb_write[__i][__j]),
               .ic_arb_burstcount(local_icm_arb_burstcount[__i][__j]),
               .ic_arb_address(local_icm_arb_address[__i][__j]),
               .ic_arb_writedata(local_icm_arb_writedata[__i][__j]),
               .ic_arb_byteenable(local_icm_arb_byteenable[__i][__j]),
               .ic_arb_stall(local_icm_arb_stall[__i][__j]),
               .ic_wrp_ack(local_icm_wrp_ack[__i][__j]),
               .ic_rrp_datavalid(local_icm_rrp_datavalid[__i][__j]),
               .ic_rrp_data(local_icm_rrp_data[__i][__j])
            );

         end

         for( __j = 0; __j < 1; __j = __j + 1 )
         begin:bank
            logic port_enable [1:2];
            logic port_read [1:2];
            logic port_write [1:2];
            logic [6:0] port_address [1:2];
            logic [31:0] port_writedata [1:2];
            logic [3:0] port_byteenable [1:2];
            logic port_waitrequest [1:2];
            logic [31:0] port_readdata [1:2];
            logic port_readdatavalid [1:2];

            // INST mem0 of acl_mem1x
            acl_mem1x
            #(
               .INTENDED_DEVICE_FAMILY("Arria 10"),
               .DEPTH_WORDS(128),
               .WIDTH(32),
               .MEM_LATENCY(3),
               .ASYNC_RESET(1),
               .SYNCHRONIZE_RESET(0),
               .ENABLED(0),
               .RDW_MODE("DONT_CARE"),
               .RAM_OPERATION_MODE("DUAL_PORT"),
               .MINIMIZE_MEMORY_USAGE(0),
               .USE_BYTEENA(0),
               .RAM_BLOCK_TYPE("AUTO")
            )
            mem0
            (
               .clk(clock),
               .resetn(resetn),
               // AVS avs_port1
               .avs_port1_enable(port_enable[1]),
               .avs_port1_read(port_read[1]),
               .avs_port1_write(port_write[1]),
               .avs_port1_address(port_address[1]),
               .avs_port1_writedata(port_writedata[1]),
               .avs_port1_byteenable(port_byteenable[1]),
               .avs_port1_waitrequest(port_waitrequest[1]),
               .avs_port1_readdata(port_readdata[1]),
               .avs_port1_readdatavalid(port_readdatavalid[1]),
               // AVS avs_port2
               .avs_port2_enable(port_enable[2]),
               .avs_port2_read(port_read[2]),
               .avs_port2_write(port_write[2]),
               .avs_port2_address(port_address[2]),
               .avs_port2_writedata(port_writedata[2]),
               .avs_port2_byteenable(port_byteenable[2]),
               .avs_port2_waitrequest(port_waitrequest[2]),
               .avs_port2_readdata(port_readdata[2]),
               .avs_port2_readdatavalid(port_readdatavalid[2])
            );

         end

         for( __j = 0; __j < 1; __j = __j + 1 )
         begin:router
            logic b_arb_request [1];
            logic b_arb_enable [1];
            logic b_arb_read [1];
            logic b_arb_write [1];
            logic b_arb_burstcount [1];
            logic [6:0] b_arb_address [1];
            logic [31:0] b_arb_writedata [1];
            logic [3:0] b_arb_byteenable [1];
            logic b_arb_stall [1];
            logic b_wrp_ack [1];
            logic b_rrp_datavalid [1];
            logic [31:0] b_rrp_data [1];
            logic bank_select;

            // INST router of acl_ic_local_mem_router
            acl_ic_local_mem_router
            #(
               .DATA_W(32),
               .BURSTCOUNT_W(1),
               .ADDRESS_W(7),
               .BYTEENA_W(4),
               .NUM_BANKS(1)
            )
            router
            (
               .clock(clock),
               .resetn(resetn),
               .bank_select(bank_select),
               // ICM m
               .m_arb_request(local_icm_arb_request[__i][__j]),
               .m_arb_enable(local_icm_arb_enable[__i][__j]),
               .m_arb_read(local_icm_arb_read[__i][__j]),
               .m_arb_write(local_icm_arb_write[__i][__j]),
               .m_arb_burstcount(local_icm_arb_burstcount[__i][__j]),
               .m_arb_address(local_icm_arb_address[__i][__j]),
               .m_arb_writedata(local_icm_arb_writedata[__i][__j]),
               .m_arb_byteenable(local_icm_arb_byteenable[__i][__j]),
               .m_arb_stall(local_icm_arb_stall[__i][__j]),
               .m_wrp_ack(local_icm_wrp_ack[__i][__j]),
               .m_rrp_datavalid(local_icm_rrp_datavalid[__i][__j]),
               .m_rrp_data(local_icm_rrp_data[__i][__j]),
               // ICM b
               .b_arb_request(b_arb_request),
               .b_arb_enable(b_arb_enable),
               .b_arb_read(b_arb_read),
               .b_arb_write(b_arb_write),
               .b_arb_burstcount(b_arb_burstcount),
               .b_arb_address(b_arb_address),
               .b_arb_writedata(b_arb_writedata),
               .b_arb_byteenable(b_arb_byteenable),
               .b_arb_stall(b_arb_stall),
               .b_wrp_ack(b_wrp_ack),
               .b_rrp_datavalid(b_rrp_datavalid),
               .b_rrp_data(b_rrp_data)
            );

            assign bank_select = 1'b1;
         end

         for( __j = 0; __j < 1; __j = __j + 1 )
         begin:port1bank0
            assign bank[0].port_enable[1] = '0;
            assign bank[0].port_read[1] = '0;
            assign bank[0].port_write[1] = '0;
            assign bank[0].port_address[1] = '0;
            assign bank[0].port_writedata[1] = '0;
            assign bank[0].port_byteenable[1] = '0;
         end

         for( __j = 0; __j < 1; __j = __j + 1 )
         begin:port2bank0
            logic icm_in_arb_request [1];
            logic icm_in_arb_enable [1];
            logic icm_in_arb_read [1];
            logic icm_in_arb_write [1];
            logic icm_in_arb_burstcount [1];
            logic [6:0] icm_in_arb_address [1];
            logic [31:0] icm_in_arb_writedata [1];
            logic [3:0] icm_in_arb_byteenable [1];
            logic icm_in_arb_stall [1];
            logic icm_in_wrp_ack [1];
            logic icm_in_rrp_datavalid [1];
            logic [31:0] icm_in_rrp_data [1];
            logic icm_out_arb_request;
            logic icm_out_arb_enable;
            logic icm_out_arb_read;
            logic icm_out_arb_write;
            logic icm_out_arb_burstcount;
            logic [6:0] icm_out_arb_address;
            logic [31:0] icm_out_arb_writedata;
            logic [3:0] icm_out_arb_byteenable;
            logic icm_out_arb_stall;
            logic icm_out_wrp_ack;
            logic icm_out_rrp_datavalid;
            logic [31:0] icm_out_rrp_data;

            assign icm_in_arb_request[0] = router[0].b_arb_request[0];
            assign icm_in_arb_enable[0] = router[0].b_arb_enable[0];
            assign icm_in_arb_read[0] = router[0].b_arb_read[0];
            assign icm_in_arb_write[0] = router[0].b_arb_write[0];
            assign icm_in_arb_burstcount[0] = router[0].b_arb_burstcount[0];
            assign icm_in_arb_address[0] = router[0].b_arb_address[0];
            assign icm_in_arb_writedata[0] = router[0].b_arb_writedata[0];
            assign icm_in_arb_byteenable[0] = router[0].b_arb_byteenable[0];
            assign router[0].b_arb_stall[0] = icm_in_arb_stall[0];
            assign router[0].b_wrp_ack[0] = icm_in_wrp_ack[0];
            assign router[0].b_rrp_datavalid[0] = icm_in_rrp_datavalid[0];
            assign router[0].b_rrp_data[0] = icm_in_rrp_data[0];
            // INST data_ic of example_internal_ic_1308630933056187501
            example_internal_ic_1308630933056187501 data_ic
            (
               .clock(clock),
               .resetn(resetn),
               // ICM m
               .m_arb_request(icm_in_arb_request),
               .m_arb_enable(icm_in_arb_enable),
               .m_arb_read(icm_in_arb_read),
               .m_arb_write(icm_in_arb_write),
               .m_arb_burstcount(icm_in_arb_burstcount),
               .m_arb_address(icm_in_arb_address),
               .m_arb_writedata(icm_in_arb_writedata),
               .m_arb_byteenable(icm_in_arb_byteenable),
               .m_arb_stall(icm_in_arb_stall),
               .m_wrp_ack(icm_in_wrp_ack),
               .m_rrp_datavalid(icm_in_rrp_datavalid),
               .m_rrp_data(icm_in_rrp_data),
               // ICM mout
               .mout_arb_request(icm_out_arb_request),
               .mout_arb_enable(icm_out_arb_enable),
               .mout_arb_read(icm_out_arb_read),
               .mout_arb_write(icm_out_arb_write),
               .mout_arb_burstcount(icm_out_arb_burstcount),
               .mout_arb_address(icm_out_arb_address),
               .mout_arb_writedata(icm_out_arb_writedata),
               .mout_arb_byteenable(icm_out_arb_byteenable),
               .mout_arb_id(),
               .mout_arb_stall(icm_out_arb_stall),
               .mout_wrp_ack(icm_out_wrp_ack),
               .mout_rrp_datavalid(icm_out_rrp_datavalid),
               .mout_rrp_data(icm_out_rrp_data)
            );

            assign bank[0].port_enable[2] = icm_out_arb_enable;
            assign bank[0].port_read[2] = icm_out_arb_read;
            assign bank[0].port_write[2] = icm_out_arb_write;
            assign bank[0].port_address[2] = icm_out_arb_address;
            assign bank[0].port_writedata[2] = icm_out_arb_writedata;
            assign bank[0].port_byteenable[2] = icm_out_arb_byteenable;
            assign icm_out_arb_stall = bank[0].port_waitrequest[2];
            assign icm_out_rrp_data = bank[0].port_readdata[2];
            assign icm_out_rrp_datavalid = bank[0].port_readdatavalid[2];
            assign icm_out_wrp_ack = 'b0;
         end

      end

   end
   endgenerate

   generate
   begin:local_mem_system_aspace65
      logic local_icm_arb_request [1][1];
      logic local_icm_arb_enable [1][1];
      logic local_icm_arb_read [1][1];
      logic local_icm_arb_write [1][1];
      logic local_icm_arb_burstcount [1][1];
      logic [6:0] local_icm_arb_address [1][1];
      logic [31:0] local_icm_arb_writedata [1][1];
      logic [3:0] local_icm_arb_byteenable [1][1];
      logic local_icm_arb_stall [1][1];
      logic local_icm_wrp_ack [1][1];
      logic local_icm_rrp_datavalid [1][1];
      logic [31:0] local_icm_rrp_data [1][1];

      for( __j = 0; __j < 1; __j = __j + 1 )
      begin:local_mem_group
         for( __k = 0; __k < 1; __k = __k + 1 )
         begin:host
            // INST avm_to_ic of acl_avm_to_ic
            acl_avm_to_ic
            #(
               .DATA_W(32),
               .WRITEDATA_W(32),
               .BURSTCOUNT_W(1),
               .ADDRESS_W(32),
               .BYTEENA_W(4)
            )
            avm_to_ic
            (
               // AVM avm
               .avm_enable(local_avm_aspace65_enable[__j][__k]),
               .avm_read(local_avm_aspace65_read[__j][__k]),
               .avm_write(local_avm_aspace65_write[__j][__k]),
               .avm_address(local_avm_aspace65_address[__j][__k]),
               .avm_writedata(local_avm_aspace65_writedata[__j][__k]),
               .avm_byteenable(local_avm_aspace65_byteenable[__j][__k]),
               .avm_waitrequest(local_avm_aspace65_waitrequest[__j][__k]),
               .avm_readdata(local_avm_aspace65_readdata[__j][__k]),
               .avm_readdatavalid(local_avm_aspace65_readdatavalid[__j][__k]),
               .avm_burstcount(local_avm_aspace65_burstcount[__j][__k]),
               .avm_writeack(local_avm_aspace65_writeack[__j][__k]),
               // ICM ic
               .ic_arb_request(local_icm_arb_request[__j][__k]),
               .ic_arb_enable(local_icm_arb_enable[__j][__k]),
               .ic_arb_read(local_icm_arb_read[__j][__k]),
               .ic_arb_write(local_icm_arb_write[__j][__k]),
               .ic_arb_burstcount(local_icm_arb_burstcount[__j][__k]),
               .ic_arb_address(local_icm_arb_address[__j][__k]),
               .ic_arb_writedata(local_icm_arb_writedata[__j][__k]),
               .ic_arb_byteenable(local_icm_arb_byteenable[__j][__k]),
               .ic_arb_stall(local_icm_arb_stall[__j][__k]),
               .ic_wrp_ack(local_icm_wrp_ack[__j][__k]),
               .ic_rrp_datavalid(local_icm_rrp_datavalid[__j][__k]),
               .ic_rrp_data(local_icm_rrp_data[__j][__k])
            );

         end

         for( __k = 0; __k < 1; __k = __k + 1 )
         begin:bank
            logic port_enable [1:2];
            logic port_read [1:2];
            logic port_write [1:2];
            logic [6:0] port_address [1:2];
            logic [31:0] port_writedata [1:2];
            logic [3:0] port_byteenable [1:2];
            logic port_waitrequest [1:2];
            logic [31:0] port_readdata [1:2];
            logic port_readdatavalid [1:2];

            // INST mem0 of acl_mem1x
            acl_mem1x
            #(
               .INTENDED_DEVICE_FAMILY("Arria 10"),
               .DEPTH_WORDS(128),
               .WIDTH(32),
               .MEM_LATENCY(3),
               .ASYNC_RESET(1),
               .SYNCHRONIZE_RESET(0),
               .ENABLED(0),
               .RDW_MODE("DONT_CARE"),
               .RAM_OPERATION_MODE("DUAL_PORT"),
               .MINIMIZE_MEMORY_USAGE(0),
               .USE_BYTEENA(0),
               .RAM_BLOCK_TYPE("AUTO")
            )
            mem0
            (
               .clk(clock),
               .resetn(resetn),
               // AVS avs_port1
               .avs_port1_enable(port_enable[1]),
               .avs_port1_read(port_read[1]),
               .avs_port1_write(port_write[1]),
               .avs_port1_address(port_address[1]),
               .avs_port1_writedata(port_writedata[1]),
               .avs_port1_byteenable(port_byteenable[1]),
               .avs_port1_waitrequest(port_waitrequest[1]),
               .avs_port1_readdata(port_readdata[1]),
               .avs_port1_readdatavalid(port_readdatavalid[1]),
               // AVS avs_port2
               .avs_port2_enable(port_enable[2]),
               .avs_port2_read(port_read[2]),
               .avs_port2_write(port_write[2]),
               .avs_port2_address(port_address[2]),
               .avs_port2_writedata(port_writedata[2]),
               .avs_port2_byteenable(port_byteenable[2]),
               .avs_port2_waitrequest(port_waitrequest[2]),
               .avs_port2_readdata(port_readdata[2]),
               .avs_port2_readdatavalid(port_readdatavalid[2])
            );

         end

         for( __k = 0; __k < 1; __k = __k + 1 )
         begin:router
            logic b_arb_request [1];
            logic b_arb_enable [1];
            logic b_arb_read [1];
            logic b_arb_write [1];
            logic b_arb_burstcount [1];
            logic [6:0] b_arb_address [1];
            logic [31:0] b_arb_writedata [1];
            logic [3:0] b_arb_byteenable [1];
            logic b_arb_stall [1];
            logic b_wrp_ack [1];
            logic b_rrp_datavalid [1];
            logic [31:0] b_rrp_data [1];
            logic bank_select;

            // INST router of acl_ic_local_mem_router
            acl_ic_local_mem_router
            #(
               .DATA_W(32),
               .BURSTCOUNT_W(1),
               .ADDRESS_W(7),
               .BYTEENA_W(4),
               .NUM_BANKS(1)
            )
            router
            (
               .clock(clock),
               .resetn(resetn),
               .bank_select(bank_select),
               // ICM m
               .m_arb_request(local_icm_arb_request[__j][__k]),
               .m_arb_enable(local_icm_arb_enable[__j][__k]),
               .m_arb_read(local_icm_arb_read[__j][__k]),
               .m_arb_write(local_icm_arb_write[__j][__k]),
               .m_arb_burstcount(local_icm_arb_burstcount[__j][__k]),
               .m_arb_address(local_icm_arb_address[__j][__k]),
               .m_arb_writedata(local_icm_arb_writedata[__j][__k]),
               .m_arb_byteenable(local_icm_arb_byteenable[__j][__k]),
               .m_arb_stall(local_icm_arb_stall[__j][__k]),
               .m_wrp_ack(local_icm_wrp_ack[__j][__k]),
               .m_rrp_datavalid(local_icm_rrp_datavalid[__j][__k]),
               .m_rrp_data(local_icm_rrp_data[__j][__k]),
               // ICM b
               .b_arb_request(b_arb_request),
               .b_arb_enable(b_arb_enable),
               .b_arb_read(b_arb_read),
               .b_arb_write(b_arb_write),
               .b_arb_burstcount(b_arb_burstcount),
               .b_arb_address(b_arb_address),
               .b_arb_writedata(b_arb_writedata),
               .b_arb_byteenable(b_arb_byteenable),
               .b_arb_stall(b_arb_stall),
               .b_wrp_ack(b_wrp_ack),
               .b_rrp_datavalid(b_rrp_datavalid),
               .b_rrp_data(b_rrp_data)
            );

            assign bank_select = 1'b1;
         end

         for( __k = 0; __k < 1; __k = __k + 1 )
         begin:port1bank0
            assign bank[0].port_enable[1] = '0;
            assign bank[0].port_read[1] = '0;
            assign bank[0].port_write[1] = '0;
            assign bank[0].port_address[1] = '0;
            assign bank[0].port_writedata[1] = '0;
            assign bank[0].port_byteenable[1] = '0;
         end

         for( __k = 0; __k < 1; __k = __k + 1 )
         begin:port2bank0
            logic icm_in_arb_request [1];
            logic icm_in_arb_enable [1];
            logic icm_in_arb_read [1];
            logic icm_in_arb_write [1];
            logic icm_in_arb_burstcount [1];
            logic [6:0] icm_in_arb_address [1];
            logic [31:0] icm_in_arb_writedata [1];
            logic [3:0] icm_in_arb_byteenable [1];
            logic icm_in_arb_stall [1];
            logic icm_in_wrp_ack [1];
            logic icm_in_rrp_datavalid [1];
            logic [31:0] icm_in_rrp_data [1];
            logic icm_out_arb_request;
            logic icm_out_arb_enable;
            logic icm_out_arb_read;
            logic icm_out_arb_write;
            logic icm_out_arb_burstcount;
            logic [6:0] icm_out_arb_address;
            logic [31:0] icm_out_arb_writedata;
            logic [3:0] icm_out_arb_byteenable;
            logic icm_out_arb_stall;
            logic icm_out_wrp_ack;
            logic icm_out_rrp_datavalid;
            logic [31:0] icm_out_rrp_data;

            assign icm_in_arb_request[0] = router[0].b_arb_request[0];
            assign icm_in_arb_enable[0] = router[0].b_arb_enable[0];
            assign icm_in_arb_read[0] = router[0].b_arb_read[0];
            assign icm_in_arb_write[0] = router[0].b_arb_write[0];
            assign icm_in_arb_burstcount[0] = router[0].b_arb_burstcount[0];
            assign icm_in_arb_address[0] = router[0].b_arb_address[0];
            assign icm_in_arb_writedata[0] = router[0].b_arb_writedata[0];
            assign icm_in_arb_byteenable[0] = router[0].b_arb_byteenable[0];
            assign router[0].b_arb_stall[0] = icm_in_arb_stall[0];
            assign router[0].b_wrp_ack[0] = icm_in_wrp_ack[0];
            assign router[0].b_rrp_datavalid[0] = icm_in_rrp_datavalid[0];
            assign router[0].b_rrp_data[0] = icm_in_rrp_data[0];
            // INST data_ic of example_internal_ic_1308630933056187501
            example_internal_ic_1308630933056187501 data_ic
            (
               .clock(clock),
               .resetn(resetn),
               // ICM m
               .m_arb_request(icm_in_arb_request),
               .m_arb_enable(icm_in_arb_enable),
               .m_arb_read(icm_in_arb_read),
               .m_arb_write(icm_in_arb_write),
               .m_arb_burstcount(icm_in_arb_burstcount),
               .m_arb_address(icm_in_arb_address),
               .m_arb_writedata(icm_in_arb_writedata),
               .m_arb_byteenable(icm_in_arb_byteenable),
               .m_arb_stall(icm_in_arb_stall),
               .m_wrp_ack(icm_in_wrp_ack),
               .m_rrp_datavalid(icm_in_rrp_datavalid),
               .m_rrp_data(icm_in_rrp_data),
               // ICM mout
               .mout_arb_request(icm_out_arb_request),
               .mout_arb_enable(icm_out_arb_enable),
               .mout_arb_read(icm_out_arb_read),
               .mout_arb_write(icm_out_arb_write),
               .mout_arb_burstcount(icm_out_arb_burstcount),
               .mout_arb_address(icm_out_arb_address),
               .mout_arb_writedata(icm_out_arb_writedata),
               .mout_arb_byteenable(icm_out_arb_byteenable),
               .mout_arb_id(),
               .mout_arb_stall(icm_out_arb_stall),
               .mout_wrp_ack(icm_out_wrp_ack),
               .mout_rrp_datavalid(icm_out_rrp_datavalid),
               .mout_rrp_data(icm_out_rrp_data)
            );

            assign bank[0].port_enable[2] = icm_out_arb_enable;
            assign bank[0].port_read[2] = icm_out_arb_read;
            assign bank[0].port_write[2] = icm_out_arb_write;
            assign bank[0].port_address[2] = icm_out_arb_address;
            assign bank[0].port_writedata[2] = icm_out_arb_writedata;
            assign bank[0].port_byteenable[2] = icm_out_arb_byteenable;
            assign icm_out_arb_stall = bank[0].port_waitrequest[2];
            assign icm_out_rrp_data = bank[0].port_readdata[2];
            assign icm_out_rrp_datavalid = bank[0].port_readdatavalid[2];
            assign icm_out_wrp_ack = 'b0;
         end

      end

   end
   endgenerate

endmodule

/////////////////////////////////////////////////////////////////
// MODULE example_internal_ic_1308630933056187501
/////////////////////////////////////////////////////////////////
module example_internal_ic_1308630933056187501
(
   input logic clock,
   input logic resetn,
   // ICM m
   input logic m_arb_request [1],
   input logic m_arb_enable [1],
   input logic m_arb_read [1],
   input logic m_arb_write [1],
   input logic m_arb_burstcount [1],
   input logic [6:0] m_arb_address [1],
   input logic [31:0] m_arb_writedata [1],
   input logic [3:0] m_arb_byteenable [1],
   output logic m_arb_stall [1],
   output logic m_wrp_ack [1],
   output logic m_rrp_datavalid [1],
   output logic [31:0] m_rrp_data [1],
   // ICM mout
   output logic mout_arb_request,
   output logic mout_arb_enable,
   output logic mout_arb_read,
   output logic mout_arb_write,
   output logic mout_arb_burstcount,
   output logic [6:0] mout_arb_address,
   output logic [31:0] mout_arb_writedata,
   output logic [3:0] mout_arb_byteenable,
   output logic mout_arb_id,
   input logic mout_arb_stall,
   input logic mout_wrp_ack,
   input logic mout_rrp_datavalid,
   input logic [31:0] mout_rrp_data
);
   genvar __i;
   generate
      for( __i = 0; __i < 1; __i = __i + 1 )
      begin:m
         logic id;
         acl_ic_host_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(7),
            .BYTEENA_W(4),
            .ID_W(1)
         ) m_intf();
         acl_arb_intf
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(7),
            .BYTEENA_W(4),
            .ID_W(1)
         ) arb_intf();
         acl_ic_wrp_intf
         #(
            .ID_W(1)
         ) wrp_intf();
         acl_ic_rrp_intf
         #(
            .DATA_W(32),
            .ID_W(1)
         ) rrp_intf();

         assign id = __i;
         // INST m_endp of acl_ic_host_endpoint
         acl_ic_host_endpoint
         #(
            .DATA_W(32),
            .BURSTCOUNT_W(1),
            .ADDRESS_W(7),
            .BYTEENA_W(4),
            .ID_W(1),
            .NUM_READ_HOSTS(1),
            .NUM_WRITE_HOSTS(0),
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
         .ADDRESS_W(7),
         .BYTEENA_W(4),
         .ID_W(1)
      ) in_arb_intf();
      acl_arb_intf
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(7),
         .BYTEENA_W(4),
         .ID_W(1)
      ) out_arb_intf();
      acl_ic_wrp_intf
      #(
         .ID_W(1)
      ) wrp_intf();
      acl_ic_rrp_intf
      #(
         .DATA_W(32),
         .ID_W(1)
      ) rrp_intf();

      // INST s_endp of acl_ic_agent_endpoint
      acl_ic_agent_endpoint
      #(
         .DATA_W(32),
         .BURSTCOUNT_W(1),
         .ADDRESS_W(7),
         .BYTEENA_W(4),
         .ID_W(1),
         .NUM_READ_HOSTS(1),
         .NUM_WRITE_HOSTS(0),
         .PIPELINE_RETURN_PATHS(0),
         .WRP_FIFO_DEPTH(0),
         .RRP_FIFO_DEPTH(0),
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
   end
   endgenerate

   generate
   begin:rrp
      assign m[0].rrp_intf.datavalid = s.rrp_intf.datavalid;
      assign m[0].rrp_intf.data = s.rrp_intf.data;
      assign m[0].rrp_intf.id = s.rrp_intf.id;
   end
   endgenerate

   assign mout_arb_request = s.out_arb_intf.req.request;
   assign mout_arb_enable = s.out_arb_intf.req.enable;
   assign mout_arb_read = s.out_arb_intf.req.read;
   assign mout_arb_write = s.out_arb_intf.req.write;
   assign mout_arb_burstcount = s.out_arb_intf.req.burstcount;
   assign mout_arb_address = s.out_arb_intf.req.address;
   assign mout_arb_writedata = s.out_arb_intf.req.writedata;
   assign mout_arb_byteenable = s.out_arb_intf.req.byteenable;
   assign mout_arb_id = s.out_arb_intf.req.id;
   assign s.out_arb_intf.stall = mout_arb_stall;
   assign s.in_arb_intf.req = m[0].arb_intf.req;
   assign m[0].arb_intf.stall = s.in_arb_intf.stall;
endmodule

