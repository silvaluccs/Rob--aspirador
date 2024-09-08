/*
Modulo para permitir o acionamento dos sensores
*/

module control_sensors(out, power, batery_status);
	input power, batery_status;
	output out;
	
	wire and1;
	and And1(out, power, batery_status);
endmodule