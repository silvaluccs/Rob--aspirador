/*
Modulo principal responsavel pelo controle do sistema
*/

module main(SenE, SenF, SenD, SenA, power_switch, batery_status, a, b, c, d, e, f, g, led_r, led_g, led_b);
	input SenE, SenF, SenD, SenA, power_switch, batery_status;
	output a, b, c, d, e, f, g, led_r, led_g, led_b;
	
	wire control;
	
	// instanciando o modulo de controle dos sensores
	control_sensors control_sensors_inst(.out(control), .power(power_switch), .batery_status(batery_status));
	
	// instanciando os segmentos da matriz de led
	segA segA_inst(.out(a), .SenF(SenF), .SenD(SenD), .Control(control)); // instancia do segmento a
	
	segB segB_inst(.out(b), .SenE(SenE), .SenF(SenF), .SenD(SenD), .Control(control)); // instancia do segmento b

	segC segC_inst(.out(c), .SenF(SenF), .SenD(SenD), .SenE(SenE), .SenA(SenA), .Control(control)); // instancia do segmento c
	
	segD segD_inst(.out(d), .SenF(SenF), .SenE(SenE), .SenD(SenD), .Control(control)); // instancia do segmento d
	
	segEeG segEeG_inst(.outSegE(e), .outSegG(g), .Control(control)); // instancia dos segmentos E e G
	
	segF segF_inst(.out(f), .SenF(SenF), .SenD(SenD), .Control(control)); // instancia do segmento F
	
	// instanciando o led rgb responsavel por mandar o sinal da bateria e power do sistema
	leds_rgb leds_rgb_inst(.power(power_switch), .batery_status(batery_status), .out_r(led_r), .out_g(led_g), .out_b(led_b));
	
	
endmodule
	