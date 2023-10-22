module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in, input wire [1:0] ALUOP, input wire l);

//constantes
/* reg [3:0] cero = 4'b0000;
reg [3:0] uno = 4'b0001; */

  //tabla de excel
  wire add1;
  wire op_1;
  wire op_2;
  wire cpl;

  assign add1 = ALUOP[0];
  assign op_1 = ((l) | (ALUOP[1] & ~ALUOP[0])); 
  assign op_2 = ((l) | (ALUOP[1] & ~ALUOP[0])); 
  assign cpl = (~l & ~ALUOP[1] & ALUOP[0]);

  //cables de conexion
  wire [3:0] arriba;
  wire [3:0] abajo;
  wire [3:0] OP1;
  wire [3:0] OP2;
  wire [3:0] sum4_out;
  wire [3:0] ul4_out;

  //parte de arriba izquierda
  mux2_4 mux_1 (arriba, 4'b0000, 4'b0001, add1);
  mux2_4 mux_3 (OP1, arriba, A, op_1);

  //parte de abajo izquierda
  mux2_4 mux_2 (abajo, A, B, op_2);
  compl1 compl_1 (OP2, abajo, cpl); 

  //parte sum4
  sum4_v2 sum_1 (sum4_out, c_out, OP1, OP2, c_in);

  //parte ul4
  ul4 ul_4 (ul4_out, OP1, OP2, ALUOP);

  //parte final
  mux2_4 mux_4 (R, sum4_out, ul4_out, l);

  //zero, carry y sign  
  assign zero = ~R[3] & ~R[2] & ~R[1] & ~R[0];
  assign sign = l ? 1'bx : R[3];


endmodule 