`timescale 1 ns / 10 ps

module mux2_4_tb;

reg test_out;
wire [3:0] test_a, test_b;
wire test_s;

mux2_4 mux2_4_1(test_out, test_a, test_b, test_s);

initial
begin
    $monitor("tiempo=%0d a=%b b=%b s=%b", $time, test_a, test_b, test_s);
    $dumpfile("mux2_4_tb.vcd");
    $dumpvars;

    //vector de test 0
    test_a = 4'b0000;
    test_b = 4'b0000;
    test_s = 1'b0;
    #20;

    //vector de test 1
    test_a = 4'b0001;
    test_b = 4'b0001;
    test_s = 1'b0;
    #20;

    //vector de test 2
    test_a = 4'b0010;
    test_b = 4'b0010;
    test_s = 1'b0;
    #20;

    //vector de test 3
    test_a = 4'b0011;
    test_b = 4'b0011;
    test_s = 1'b0;

    //vector de test 4
    test_a = 4'b0100;
    test_b = 4'b0100;
    test_s = 1'b0;
    #20;

    //vector de test 5
    test_a = 4'b0101;
    test_b = 4'b0101;
    test_s = 1'b0;
    #20;

    //vector de test 6
    test_a = 4'b0110;
    test_b = 4'b0110;
    test_s = 1'b0;
    #20;

    
end

endmodule