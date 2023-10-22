module mux2_4(output wire [3:0] Out, input wire [3:0] A, input wire [3:0] B, input wire s); 
    /*     wire  mux1_out;
    wire  mux2_out;
    wire  mux3_out;
    wire  mux4_out; */
    /*     mux2_1_i3 mux_1(mux1_out , A[0] , B[0] , s);
    mux2_1_i3 mux_2(mux2_out , A[1] , B[1] , s);
    mux2_1_i3 mux_3(mux3_out , A[2] , B[2] , s);
    mux2_1_i3 mux_4(mux4_out , A[3] , B[3] , s); */

    assign Out = s ? B : A;
    /*     assign Out = {mux4_out, mux3_out, mux2_out, mux1_out};
    */    
 endmodule
