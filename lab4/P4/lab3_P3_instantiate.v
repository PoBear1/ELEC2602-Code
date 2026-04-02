module lab4_P3_instantiate(SW, HEX1, HEX2, HEX3, HEX4);
 
	input[9:0] SW ;
	output [6:0] HEX1, HEX2, HEX3, HEX4;
	lab4_P3 instantiate_p6 (
		.a(SW[3:2]),.b(SW[1:0]),
		.d1(HEX1),
		.d2(HEX2)
	); 
endmodule