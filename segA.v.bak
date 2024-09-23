/*
Modulo responsavel por controlar o acionamento do segmento A
das matrizes de leds.
*/

module segA(out, SenF, SenD, Control);

	input SenF, SenD, Control;
	output out;
	wire NotSenF, or1;

	not Not1(NotSenF, SenF);
	or Or1(or1, NotSenF, SenD);
	nand Nand1(out, or1, Control);
	
endmodule
