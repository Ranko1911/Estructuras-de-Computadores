`timescale 1 ns / 10 ps

module cl_tb;

wire test_out;
reg test_a, test_b;
reg [1:0] test_s;

cl cl_1(test_out, test_a, test_b, test_s);

initial
begin   
    $monitor("tiempo=%0d a=%b b=%b test_s=%b saida=%b", $time, test_a, test_b, test_s, test_out);
    $dumpfile("cl_tb.vcd");
    $dumpvars;

    //sa and b
    test_a = 1'b1;
    test_b = 1'b0;
    test_s = 2'b00;
    #10;

    //a or b
    test_a = 1'b0;
    test_b = 1'b1;
    test_s = 2'b01;
    #10;

    //a xor b
    test_a = 1'b0;
    test_b = 1'b1;
    test_s = 2'b10;
    #10;

    //not a
    test_a = 1'b0;
    test_b = 1'b1; 
    test_s = 2'b11;
    #10;



    //sale la 
end









endmodule