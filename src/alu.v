module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in, input wire [1:0] ALUOP, input wire l);

//constantes
reg [3:0] cero = 4'b0000;
reg [3:0] uno = 4'b0001;

//cables de conexion
wire [3:0] arriba;
wire [3:0] abajo;
wire [3:0] OP1;
wire [3:0] OP2;
wire [3:0] sum4_out;
wire [3:0] ul4_out;

//parte de arriba izquierda
mux2_4 mux1(arriba, cero, uno, add1);
mux2_4 mux3(OP1, arriba, A, op1_A);

//parte de abajo izquierda
mux2_4 mux2(abajo, A, B, op2_B);
compl1 compl1(OP2, abajo, cpl); 

//parte sum4
sum4 sum4(sum4_out, c_out, OP1, OP2, c_in);

//parte ul4
ul4 ul(ul4_out, OP1, OP2, ALUOP);

//parte final
mux2_4 mux4(R, sum4_out, ul4_out, l);

//tabla de excel
/* assign add1 = ALUP[0]
assign op_1 = l or (ALUP[1] and ~ALUP[0]) // l + ALUP[1]*NOT(ALUP[0] --->
assign op_2 = (ALUP[1] and ~ALUP[0]) or (l and ~ALUP[1]) // op_2 = ALUP[1] * ~ALUP[0] + l * ~ALUP[1] --->
assign cpl = (l and ~ALUP[1] and ~ALUP[0]) or (l and ALUP[1] and ALUP[0]) //pl = l * NOT(ALUP[1] * NOT(ALUP[0] + l * ALUP[1] * ALUP[0] --->

//zero, carry y sign
assign zero = (R == 0);
assign sign = R[3];
assign c_out = sum4_out[4]; 
 */
//iverilog -o alu.vvp test/alu_tb.v src/alu.v src/mux2_4.v src/compl1.v src/ul4.v ejemplos/mux2_1_i3.v src/cl.v src/mux4.v src/sum4.v src/fa.v 

endmodule 