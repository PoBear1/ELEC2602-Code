module lab5_main(SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, CLOCK_50, LEDR);
	input[9:0] SW;
	input[3:0] KEY;
	input CLOCK_50;
	output[6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output[9:0] LEDR;
	wire[4:0] state;
	wire w, z, q, rst; 
	reg[3:0] ctr;
	reg en;
	assign rst = ~KEY[0];
	always @(posedge KEY[3]) begin ctr <= SW[9:6]; end
	slow_tick tick(.clock(CLOCK_50), .rst(rst), .q(q));
	sequence_fsm fsm(.clock(CLOCK_50), .rst(rst), .enable(q), .cnt(ctr), .w(w), .z(z), .state(state));
	decoder_7seg seg(.binary(state), .sevenSeg(HEX5));
	assign HEX0 = 7'b1111111;
	assign HEX1 = 7'b1111111;
	assign HEX2 = 7'b1111111;
	assign HEX3 = 7'b1111111;
	assign HEX4 = state[4] ? 7'b1000000 : 7'b1111001;
	assign LEDR = z ? 10'b1111111111 : 10'b0000000000;
endmodule