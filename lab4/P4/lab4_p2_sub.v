module lab4_P3_sub(a, b, c, sign, d1, d2);
	input[3:0] a, b;
	input c;
	output[6:0] d1, d2;
	output reg[6:0] sign;
	wire[3:0] add_sub, add;
	reg[3:0] add_sub2;
	wire wire1;
	reg sub_c;
	reg[3:0] b1;
	always @(c) begin
		if(c == 1) begin
			b1 <= ~b;
		end else begin
			b1 <= b;
		end
	end
	fourBit_FA FA(.a(a), .b(b1), .cin(c), .cout(wire1), .s(add_sub));
	always @(c) begin
		if(c == 1 && add_sub >= 4'b1000) begin
			sign <= 7'b0111111;
			add_sub2 <= ~add_sub;
			sub_c <= 1'b1;
		end else begin
			sign <= 7'b1111111;
			add_sub2 <= add_sub;
			sub_c <= 1'b0;
		end
	end
	fourBit_FA FA2(.a(add_sub2), .b(4'b0000), .cin(sub_c), .cout(wire1), .s(add));
	lab4_p2 lab4p2(.v(add), .d1(d1), .d2(d2));
endmodule