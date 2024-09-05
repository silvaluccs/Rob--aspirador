module segB(out, SenE, SenF, SenD);
	input SenE, SenF, SenD;
	output out;
	wire notD, or1, and1;
	
	not NotD(notD, SenD);
	or Or1(or1, notD, SenE);
	and And1(and1, or1, SenF);
	not Not2(out, and1);
			
endmodule