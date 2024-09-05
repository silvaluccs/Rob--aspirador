module segC(out, SenF, SenD, SenE, SenA);
	input SenF, SenD, SenE, SenA;
	output out;
	wire notD, notA, or1, and1, and2;
	
	not NotD(notD, SenD);
	not NotA(notA, SenA);
	and And1(and1, notA, SenD, SenE);
	
	or Or1(or1, notD, and1);
	and And2(and2, or1, SenF);
	not Not3(out, and2);
	
endmodule