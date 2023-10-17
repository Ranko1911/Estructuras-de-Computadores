module cl(output wire out, input wire a, b, input wire [1:0] S);

wire and_, or_, xor_, inv_;

and(and_, a, b);
or(or_, a, b);
xor(xor_, a, b);
not(inv_, a);

if (S == 2'b00)
  out = and_;
else if (S == 2'b01)
  out = or_;
else if (S == 2'b10)
  out = xor_;
else if (S == 2'b11)
  out = inv_;
endmodule