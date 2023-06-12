module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] matvec_start
	, output logic [0:0] matvec_busy
	, output logic [0:0] matvec_done
	, input logic [0:0] matvec_stall
	, input logic [63:0] matvec_M
	, input logic [63:0] matvec_V
	, input logic [63:0] matvec_Out0
	);

	logic [0:0] matvec_start_reg;
	logic [0:0] matvec_busy_reg;
	logic [0:0] matvec_done_reg;
	logic [0:0] matvec_stall_reg;
	logic [63:0] matvec_M_reg;
	logic [63:0] matvec_V_reg;
	logic [63:0] matvec_Out0_reg;


	always @(posedge clock) begin
		matvec_start_reg <= matvec_start;
		matvec_busy <= matvec_busy_reg;
		matvec_done <= matvec_done_reg;
		matvec_stall_reg <= matvec_stall;
		matvec_M_reg <= matvec_M;
		matvec_V_reg <= matvec_V;
		matvec_Out0_reg <= matvec_Out0;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	matvec matvec_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(matvec_start_reg)
		, .busy(matvec_busy_reg)
		, .done(matvec_done_reg)
		, .stall(matvec_stall_reg)
		, .M(matvec_M_reg)
		, .V(matvec_V_reg)
		, .Out0(matvec_Out0_reg)
	);



endmodule
