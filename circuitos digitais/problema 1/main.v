module main(SenE, SenF, SenD, SenA, a, b, c, d, e, f, g);
	input SenE, SenF, SenD, SenA;
	output a, b, c, d, e, f, g;
	
	// instanciando os segmentos da matriz de led
	segA segA_inst(.out(a), .SenF(SenF), .SenD(SenD)); // instancia do segmento a
	
	segB segB_inst(.out(b), .SenE(SenE), .SenF(SenF), .SenD(SenD)); // instancia do segmento b

	segC segC_inst(.out(c), .SenF(SenF), .SenD(SenD), .SenE(SenE), .SenA(SenA)); // instancia do segmento c
	segD segD_inst(.out(d), .SenF(SenF), .SenE(SenE), .SenD(SenD));
	
	segEeG segEeG_inst(.outSegE(e), .outSegG(g));
	
	segF segF_inst(.out(f), .SenF(SenF), .SenD(SenD));
	
endmodule
	