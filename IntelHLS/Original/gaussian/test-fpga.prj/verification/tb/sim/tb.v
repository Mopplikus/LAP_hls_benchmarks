// tb.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module tb (
	);

	wire         clock_reset_inst_clock_clk;                                                                 // clock_reset_inst:clock -> [component_dpi_controller_gaussian_inst:clock, gaussian_inst:clock, irq_mapper:clk, main_dpi_controller_inst:clock, stream_source_dpi_bfm_gaussian_A_r_inst:clock]
	wire         clock_reset_inst_clock2x_clk;                                                               // clock_reset_inst:clock2x -> [component_dpi_controller_gaussian_inst:clock2x, main_dpi_controller_inst:clock2x, stream_source_dpi_bfm_gaussian_A_r_inst:clock2x]
	wire         component_dpi_controller_gaussian_inst_component_call_valid;                                // component_dpi_controller_gaussian_inst:start -> gaussian_inst:start
	wire         gaussian_inst_call_stall;                                                                   // gaussian_inst:busy -> component_dpi_controller_gaussian_inst:busy
	wire         component_dpi_controller_gaussian_inst_component_done_conduit;                              // component_dpi_controller_gaussian_inst:component_done -> concatenate_component_done_inst:in_conduit_0
	wire   [0:0] main_dpi_controller_inst_component_enabled_conduit;                                         // main_dpi_controller_inst:component_enabled -> split_component_start_inst:in_conduit
	wire         component_dpi_controller_gaussian_inst_component_wait_for_stream_writes_conduit;            // component_dpi_controller_gaussian_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_0
	wire         component_dpi_controller_gaussian_inst_dpi_control_bind_conduit;                            // component_dpi_controller_gaussian_inst:bind_interfaces -> gaussian_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire         component_dpi_controller_gaussian_inst_dpi_control_enable_conduit;                          // component_dpi_controller_gaussian_inst:enable_interfaces -> gaussian_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire         concatenate_component_done_inst_out_conduit_conduit;                                        // concatenate_component_done_inst:out_conduit -> main_dpi_controller_inst:component_done
	wire         concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit;                      // concatenate_component_wait_for_stream_writes_inst:out_conduit -> main_dpi_controller_inst:component_wait_for_stream_writes
	wire         split_component_start_inst_out_conduit_0_conduit;                                           // split_component_start_inst:out_conduit_0 -> component_dpi_controller_gaussian_inst:component_enabled
	wire         gaussian_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;           // gaussian_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_gaussian_A_r_inst:do_bind
	wire         gaussian_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;         // gaussian_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_gaussian_A_r_inst:enable
	wire         gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit; // gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_gaussian_A_r_inst:source_ready
	wire         component_dpi_controller_gaussian_inst_read_implicit_streams_conduit;                       // component_dpi_controller_gaussian_inst:read_implicit_streams -> gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst:in_conduit
	wire         main_dpi_controller_inst_reset_ctrl_conduit;                                                // main_dpi_controller_inst:trigger_reset -> clock_reset_inst:trigger_reset
	wire         gaussian_inst_return_valid;                                                                 // gaussian_inst:done -> component_dpi_controller_gaussian_inst:done
	wire         component_dpi_controller_gaussian_inst_component_return_stall;                              // component_dpi_controller_gaussian_inst:stall -> gaussian_inst:stall
	wire  [63:0] stream_source_dpi_bfm_gaussian_a_r_inst_source_data_data;                                   // stream_source_dpi_bfm_gaussian_A_r_inst:source_data -> gaussian_inst:A_r
	wire         clock_reset_inst_reset_reset;                                                               // clock_reset_inst:resetn -> [component_dpi_controller_gaussian_inst:resetn, gaussian_inst:resetn, irq_mapper:reset, main_dpi_controller_inst:resetn, stream_source_dpi_bfm_gaussian_A_r_inst:resetn]
	wire         component_dpi_controller_gaussian_inst_component_irq_irq;                                   // irq_mapper:sender_irq -> component_dpi_controller_gaussian_inst:done_irq

	clock_reset clock_reset_inst (
		.clock         (clock_reset_inst_clock_clk),                  //  output,  width = 1,      clock.clk
		.resetn        (clock_reset_inst_reset_reset),                //  output,  width = 1,      reset.reset_n
		.clock2x       (clock_reset_inst_clock2x_clk),                //  output,  width = 1,    clock2x.clk
		.trigger_reset (main_dpi_controller_inst_reset_ctrl_conduit)  //   input,  width = 1, reset_ctrl.conduit
	);

	dpic_gaussian component_dpi_controller_gaussian_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                      //   input,   width = 1,                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                    //   input,   width = 1,                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                    //   input,   width = 1,                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_gaussian_inst_dpi_control_bind_conduit),                 //  output,   width = 1,                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_gaussian_inst_dpi_control_enable_conduit),               //  output,   width = 1,               dpi_control_enable.conduit
		.component_enabled                (split_component_start_inst_out_conduit_0_conduit),                                //   input,   width = 1,                component_enabled.conduit
		.component_done                   (component_dpi_controller_gaussian_inst_component_done_conduit),                   //  output,   width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_gaussian_inst_component_wait_for_stream_writes_conduit), //  output,   width = 1, component_wait_for_stream_writes.conduit
		.agent_busy                       (),                                                                                //   input,   width = 1,                       agent_busy.conduit
		.read_implicit_streams            (component_dpi_controller_gaussian_inst_read_implicit_streams_conduit),            //  output,   width = 1,            read_implicit_streams.conduit
		.readback_from_agents             (),                                                                                //  output,   width = 1,             readback_from_agents.conduit
		.start                            (component_dpi_controller_gaussian_inst_component_call_valid),                     //  output,   width = 1,                   component_call.valid
		.busy                             (gaussian_inst_call_stall),                                                        //   input,   width = 1,                                 .stall
		.done                             (gaussian_inst_return_valid),                                                      //   input,   width = 1,                 component_return.valid
		.stall                            (component_dpi_controller_gaussian_inst_component_return_stall),                   //  output,   width = 1,                                 .stall
		.done_irq                         (component_dpi_controller_gaussian_inst_component_irq_irq),                        //   input,   width = 1,                    component_irq.irq
		.returndata                       ()                                                                                 //   input,  width = 64,                       returndata.data
	);

	cat_done concatenate_component_done_inst (
		.out_conduit  (concatenate_component_done_inst_out_conduit_conduit),           //  output,  width = 1,  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_gaussian_inst_component_done_conduit)  //   input,  width = 1, in_conduit_0.conduit
	);

	cat_cwfsw concatenate_component_wait_for_stream_writes_inst (
		.out_conduit  (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit),           //  output,  width = 1,  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_gaussian_inst_component_wait_for_stream_writes_conduit)  //   input,  width = 1, in_conduit_0.conduit
	);

	gaussian_cfan gaussian_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_gaussian_inst_dpi_control_bind_conduit),                  //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (gaussian_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	gaussian_en_cfan gaussian_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_gaussian_inst_dpi_control_enable_conduit),                  //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (gaussian_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	gaussian_ir_cfan gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_gaussian_inst_read_implicit_streams_conduit),                       //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	gaussian gaussian_inst (
		.clock  (clock_reset_inst_clock_clk),                                    //   input,   width = 1,  clock.clk
		.resetn (clock_reset_inst_reset_reset),                                  //   input,   width = 1,  reset.reset_n
		.start  (component_dpi_controller_gaussian_inst_component_call_valid),   //   input,   width = 1,   call.valid
		.busy   (gaussian_inst_call_stall),                                      //  output,   width = 1,       .stall
		.done   (gaussian_inst_return_valid),                                    //  output,   width = 1, return.valid
		.stall  (component_dpi_controller_gaussian_inst_component_return_stall), //   input,   width = 1,       .stall
		.A_r    (stream_source_dpi_bfm_gaussian_a_r_inst_source_data_data)       //   input,  width = 64,    A_r.data
	);

	main_dpi_controller main_dpi_controller_inst (
		.clock                            (clock_reset_inst_clock_clk),                                            //   input,  width = 1,                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                          //   input,  width = 1,                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                          //   input,  width = 1,                          clock2x.clk
		.component_enabled                (main_dpi_controller_inst_component_enabled_conduit),                    //  output,  width = 1,                component_enabled.conduit
		.component_done                   (concatenate_component_done_inst_out_conduit_conduit),                   //   input,  width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit), //   input,  width = 1, component_wait_for_stream_writes.conduit
		.trigger_reset                    (main_dpi_controller_inst_reset_ctrl_conduit)                            //  output,  width = 1,                       reset_ctrl.conduit
	);

	sp_cstart split_component_start_inst (
		.in_conduit    (main_dpi_controller_inst_component_enabled_conduit), //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (split_component_start_inst_out_conduit_0_conduit)    //  output,  width = 1, out_conduit_0.conduit
	);

	sso_gaussian_A_r stream_source_dpi_bfm_gaussian_a_r_inst (
		.clock        (clock_reset_inst_clock_clk),                                                                 //   input,   width = 1,              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                               //   input,   width = 1,              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                               //   input,   width = 1,            clock2x.clk
		.do_bind      (gaussian_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),           //   input,   width = 1,   dpi_control_bind.conduit
		.enable       (gaussian_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit),         //   input,   width = 1, dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_gaussian_a_r_inst_source_data_data),                                   //  output,  width = 64,        source_data.data
		.source_ready (gaussian_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), //   input,   width = 1,       source_ready.conduit
		.source_valid ()                                                                                            //  output,   width = 1,             source.conduit
	);

	tb_altera_irq_mapper_1920_trjgw7i irq_mapper (
		.clk        (clock_reset_inst_clock_clk),                               //   input,  width = 1,       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                            //   input,  width = 1, clk_reset.reset
		.sender_irq (component_dpi_controller_gaussian_inst_component_irq_irq)  //  output,  width = 1,    sender.irq
	);

endmodule
