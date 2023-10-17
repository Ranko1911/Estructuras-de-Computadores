module compl1(output wire [3:0] Out, input wire [3:0] Inp, input wire cpl); 
if (cpl == 1'b0)
  Out = ~Inp;
else
  Out = Inp;

endmodule