module mux2_4(output wire [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire s); 
    //salida tiporeg para que internamente haga una conversion conductual
    //always @(a or b or c or d or S)
    //  if(S[0])
    //    mux2_1_i3 mux_1(out , a , b , S[1]);
    //  else  
    //    mux2_1_i3 mux_2(out, c, d, S[1]);
    //endmodule
    wire [3:0] mux1_out;
    wire [3:0] mux2_out;
    wire [3:0] mux3_out;
    wire [3:0] mux4_out;
    mux2_1_i3 mux_1(mux1_out , A[0] , B[0] , s);
    mux2_1_i3 mux_2(mux2_out , A[1] , B[1] , s);
    mux2_1_i3 mux_3(mux3_out , A[2] , B[2] , s);
    mux2_1_i3 mux_4(mux4_out , A[3] , B[3] , s);
    assign Out = {mux1_out, mux2_out, mux3_out, mux4_out};
    endmodule