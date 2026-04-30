module lab5_main(SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, CLOCK_50);
	input[9:0] SW;
	output[6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	input CLOCK_50;
	wire[25:0] q1;
	wire dis, enable, reset;
	wire[3:0] q2;
	assign dis = (q1 != 49999999);
	assign enable = (q1 == 49999999);
	assign reset = enable && (q2 == 9);
	fast_ctr ctr1(.clock(CLOCK_50), .rst(SW[0]), .enable(1), .q(q1));
	slow_ctr ctr2(.clock(CLOCK_50), .rst(SW[0]), .enable(enable), .q(q2));
	decoder_7seg seg(.binary(q2), .sevenSeg(HEX5));
endmodule