module fsm_output(state, cnt, z);
	input[4:0] state;
	input[3:0] cnt;
	output reg z;
	always @(state) begin
		if(state[3:0] == cnt) begin z = 1'b1; end
		else begin z = 1'b0; end
	end
endmodule