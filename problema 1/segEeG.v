/*
Modulo responsavel por controlar o acionamento dos segmentos E e G
das matrizes de leds. Eles ficam sempre em 0.
*/

module segEeG(outSegE, outSegG, Control);
  input Control;
  output outSegE, outSegG;
 
  not Not1(outSegE, Control);
  not Not2(outSegG, Control);

endmodule