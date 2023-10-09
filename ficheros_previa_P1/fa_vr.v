//Sumador completo (full-adder) de tres entradas de 1 bit realizado a partir de puertas lógicas 
module fa_vr(output wire sum, output wire c_out, input wire a, input wire b, input wire c_in);

wire sum1, carry1, carry2;

ha_vr ha_1(sum1, carry1, a ,b);
ha_vr ha_2(sum, carry2, c_in, sum1);
or and1(c_out, carry2, carry1);

endmodule

