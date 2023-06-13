// tb.v

// Generated using ACDS version 21.1 850

`timescale 1 ps / 1 ps
module tb (
	);

	wire  [31:0] covariance_inst_avmm_1_rw_readdata;                                                           // mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_readdata -> covariance_inst:avmm_1_rw_readdata
	wire  [31:0] covariance_inst_avmm_1_rw_address;                                                            // covariance_inst:avmm_1_rw_address -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_address
	wire   [3:0] covariance_inst_avmm_1_rw_byteenable;                                                         // covariance_inst:avmm_1_rw_byteenable -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_byteenable
	wire         covariance_inst_avmm_1_rw_read;                                                               // covariance_inst:avmm_1_rw_read -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_read
	wire         covariance_inst_avmm_1_rw_write;                                                              // covariance_inst:avmm_1_rw_write -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_write
	wire  [31:0] covariance_inst_avmm_1_rw_writedata;                                                          // covariance_inst:avmm_1_rw_writedata -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:avs_writedata
	wire         clock_reset_inst_clock_clk;                                                                   // clock_reset_inst:clock -> [component_dpi_controller_covariance_inst:clock, covariance_inst:clock, irq_mapper:clk, main_dpi_controller_inst:clock, mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:clock, stream_source_dpi_bfm_covariance_cov_inst:clock, stream_source_dpi_bfm_covariance_data_inst:clock]
	wire         clock_reset_inst_clock2x_clk;                                                                 // clock_reset_inst:clock2x -> [component_dpi_controller_covariance_inst:clock2x, main_dpi_controller_inst:clock2x, stream_source_dpi_bfm_covariance_cov_inst:clock2x, stream_source_dpi_bfm_covariance_data_inst:clock2x]
	wire         component_dpi_controller_covariance_inst_component_call_valid;                                // component_dpi_controller_covariance_inst:start -> covariance_inst:start
	wire         covariance_inst_call_stall;                                                                   // covariance_inst:busy -> component_dpi_controller_covariance_inst:busy
	wire         component_dpi_controller_covariance_inst_component_done_conduit;                              // component_dpi_controller_covariance_inst:component_done -> concatenate_component_done_inst:in_conduit_0
	wire   [0:0] main_dpi_controller_inst_component_enabled_conduit;                                           // main_dpi_controller_inst:component_enabled -> split_component_start_inst:in_conduit
	wire         component_dpi_controller_covariance_inst_component_wait_for_stream_writes_conduit;            // component_dpi_controller_covariance_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_0
	wire         component_dpi_controller_covariance_inst_dpi_control_bind_conduit;                            // component_dpi_controller_covariance_inst:bind_interfaces -> covariance_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire         component_dpi_controller_covariance_inst_dpi_control_enable_conduit;                          // component_dpi_controller_covariance_inst:enable_interfaces -> covariance_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire         concatenate_component_done_inst_out_conduit_conduit;                                          // concatenate_component_done_inst:out_conduit -> main_dpi_controller_inst:component_done
	wire         concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit;                        // concatenate_component_wait_for_stream_writes_inst:out_conduit -> main_dpi_controller_inst:component_wait_for_stream_writes
	wire         split_component_start_inst_out_conduit_0_conduit;                                             // split_component_start_inst:out_conduit_0 -> component_dpi_controller_covariance_inst:component_enabled
	wire         covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;           // covariance_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:do_bind
	wire         covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;         // covariance_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:enable
	wire         covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit; // covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_covariance_cov_inst:source_ready
	wire         covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit;           // covariance_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_covariance_cov_inst:do_bind
	wire         covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit;         // covariance_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_covariance_cov_inst:enable
	wire         covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit; // covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_1 -> stream_source_dpi_bfm_covariance_data_inst:source_ready
	wire         covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit;           // covariance_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_2 -> stream_source_dpi_bfm_covariance_data_inst:do_bind
	wire         covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit;         // covariance_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_2 -> stream_source_dpi_bfm_covariance_data_inst:enable
	wire         component_dpi_controller_covariance_inst_read_implicit_streams_conduit;                       // component_dpi_controller_covariance_inst:read_implicit_streams -> covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst:in_conduit
	wire         main_dpi_controller_inst_reset_ctrl_conduit;                                                  // main_dpi_controller_inst:trigger_reset -> clock_reset_inst:trigger_reset
	wire         covariance_inst_return_valid;                                                                 // covariance_inst:done -> component_dpi_controller_covariance_inst:done
	wire         component_dpi_controller_covariance_inst_component_return_stall;                              // component_dpi_controller_covariance_inst:stall -> covariance_inst:stall
	wire  [63:0] stream_source_dpi_bfm_covariance_cov_inst_source_data_data;                                   // stream_source_dpi_bfm_covariance_cov_inst:source_data -> covariance_inst:cov
	wire  [63:0] stream_source_dpi_bfm_covariance_data_inst_source_data_data;                                  // stream_source_dpi_bfm_covariance_data_inst:source_data -> covariance_inst:data
	wire         clock_reset_inst_reset_reset;                                                                 // clock_reset_inst:resetn -> [component_dpi_controller_covariance_inst:resetn, covariance_inst:resetn, irq_mapper:reset, main_dpi_controller_inst:resetn, mm_agent_dpi_bfm_covariance_avmm_1_rw_inst:reset_n, stream_source_dpi_bfm_covariance_cov_inst:resetn, stream_source_dpi_bfm_covariance_data_inst:resetn]
	wire         component_dpi_controller_covariance_inst_component_irq_irq;                                   // irq_mapper:sender_irq -> component_dpi_controller_covariance_inst:done_irq

	hls_sim_clock_reset #(
		.RESET_CYCLE_HOLD (4)
	) clock_reset_inst (
		.clock         (clock_reset_inst_clock_clk),                  //      clock.clk
		.resetn        (clock_reset_inst_reset_reset),                //      reset.reset_n
		.clock2x       (clock_reset_inst_clock2x_clk),                //    clock2x.clk
		.trigger_reset (main_dpi_controller_inst_reset_ctrl_conduit)  // reset_ctrl.conduit
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("covariance"),
		.COMPONENT_MANGLED_NAME       ("\\3fcovariance@@YAXAEAV\\3f$mm_host@HU\\3f$dwidth@$0CA@@ihc@@U\\3f$awidth@$0CA@@2@U\\3f$latency@$00@2@@ihc@@0@Z"),
		.RETURN_DATAWIDTH             (64),
		.COMPONENT_NUM_AGENTS         (0),
		.COMPONENT_HAS_AGENT_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (0)
	) component_dpi_controller_covariance_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                        //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                      //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                      //                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_covariance_inst_dpi_control_bind_conduit),                 //                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_covariance_inst_dpi_control_enable_conduit),               //               dpi_control_enable.conduit
		.component_enabled                (split_component_start_inst_out_conduit_0_conduit),                                  //                component_enabled.conduit
		.component_done                   (component_dpi_controller_covariance_inst_component_done_conduit),                   //                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_covariance_inst_component_wait_for_stream_writes_conduit), // component_wait_for_stream_writes.conduit
		.agent_busy                       (),                                                                                  //                       agent_busy.conduit
		.read_implicit_streams            (component_dpi_controller_covariance_inst_read_implicit_streams_conduit),            //            read_implicit_streams.conduit
		.readback_from_agents             (),                                                                                  //             readback_from_agents.conduit
		.start                            (component_dpi_controller_covariance_inst_component_call_valid),                     //                   component_call.valid
		.busy                             (covariance_inst_call_stall),                                                        //                                 .stall
		.done                             (covariance_inst_return_valid),                                                      //                 component_return.valid
		.stall                            (component_dpi_controller_covariance_inst_component_return_stall),                   //                                 .stall
		.done_irq                         (component_dpi_controller_covariance_inst_component_irq_irq),                        //                    component_irq.irq
		.returndata                       ()                                                                                   //                       returndata.data
	);

	tb_concatenate_component_done_inst concatenate_component_done_inst (
		.out_conduit  (concatenate_component_done_inst_out_conduit_conduit),             //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_covariance_inst_component_done_conduit)  // in_conduit_0.conduit
	);

	tb_concatenate_component_done_inst concatenate_component_wait_for_stream_writes_inst (
		.out_conduit  (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit),             //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_covariance_inst_component_wait_for_stream_writes_conduit)  // in_conduit_0.conduit
	);

	tb_covariance_component_dpi_controller_bind_conduit_fanout_inst covariance_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_covariance_inst_dpi_control_bind_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit), // out_conduit_1.conduit
		.out_conduit_2 (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit)  // out_conduit_2.conduit
	);

	tb_covariance_component_dpi_controller_bind_conduit_fanout_inst covariance_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_covariance_inst_dpi_control_enable_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit), // out_conduit_1.conduit
		.out_conduit_2 (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit)  // out_conduit_2.conduit
	);

	tb_covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_covariance_inst_read_implicit_streams_conduit),                       //    in_conduit.conduit
		.out_conduit_0 (covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_covariance_inst covariance_inst (
		.avmm_1_rw_address    (covariance_inst_avmm_1_rw_address),                               // avmm_1_rw.address
		.avmm_1_rw_byteenable (covariance_inst_avmm_1_rw_byteenable),                            //          .byteenable
		.avmm_1_rw_read       (covariance_inst_avmm_1_rw_read),                                  //          .read
		.avmm_1_rw_readdata   (covariance_inst_avmm_1_rw_readdata),                              //          .readdata
		.avmm_1_rw_write      (covariance_inst_avmm_1_rw_write),                                 //          .write
		.avmm_1_rw_writedata  (covariance_inst_avmm_1_rw_writedata),                             //          .writedata
		.start                (component_dpi_controller_covariance_inst_component_call_valid),   //      call.valid
		.busy                 (covariance_inst_call_stall),                                      //          .stall
		.clock                (clock_reset_inst_clock_clk),                                      //     clock.clk
		.cov                  (stream_source_dpi_bfm_covariance_cov_inst_source_data_data),      //       cov.data
		.data                 (stream_source_dpi_bfm_covariance_data_inst_source_data_data),     //      data.data
		.resetn               (clock_reset_inst_reset_reset),                                    //     reset.reset_n
		.done                 (covariance_inst_return_valid),                                    //    return.valid
		.stall                (component_dpi_controller_covariance_inst_component_return_stall)  //          .stall
	);

	hls_sim_main_dpi_controller #(
		.NUM_COMPONENTS      (1),
		.COMPONENT_NAMES_STR ("covariance")
	) main_dpi_controller_inst (
		.clock                            (clock_reset_inst_clock_clk),                                            //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                          //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                          //                          clock2x.clk
		.component_enabled                (main_dpi_controller_inst_component_enabled_conduit),                    //                component_enabled.conduit
		.component_done                   (concatenate_component_done_inst_out_conduit_conduit),                   //                   component_done.conduit
		.component_wait_for_stream_writes (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit), // component_wait_for_stream_writes.conduit
		.trigger_reset                    (main_dpi_controller_inst_reset_ctrl_conduit)                            //                       reset_ctrl.conduit
	);

	hls_sim_mm_agent_dpi_bfm #(
		.AV_ADDRESS_W               (32),
		.AV_SYMBOL_W                (8),
		.AV_NUMSYMBOLS              (4),
		.AV_BURSTCOUNT_W            (3),
		.AV_READRESPONSE_W          (8),
		.AV_WRITERESPONSE_W         (8),
		.USE_READ                   (1),
		.USE_WRITE                  (1),
		.USE_ADDRESS                (1),
		.USE_BYTE_ENABLE            (1),
		.USE_BURSTCOUNT             (0),
		.USE_READ_DATA              (1),
		.USE_READ_DATA_VALID        (0),
		.USE_WRITE_DATA             (1),
		.USE_BEGIN_TRANSFER         (0),
		.USE_BEGIN_BURST_TRANSFER   (0),
		.USE_WAIT_REQUEST           (0),
		.USE_CLKEN                  (0),
		.AV_BURST_LINEWRAP          (1),
		.AV_BURST_BNDR_ONLY         (1),
		.AV_MAX_PENDING_READS       (0),
		.AV_MAX_PENDING_WRITES      (0),
		.AV_FIX_READ_LATENCY        (1),
		.AV_READ_WAIT_TIME          (0),
		.AV_WRITE_WAIT_TIME         (0),
		.REGISTER_WAITREQUEST       (0),
		.AV_REGISTERINCOMINGSIGNALS (0),
		.COMPONENT_NAME             ("covariance"),
		.INTERFACE_ID               (1)
	) mm_agent_dpi_bfm_covariance_avmm_1_rw_inst (
		.do_bind           (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),   //   dpi_control_bind.conduit
		.enable            (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // dpi_control_enable.conduit
		.clock             (clock_reset_inst_clock_clk),                                                           //              clock.clk
		.reset_n           (clock_reset_inst_reset_reset),                                                         //              reset.reset_n
		.avs_writedata     (covariance_inst_avmm_1_rw_writedata),                                                  //                 s0.writedata
		.avs_readdata      (covariance_inst_avmm_1_rw_readdata),                                                   //                   .readdata
		.avs_address       (covariance_inst_avmm_1_rw_address),                                                    //                   .address
		.avs_write         (covariance_inst_avmm_1_rw_write),                                                      //                   .write
		.avs_read          (covariance_inst_avmm_1_rw_read),                                                       //                   .read
		.avs_byteenable    (covariance_inst_avmm_1_rw_byteenable),                                                 //                   .byteenable
		.avs_readdatavalid ()                                                                                      //        (terminated)
	);

	tb_split_component_start_inst split_component_start_inst (
		.in_conduit    (main_dpi_controller_inst_component_enabled_conduit), //    in_conduit.conduit
		.out_conduit_0 (split_component_start_inst_out_conduit_0_conduit)    // out_conduit_0.conduit
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME                  ("covariance"),
		.INTERFACE_NAME                  ("cov"),
		.STREAM_DATAWIDTH                (64),
		.STREAM_BITSPERSYMBOL            (1),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_source_dpi_bfm_covariance_cov_inst (
		.clock        (clock_reset_inst_clock_clk),                                                                   //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                                 //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                                 //            clock2x.clk
		.do_bind      (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit),           //   dpi_control_bind.conduit
		.enable       (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit),         // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_covariance_cov_inst_source_data_data),                                   //        source_data.data
		.source_ready (covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), //       source_ready.conduit
		.source_valid ()                                                                                              //             source.conduit
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME                  ("covariance"),
		.INTERFACE_NAME                  ("data"),
		.STREAM_DATAWIDTH                (64),
		.STREAM_BITSPERSYMBOL            (1),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_source_dpi_bfm_covariance_data_inst (
		.clock        (clock_reset_inst_clock_clk),                                                                   //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                                 //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                                 //            clock2x.clk
		.do_bind      (covariance_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_2_conduit),           //   dpi_control_bind.conduit
		.enable       (covariance_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_2_conduit),         // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_covariance_data_inst_source_data_data),                                  //        source_data.data
		.source_ready (covariance_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_1_conduit), //       source_ready.conduit
		.source_valid ()                                                                                              //             source.conduit
	);

	tb_irq_mapper irq_mapper (
		.clk        (clock_reset_inst_clock_clk),                                 //       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                              // clk_reset.reset
		.sender_irq (component_dpi_controller_covariance_inst_component_irq_irq)  //    sender.irq
	);

endmodule
