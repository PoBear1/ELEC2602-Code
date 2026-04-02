module four_bit_2to1mux(sel, a, b, chosen);
	input [3:0] a, b;
	input sel;
	output [3:0] chosen;
	one_bit_2to1mux inst1(.s(v), .x(a[0]), .y(b[0]), .m(chosen[0]));
	one_bit_2to1mux inst2(.s(v), .x(a[1]), .y(b[1]), .m(chosen[1]));
	one_bit_2to1mux inst3(.s(v), .x(a[2]), .y(b[2]), .m(chosen[2]));
	one_bit_2to1mux inst4(.s(v), .x(a[3]), .y(b[3]), .m(chosen[3]));
endmodule