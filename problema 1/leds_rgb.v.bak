/*
Modulo responsavel pelo acionamento do led rgb conforme o
status da bateria e da chave power do sistema
*/

module leds_rgb(power, batery_status, out_r, out_g, out_b);
	input power, batery_status;
	output out_r, out_g, out_b;
	
	wire not_batery_status;
	
	nor Nor1(out_r, power, batery_status); // led vermelho acende se nao tiver bateria e estiver desligado
	
	assign out_g = batery_status; // led verde acende somente se a bateria estiver carregada
	
	not Not1(not_batery_status, batery_status);
	and And1(out_b, not_batery_status, power); // led azul acende quando a bateria estiver descarregando
	
endmodule