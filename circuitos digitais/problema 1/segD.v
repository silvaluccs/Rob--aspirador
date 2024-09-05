module segD(out, SenF, SenE, SenD);
  input SenF, SenE, SenD;
  output out;
  wire nand1;
  
  nand Nand1(nand1, SenE, SenD);
  and And1(and1, nand1, SenF);
  not Not1(out, and1);
endmodule