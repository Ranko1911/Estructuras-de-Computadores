`timescale 1 ns / 10 ps

module cl_tb;

wire test_out;
wire test_a, test_b;
wire [1:0] test_s;

cl cl_1(test_out, test_a, test_b, test_s);

initial
begin   
    $monitor("tiempo=%0d a=%b b=%b suma=%b acarreo=%b", $time, test_a, test_b, test_sum, test_carry);
    $dumpfile("ha_v1_tb.vcd");
    $dumpvars;

    //vector de test 0
    test_a = 1'b0;
    test_b = 1'b0;
    #20;

    //vector de test 1
    test_a = 1'b1;
    test_b = 1'b0;
    #20;

    //vector de test 2
    test_a = 1'b0;
    test_b = 1'b1;
    #20;

    //vector de test 3
    test_a = 1'b1;
    test_b = 1'b1;
    #20;
end









endmodule