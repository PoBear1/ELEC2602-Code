module lab3_P3_instantiate(SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
 
	input[9:0] SW ;
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
//	lab4_P3 instantiate_p6 (
//		.a(SW[5:3]),.b(SW[2:0]),
//		.c(SW[6]),
//		.d1(HEX1),
//		.d2(HEX0)
//	);
//	assign HEX5 = 7'b1000000;
//	binary_to_7Seg display1(.binary(SW[6])  , .sevenSeg(HEX4));
//	binary_to_7Seg display2(.binary(SW[5:3]), .sevenSeg(HEX3));
//	binary_to_7Seg display3(.binary(SW[2:0]), .sevenSeg(HEX2));
	lab4_P3_sub instantiate_p6 (
		.a(SW[5:3]),.b(SW[2:0]),
		.c(SW[6]),
		.sign(HEX2),
		.d1(HEX1),
		.d2(HEX0)
	);
	binary_to_7Seg display1(.binary(SW[6])  , .sevenSeg(HEX5));
	binary_to_7Seg display2(.binary(SW[5:3]), .sevenSeg(HEX4));
	binary_to_7Seg display3(.binary(SW[2:0]), .sevenSeg(HEX3));
endmodule