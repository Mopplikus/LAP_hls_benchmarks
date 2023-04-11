module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] bicg_start
	, output logic [0:0] bicg_busy
	, output logic [0:0] bicg_done
	, input logic [0:0] bicg_stall
	, input logic [63:0] bicg_A
	, input logic [63:0] bicg_s
	, input logic [63:0] bicg_q
	, input logic [63:0] bicg_p
	, input logic [63:0] bicg_r
	);

	logic [0:0] bicg_start_reg;
	logic [0:0] bicg_busy_reg;
	logic [0:0] bicg_done_reg;
	logic [0:0] bicg_stall_reg;
	logic [63:0] bicg_A_reg;
	logic [63:0] bicg_s_reg;
	logic [63:0] bicg_q_reg;
	logic [63:0] bicg_p_reg;
	logic [63:0] bicg_r_reg;


	always @(posedge clock) begin
		bicg_start_reg <= bicg_start;
		bicg_busy <= bicg_busy_reg;
		bicg_done <= bicg_done_reg;
		bicg_stall_reg <= bicg_stall;
		bicg_A_reg <= bicg_A;
		bicg_s_reg <= bicg_s;
		bicg_q_reg <= bicg_q;
		bicg_p_reg <= bicg_p;
		bicg_r_reg <= bicg_r;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	bicg bicg_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(bicg_start_reg)
		, .busy(bicg_busy_reg)
		, .done(bicg_done_reg)
		, .stall(bicg_stall_reg)
		, .A(bicg_A_reg)
		, .s(bicg_s_reg)
		, .q(bicg_q_reg)
		, .p(bicg_p_reg)
		, .r(bicg_r_reg)
	);



endmodule
