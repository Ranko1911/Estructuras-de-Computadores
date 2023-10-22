module compl1(output wire [3:0] Out, input wire [3:0] Inp, input wire cpl); 

wire [3:0] temp;

not not1(temp[0], Inp[0]);
not not2(temp[1], Inp[1]);
not not3(temp[2], Inp[2]);
not not4(temp[3], Inp[3]);

mux2_4 mux1(Out, Inp, temp, cpl);




endmodule