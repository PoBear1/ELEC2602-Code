module FA(a,b,cin,cout,s);
	input a, b, cin;
	output cout, s;
	wire t, u, v, w, x;
	
	xor(t, a, b);
	xor(s, t, cin);
	
	and(u, a, b);
	and(v, b, cin);
	and(w, cin, a);

	or(x, u, v);
	or(cout, x, w);
endmodule