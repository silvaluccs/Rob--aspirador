module segA(out, SenF, SenD);
	input SenF, SenD;
	output out;
	wire NotSenF, or1;

	not Not1(NotSenF, SenF);
	or Or1(or1, NotSenF, SenD);
	not Not2(out, or1);
endmodule
