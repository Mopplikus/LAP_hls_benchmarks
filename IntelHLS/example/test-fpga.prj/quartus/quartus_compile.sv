module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] example_start
	, output logic [0:0] example_busy
	, output logic [0:0] example_done
	, input logic [0:0] example_stall
	, output logic [31:0] example_returndata
	);

	logic [0:0] example_start_reg;
	logic [0:0] example_busy_reg;
	logic [0:0] example_done_reg;
	logic [0:0] example_stall_reg;
	logic [31:0] example_returndata_reg;


	always @(posedge clock) begin
		example_start_reg <= example_start;
		example_busy <= example_busy_reg;
		example_done <= example_done_reg;
		example_stall_reg <= example_stall;
		example_returndata <= example_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	example example_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(example_start_reg)
		, .busy(example_busy_reg)
		, .done(example_done_reg)
		, .stall(example_stall_reg)
		, .returndata(example_returndata_reg)
	);



endmodule
