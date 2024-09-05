module segF(out, SenF, SenD);
  input SenF, SenD;
  output out;
  
  wire notSenF, or1;
  
  not NotSenF(notSenF, SenF);
  or Or1(or1, notSenF, SenD);
  not Not2(out, or1);
endmodule