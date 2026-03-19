module in2multiplex(a, b, s, out);
	input[3:0] a, b;
	input s;
	output[3:0] out;
	wire[3:0] temp;
	assign temp = {s, s, s, s};
	assign out = (~temp & a) | (temp & b);
endmodule

module in4mux(a, b, c, d, s, out);
	input[3:0] a, b, c, d;
	input[1:0] s;
	output[3:0] out;
	wire[3:0] u, v;
	in2multiplex mux1(.a(a), .b(b), .s(s[0]), .out(u));
	in2multiplex mux2(.a(c), .b(d), .s(s[0]), .out(v));
	in2multiplex mux3(.a(u), .b(v), .s(s[1]), .out(out));
endmodule

module labtest_q2_hardware  (a,b,c,d,x);
    input[3:0] a, b, d;
	input c;
    output[3:0] x;

    wire[1:0] t1;
    wire[3:0] t2,t3, t4; //you may use this, but do not have to
    reg[3:0] t5, t6, t7; //you may use this, but do not have to

    circuitA comb1(.a(a),.b(b),.c(c),.x(t1),.y(t2));
    circuitB comb2(.a(d),.b(a),.x(t3));
	in4mux mux(.a(t2), .b(b), .c(t3), .d(d), .s(t1), .out(t4));
    
    // always @() begin
        // case ()
            // 2'b00 : begin t5<= ; end
            // 2'b01 : begin t5<= ; end
            // 2'b10 : begin t5<= ; end
            // default : begin t5<= ; end
        // endcase
    // end
    
    circuitC comb3(.a(t4),.b(d),.x(x));
endmodule