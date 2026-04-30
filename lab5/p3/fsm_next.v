module fsm_next(state, cnt, w, next_state);
	input [4:0] state;
	input [3:0] cnt;
	input w;
	output reg [3:0] next_state;
	always @(w) begin
		if(state[4] == w) begin
			if(state[3:0] != cnt) begin
				next_state[3:0] <= state[3:0] + 4'b1;
			end else begin
				next_state[3:0] <= state[3:0];
			end
		end else begin
			next_state[4] <= w;
			next_state[3:0] <= 4'b0;
		end
	end
endmodule