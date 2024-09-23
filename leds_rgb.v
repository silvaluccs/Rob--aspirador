/*
Modulo responsavel pelo acionamento do led rgb conforme o
status da bateria e da chave power do sistema
*/

module leds_rgb(power, batery_status, out_r, out_g, out_b, allSensores);
	input power, batery_status, allSensores;
	output out_r, out_g, out_b;
	
	wire not_batery_status, nor1, not1, and1;
	
	
	not Not1(not_batery_status, batery_status);
	
	and And1(and1, not_batery_status, power);
	
	nor Nor1(nor1, power, batery_status); // led vermelho acende se nao tiver bateria
	or Or1(out_r, nor1, allSensores, and1);
	
	not Not0(not1, allSensores);
	
	and And0(out_b, not1, batery_status); // led azul acende somente se a bateria estiver carregada
	
	and And2(out_g, batery_status, power); // led verde acende quando tiver bateria e estiver ligado.
	

	
endmodule