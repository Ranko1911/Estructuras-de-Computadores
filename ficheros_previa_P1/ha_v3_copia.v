//Semisumador de dos entradas de 1 bit realizado a partir de assign,
// operador concatenación y operador suma

module ha_v3(output wire [3:0] sum, output wire carry, input wire [3:0] a, input wire [3:0] b);

assign {carry, sum} = a + b;	//operador suma junto con operador concatenación 

endmodule

