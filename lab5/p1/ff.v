module pos_d_ff(d, clk, q, rst);
	input d, clk, rst;
	output reg q;
	always @(posedge clk or posedge rst) begin
		if(rst == 1'b1) begin q <= 0; end
		else begin q <= d; end
	end
endmodule

module neg_d_ff(d, clk, q, rst);
	input d, clk, rst;
	output reg q;
	always @(negedge clk or posedge rst) begin
		if(rst == 1'b1) begin q <= 0; end
		else begin q <= d; end
	end
endmodule

module pos_t_ff(t, clk, q, rst);
	input t, clk, rst;
	output q;
	reg d;
	assign d = t ^ q;
	pos_d_ff ff(.d(d), .clk(clk), .q(q), .rst(rst));
endmodule

module neg_t_ff(t, clk, q, rst);
	input t, clk, rst;
	output q;
	reg d;
	assign d = t ^ q;
	neg_d_ff ff(.d(d), .clk(clk), .q(q), .rst(rst));
endmodule