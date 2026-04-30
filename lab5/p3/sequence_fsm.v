module sequence_fsm(clock, rst, enable, cnt, w, z, state);
	input clock, rst, enable, w;
	output z;
	output[4:0] state;
	wire[4:0] next_state;
	fsm_next next(
		.state(state),
		.cnt(cnt)
		.w(w),
		.next_state(next_state)
	);
	fsm_state_reg store(
		.clock(clock),
		.rst(rst),
		.enable(enable),
		.next_state(next_state),
		.state(state)
	);
	fsm_output out(
		.state(state),
		.cnt(cnt),
		.z(z)
	);
endmodule