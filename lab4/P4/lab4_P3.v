module lab4_P3(a, b, d1, d2);
	input[3:0] a, b;
	output[6:0] d1, d2;
	wire[3:0] add;
	wire wire1;
	fourBit_FA FA(.a(a), .b(b), .cin(c), .cout(wire1), .s(add));
	lab4_p2 lab4p2(.v(add), .d1(d1), .d2(d2));
endmodule