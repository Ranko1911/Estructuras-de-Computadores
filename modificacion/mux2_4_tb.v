`timescale 1 ns / 10 ps

module mux2_4_tb;

wire [3:0]  test_out;
reg [3:0]   test_a, test_b;
reg test_s;
// test_s = 0 -> test_out = test_a
mux2_4 mux2_4_1_ (test_out, test_a, test_b, test_s);

initial
begin
    $monitor("tiempo=%0d a=%b b=%b s=%b out=%b", $time, test_a, test_b, test_s, test_out);
    $dumpfile("mux2_4_tb.vcd");
    $dumpvars;

    //salida debe ser a
    test_a = 4'b0000;
    test_b = 4'b0001;
    test_s = 1'b0;
    #10;

    //salida debe ser b
    test_a = 4'b0000;
    test_b = 4'b0001;
    test_s = 1'b1;
    #10;

    //salida debe ser a
    test_a = 4'b0001;
    test_b = 4'b0010;
    test_s = 1'b0;
    #10;

    //salida debe ser b
    test_a = 4'b0001;
    test_b = 4'b0010;
    test_s = 1'b1;
    #10;

    $finish;
    
end

endmodule
