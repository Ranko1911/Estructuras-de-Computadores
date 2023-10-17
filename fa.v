module fa(output wire c_out, sum, input wire a, b, c_in);
   wire c1, c2, c3;
   assign {c_out, sum} = a + b + c_in;
endmodule