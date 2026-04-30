module fast_ctr(clock, rst, enable, q);
	input clock, rst, enable;
	output [25:0] q; 
	wire [25:0] T;

	assign T[0] = enable;

	genvar i;
	generate
		for (i = 1; i < 26; i = i + 1) begin : t_logic
			assign T[i] = T[i-1] & q[i-1];
		end
	endgenerate

	genvar j;
	generate
		for (j = 0; j < 26; j = j + 1) begin : t_ff_inst
			t_ff ff(.clock(clock), .rst(rst), .T(T[j]), .q(q[j]));
		end
	endgenerate
endmodule

module slow_ctr(clock, rst, enable, q);
	input clock, rst, enable;
	output [3:0] q; 
	wire [3:0] T;

	assign T[0] = enable;

	genvar i;
	generate
		for (i = 1; i < 3; i = i + 1) begin : t_logic
			assign T[i] = T[i-1] & q[i-1];
		end
	endgenerate

	genvar j;
	generate
		for (j = 0; j < 3; j = j + 1) begin : t_ff_inst
			t_ff ff(.clock(clock), .rst(rst), .T(T[j]), .q(q[j]));
		end
	endgenerate
endmodule