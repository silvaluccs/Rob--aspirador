/*
Modulo responsavel por controlar o acionamento do segmento F
das matrizes de leds.
*/

module segF(out, SenF, SenD, Control);
  input SenF, SenD, Control;
  output out;
  
  wire notSenF, or1;
  
  not NotSenF(notSenF, SenF);
  or Or1(or1, notSenF, SenD);
  nand Nand1(out, or1, Control);
  
endmodule