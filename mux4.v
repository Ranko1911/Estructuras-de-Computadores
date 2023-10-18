
module mux4(output reg out, input wire a, b, c, d, input wire [1:0] S);

always @(a or b or c or d or S)
  if(S[0])
    if (S[1])
      out = d;
    else
      out = c;
  else  
    if (S[1])
      out = b;
    else
      out = a;

endmodule
