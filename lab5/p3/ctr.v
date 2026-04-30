module slow_ctr(clock, rst, q);
	input clock, rst;
	output reg q;
	reg[31:0] q1;
	always @(posedge clock or posedge rst) begin
		if(rst) begin q1 <= 32'b0; q <= 0; end
		else begin
			if(q1 == 49999999) begin
				q1 <= 0;
				q <= 1;
			end else begin
				q1 <= q1 + 1;
				q <= 0;
			end
		end
	end
endmodule