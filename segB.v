/*
Modulo responsavel por controlar o acionamento do segmento B
da matriz de 7 segmentos.
*/

module segB(out, SenE, SenF, SenD, Control);
	input SenE, SenF, SenD, Control;
	output out;
	wire notD, or1, and1;
	
	not NotD(notD, SenD);
	or Or1(or1, notD, SenE);
	and And1(and1, or1, SenF);
	nand Nand1(out, and1, Control);
	
endmodule