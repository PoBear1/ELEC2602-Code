module fast_ctr(clock, T, rst, q);
	input clock, T, rst
	output reg[31:0] q;
	reg[31:0]; t
	assign t[0] <= T;
	genvar j;
	for(j = 1; j < 32; j = j + 1) begin
		assign t[j] = q[j] & t[j - 1];
	end
	genvar i;
	generate
		for(i = 0; i < 32; i = i + 1) begin
			pos_t_ff ff(.t(t[i]), .clk(clock), .q(q[i]), .rst(rst));
		end
	endgenerate
	always @(q) begin
		if(q == 50000000) begin
			q <= 32'b0;
		end
	end
endmodule

module slow_ctr(clock, T, rst, q);
	input clock, T, rst;
	output reg[3:0] q;
	reg[31:0] q1;
	fast_ctr ctr(.clock(clock), .T(T), .rst(rst), .q(q1));
	always @(q1) begin
		if(q1 == 0) begin
			q <= q + 1;
		end
	end
	always @(q) begin
		if(q1 == 10) begin
			q <= 4'b0;
		end
	end
endmodule