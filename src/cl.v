module cl(output wire out, input wire a, b, input wire [1:0] S);

wire and_, or_, xor_, inv_;

and and1(and_, a, b);
or or1(or_, a, b);
xor xor1(xor_, a, b);
not not1(inv_, a);

mux4 mux1(out, and_, or_, xor_, inv_, S);

endmodule 