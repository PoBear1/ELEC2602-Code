module lab5_main(SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, clk_50mhz);
	input[9:0] SW;
	output[6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	input clk_50mhz;
	reg[3:0] q;
	slow_ctr ctr(.clock(clk_50mhz), .T(1), .rst(0), .q(q));
	decoder_7seg seg(.binary(q), .sevenSeg(HEX5));
endmodule