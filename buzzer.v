/*
 Modulo responsavel pelo acionamento do buzzer, caso todos os sensores 
 estejam ativados.
*/

module buzzer(out, SenE, SenF, SenD, SenA, Power, Batery_status);
	input SenE, SenF, SenD, SenA, Power, Batery_status;
	output out;
	
	and And1(out, SenE, SenF, SenD, SenA, Power, Batery_status);
endmodule 