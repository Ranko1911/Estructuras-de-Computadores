
module mux4(output reg out, input wire a, b, c, d, input wire [1:0] S); //salida tiporeg para que internamente haga una conversion conductual

always @(a or b or c or d or S)
  if(S[0])
    mux2_1_i3 mux_1(out , a , b , S[1]);
  else  
    mux2_1_i3 mux_2(out, c, d, S[1]);

endmodule
