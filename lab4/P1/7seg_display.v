module lab4_p1(a, d1, d2);
	input [3:0] a;
	output reg[6:0] d1, d2;
	always @(a) begin
		case (a)
			4'b0000: begin d1 = 7'b1111110; d2 = 7'b1111110; end
			4'b0001: begin d1 = 7'b1111110; d2 = 7'b0110000; end
			4'b0010: begin d1 = 7'b1111110; d2 = 7'b1101101; end
			4'b0011: begin d1 = 7'b1111110; d2 = 7'b1111001; end
			4'b0100: begin d1 = 7'b1111110; d2 = 7'b0110011; end
			4'b0101: begin d1 = 7'b1111110; d2 = 7'b1011011; end
			4'b0110: begin d1 = 7'b1111110; d2 = 7'b1011111; end
			4'b0111: begin d1 = 7'b1111110; d2 = 7'b1110000; end
			4'b1000: begin d1 = 7'b1111110; d2 = 7'b1111111; end
			4'b1001: begin d1 = 7'b1111110; d2 = 7'b1111011; end
			4'b1010: begin d1 = 7'b0110000; d2 = 7'b1111110; end
			4'b1011: begin d1 = 7'b0110000; d2 = 7'b0110000; end
			4'b1100: begin d1 = 7'b0110000; d2 = 7'b1101101; end
			4'b1101: begin d1 = 7'b0110000; d2 = 7'b1111001; end
			4'b1110: begin d1 = 7'b0110000; d2 = 7'b0110011; end
			default: begin d1 = 7'b0110000; d2 = 7'b1011011; end 
		endcase
	end
endmodule