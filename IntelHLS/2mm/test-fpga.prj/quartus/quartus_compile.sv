module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] kernel_2mm_start
	, output logic [0:0] kernel_2mm_busy
	, output logic [0:0] kernel_2mm_done
	, input logic [0:0] kernel_2mm_stall
	, input logic [31:0] kernel_2mm_alpha
	, input logic [31:0] kernel_2mm_beta
	, input logic [63:0] kernel_2mm_A
	, input logic [63:0] kernel_2mm_B
	, input logic [63:0] kernel_2mm_C
	, input logic [63:0] kernel_2mm_D
	);

	logic [0:0] kernel_2mm_start_reg;
	logic [0:0] kernel_2mm_busy_reg;
	logic [0:0] kernel_2mm_done_reg;
	logic [0:0] kernel_2mm_stall_reg;
	logic [31:0] kernel_2mm_alpha_reg;
	logic [31:0] kernel_2mm_beta_reg;
	logic [63:0] kernel_2mm_A_reg;
	logic [63:0] kernel_2mm_B_reg;
	logic [63:0] kernel_2mm_C_reg;
	logic [63:0] kernel_2mm_D_reg;


	always @(posedge clock) begin
		kernel_2mm_start_reg <= kernel_2mm_start;
		kernel_2mm_busy <= kernel_2mm_busy_reg;
		kernel_2mm_done <= kernel_2mm_done_reg;
		kernel_2mm_stall_reg <= kernel_2mm_stall;
		kernel_2mm_alpha_reg <= kernel_2mm_alpha;
		kernel_2mm_beta_reg <= kernel_2mm_beta;
		kernel_2mm_A_reg <= kernel_2mm_A;
		kernel_2mm_B_reg <= kernel_2mm_B;
		kernel_2mm_C_reg <= kernel_2mm_C;
		kernel_2mm_D_reg <= kernel_2mm_D;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	kernel_2mm kernel_2mm_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(kernel_2mm_start_reg)
		, .busy(kernel_2mm_busy_reg)
		, .done(kernel_2mm_done_reg)
		, .stall(kernel_2mm_stall_reg)
		, .alpha(kernel_2mm_alpha_reg)
		, .beta(kernel_2mm_beta_reg)
		, .A(kernel_2mm_A_reg)
		, .B(kernel_2mm_B_reg)
		, .C(kernel_2mm_C_reg)
		, .D(kernel_2mm_D_reg)
	);



endmodule
