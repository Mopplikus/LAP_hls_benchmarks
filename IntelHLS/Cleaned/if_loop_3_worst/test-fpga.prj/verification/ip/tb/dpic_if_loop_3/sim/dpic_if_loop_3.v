// dpic_if_loop_3.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module dpic_if_loop_3 (
		input  wire        clock,                            //                            clock.clk
		input  wire        resetn,                           //                            reset.reset_n
		input  wire        clock2x,                          //                          clock2x.clk
		output wire        bind_interfaces,                  //                 dpi_control_bind.conduit
		output wire        enable_interfaces,                //               dpi_control_enable.conduit
		input  wire        component_enabled,                //                component_enabled.conduit
		output wire        component_done,                   //                   component_done.conduit
		output wire        component_wait_for_stream_writes, // component_wait_for_stream_writes.conduit
		input  wire        agent_busy,                       //                       agent_busy.conduit
		output wire        read_implicit_streams,            //            read_implicit_streams.conduit
		output wire        readback_from_agents,             //             readback_from_agents.conduit
		output wire        start,                            //                   component_call.valid
		input  wire        busy,                             //                                 .stall
		input  wire        done,                             //                 component_return.valid
		output wire        stall,                            //                                 .stall
		input  wire        done_irq,                         //                    component_irq.irq
		input  wire [31:0] returndata                        //                       returndata.data
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("if_loop_3"),
		.COMPONENT_MANGLED_NAME       ("_Z9if_loop_3RN3ihc7mm_hostIiJNS_6dwidthILi256EEENS_6awidthILi32EEENS_6aspaceILi1EEENS_7latencyILi1EEEEEERNS0_IiJS2_S4_NS5_ILi4EEES8_EEEi"),
		.RETURN_DATAWIDTH             (32),
		.COMPONENT_NUM_AGENTS         (0),
		.COMPONENT_HAS_AGENT_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (0)
	) dpic_if_loop_3 (
		.clock                            (clock),                            //   input,   width = 1,                            clock.clk
		.resetn                           (resetn),                           //   input,   width = 1,                            reset.reset_n
		.clock2x                          (clock2x),                          //   input,   width = 1,                          clock2x.clk
		.bind_interfaces                  (bind_interfaces),                  //  output,   width = 1,                 dpi_control_bind.conduit
		.enable_interfaces                (enable_interfaces),                //  output,   width = 1,               dpi_control_enable.conduit
		.component_enabled                (component_enabled),                //   input,   width = 1,                component_enabled.conduit
		.component_done                   (component_done),                   //  output,   width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (component_wait_for_stream_writes), //  output,   width = 1, component_wait_for_stream_writes.conduit
		.agent_busy                       (agent_busy),                       //   input,   width = 1,                       agent_busy.conduit
		.read_implicit_streams            (read_implicit_streams),            //  output,   width = 1,            read_implicit_streams.conduit
		.readback_from_agents             (readback_from_agents),             //  output,   width = 1,             readback_from_agents.conduit
		.start                            (start),                            //  output,   width = 1,                   component_call.valid
		.busy                             (busy),                             //   input,   width = 1,                                 .stall
		.done                             (done),                             //   input,   width = 1,                 component_return.valid
		.stall                            (stall),                            //  output,   width = 1,                                 .stall
		.done_irq                         (done_irq),                         //   input,   width = 1,                    component_irq.irq
		.returndata                       (returndata)                        //   input,  width = 32,                       returndata.data
	);

endmodule
