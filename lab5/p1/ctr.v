module fast_ctr_1(clock, rst, q);
	input clock, rst;
	output reg[31:0] q;
	always @(posedge clock or posedge rst) begin
		if(rst == 1'b1) begin
			q <= 0;
		end else begin
			q <= q + 1;
		end
	end
endmodule

module fast_ctr(clock, rst, q);
	input clock;
	input reg rst;
	output q;
	always @(q) begin
		if(q == 50000000) rst = 1'b1;
	end
	fast_ctr_1 ctr(.clock(clock), .rst(rst), .q(q));
endmodule

module slow_ctr(clock, rst, q);
	input clock, rst;
	output reg[3:0] q;
	reg[31:0] q1;
	fast_ctr ctr(.clock(clock), .rst(rst), .q(q1));
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