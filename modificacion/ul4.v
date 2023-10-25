module ul4(output reg[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire [1:0] S);//unidad logica estructural

//uso dos cl para hacer toda la estructural

 /*  cl cl1 (Out[0], A[0], B[0], S);
  cl cl2 (Out[1], A[1], B[1], S);
  cl cl3 (Out[2], A[2], B[2], S);
  cl cl4 (Out[3], A[3], B[3], S);
  */
always @(*)
begin
    case (S)
        2'b00: Out = A & B;
        2'b01: Out = A | B;
        2'b10: Out = A ^ B;
        2'b11: Out = ~A;
    endcase
end


endmodule