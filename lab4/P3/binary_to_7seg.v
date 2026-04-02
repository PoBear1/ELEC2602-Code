module decoder_7seg(binary, sevenSeg);

	input[3:0] binary;
	
	
 
	//either do with equations: 
	/*
	output[6:0]  decoded_output;
	assign decoded_output[0] = (code[1] & code[0]) | (~code[1] & ~code[0]);
	assign decoded_output[1] = (code[1] & code[0]) | (~code[1] & ~code[0]);
	assign decoded_output[2] = ...;
	*/
	
	// or with case statement:
	output reg[6:0] sevenSeg;
	always @(code) begin
		case (code)
			4'b0000: begin sevenSeg = 7'b1111110; end
			4'b0001: begin sevenSeg = 7'b0110000; end
			4'b0010: begin sevenSeg = 7'b1101101; end
			4'b0011: begin sevenSeg = 7'b1111001; end
			4'b0100: begin sevenSeg = 7'b0110011; end
			4'b0101: begin sevenSeg = 7'b1011011; end
			4'b0110: begin sevenSeg = 7'b1011111; end
			4'b0111: begin sevenSeg = 7'b1110000; end
			4'b1000: begin sevenSeg = 7'b1111111; end
			default: begin sevenSeg = 7'b1111011; end
		endcase
	end
 
endmodule
