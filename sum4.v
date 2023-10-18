module sum4(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);

wire c_out0, c_out1, c_out2;

fa fa0(S[0], c_out0, A[0], B[0], c_in);
fa fa1(S[1], c_out1, A[1], B[1], c_out0);   
fa fa2(S[2], c_out2, A[2], B[2], c_out1);
fa fa3(S[3], c_out, A[3], B[3], c_out2);

endmodule