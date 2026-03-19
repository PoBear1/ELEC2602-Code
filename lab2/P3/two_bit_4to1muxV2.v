module two_bit_4to1muxV2 (s,u,v,w,x,m);
 
	input[1:0] s;
	input[1:0] u,v,w,x;
	output reg[1:0] m;
	
	reg[1:0] t1, t2;
	
	//complete always blocks (look at one_bit_4to1muxV2.v for hints. Should look the same)
	always @(s[0], u, v) begin
		if(s[0] == 1) begin t1 = v; end
		else begin t1 = u; end
	end
	always @(s[0], w, x) begin
		if(s[0] == 1) begin t2 = x; end
		else begin t2 = w; end
	end

	always @(s[1], t1, t2) begin
		if(s[1] == 1) begin m = t2; end
		else begin m = t1; end
	end

endmodule
