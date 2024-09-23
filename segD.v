/*
Modulo responsavel por controlar o acionamento do segmento D
da matriz de 7 segmentos
*/

module segD(out, SenF, SenE, SenD, Control);
  input SenF, SenE, SenD, Control;
  output out;
  wire nand1, and1;
  
  nand Nand1(nand1, SenE, SenD);
  and And1(and1, nand1, SenF);
  nand Nand2(out, and1, Control);
  
endmodule