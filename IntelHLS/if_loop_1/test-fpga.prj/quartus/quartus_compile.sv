module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] if_loop_1_start
	, output logic [0:0] if_loop_1_busy
	, output logic [0:0] if_loop_1_done
	, input logic [0:0] if_loop_1_stall
	, output logic [31:0] if_loop_1_returndata
	, input logic [63:0] if_loop_1_a
	, input logic [31:0] if_loop_1_n
	);

	logic [0:0] if_loop_1_start_reg;
	logic [0:0] if_loop_1_busy_reg;
	logic [0:0] if_loop_1_done_reg;
	logic [0:0] if_loop_1_stall_reg;
	logic [31:0] if_loop_1_returndata_reg;
	logic [63:0] if_loop_1_a_reg;
	logic [31:0] if_loop_1_n_reg;


	always @(posedge clock) begin
		if_loop_1_start_reg <= if_loop_1_start;
		if_loop_1_busy <= if_loop_1_busy_reg;
		if_loop_1_done <= if_loop_1_done_reg;
		if_loop_1_stall_reg <= if_loop_1_stall;
		if_loop_1_returndata <= if_loop_1_returndata_reg;
		if_loop_1_a_reg <= if_loop_1_a;
		if_loop_1_n_reg <= if_loop_1_n;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	if_loop_1 if_loop_1_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(if_loop_1_start_reg)
		, .busy(if_loop_1_busy_reg)
		, .done(if_loop_1_done_reg)
		, .stall(if_loop_1_stall_reg)
		, .returndata(if_loop_1_returndata_reg)
		, .a(if_loop_1_a_reg)
		, .n(if_loop_1_n_reg)
	);



endmodule
