module compl1(output wire [3:0] Out, input wire [3:0] Inp, input wire cpl); 

wire [3:0] Inp2;
wire [3:0] Out2;  

assign Inp2 = ~Inp;
assign Out2 = Inp2 + 4'b1;

endmodule