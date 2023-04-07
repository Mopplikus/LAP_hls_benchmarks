module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] triangular_start
	, output logic [0:0] triangular_busy
	, output logic [0:0] triangular_done
	, input logic [0:0] triangular_stall
	, input logic [63:0] triangular_x
	, input logic [63:0] triangular_A
	, input logic [31:0] triangular_n
	);

	logic [0:0] triangular_start_reg;
	logic [0:0] triangular_busy_reg;
	logic [0:0] triangular_done_reg;
	logic [0:0] triangular_stall_reg;
	logic [63:0] triangular_x_reg;
	logic [63:0] triangular_A_reg;
	logic [31:0] triangular_n_reg;


	always @(posedge clock) begin
		triangular_start_reg <= triangular_start;
		triangular_busy <= triangular_busy_reg;
		triangular_done <= triangular_done_reg;
		triangular_stall_reg <= triangular_stall;
		triangular_x_reg <= triangular_x;
		triangular_A_reg <= triangular_A;
		triangular_n_reg <= triangular_n;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	triangular triangular_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(triangular_start_reg)
		, .busy(triangular_busy_reg)
		, .done(triangular_done_reg)
		, .stall(triangular_stall_reg)
		, .x(triangular_x_reg)
		, .A(triangular_A_reg)
		, .n(triangular_n_reg)
	);



endmodule
