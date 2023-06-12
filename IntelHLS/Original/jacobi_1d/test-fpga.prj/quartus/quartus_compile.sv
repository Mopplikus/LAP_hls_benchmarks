module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] jacobi_1d_start
	, output logic [0:0] jacobi_1d_busy
	, output logic [0:0] jacobi_1d_done
	, input logic [0:0] jacobi_1d_stall
	, input logic [63:0] jacobi_1d_A_1
	, input logic [63:0] jacobi_1d_A_2
	, input logic [63:0] jacobi_1d_B
	);

	logic [0:0] jacobi_1d_start_reg;
	logic [0:0] jacobi_1d_busy_reg;
	logic [0:0] jacobi_1d_done_reg;
	logic [0:0] jacobi_1d_stall_reg;
	logic [63:0] jacobi_1d_A_1_reg;
	logic [63:0] jacobi_1d_A_2_reg;
	logic [63:0] jacobi_1d_B_reg;


	always @(posedge clock) begin
		jacobi_1d_start_reg <= jacobi_1d_start;
		jacobi_1d_busy <= jacobi_1d_busy_reg;
		jacobi_1d_done <= jacobi_1d_done_reg;
		jacobi_1d_stall_reg <= jacobi_1d_stall;
		jacobi_1d_A_1_reg <= jacobi_1d_A_1;
		jacobi_1d_A_2_reg <= jacobi_1d_A_2;
		jacobi_1d_B_reg <= jacobi_1d_B;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	jacobi_1d jacobi_1d_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(jacobi_1d_start_reg)
		, .busy(jacobi_1d_busy_reg)
		, .done(jacobi_1d_done_reg)
		, .stall(jacobi_1d_stall_reg)
		, .A_1(jacobi_1d_A_1_reg)
		, .A_2(jacobi_1d_A_2_reg)
		, .B(jacobi_1d_B_reg)
	);



endmodule
