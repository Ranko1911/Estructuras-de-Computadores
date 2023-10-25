`timescale 1 ns / 10 ps

module ul4_tb;


wire [3:0] test_out;
reg [3:0] test_a, test_b;
reg [1:0] test_s;

ul4 ul4_1(test_out, test_a, test_b, test_s);

initial begin
  $monitor("tiempo=%0d a=%b b=%b suma=%b acarreo=%b", $time, test_a, test_b, test_out, test_s);
  $dumpfile("ul_tb.vcd");
  $dumpvars;

    // a and b
    test_a = 4'b0001;
    test_b = 4'b0000;
    test_s = 2'b00;
    #10;

    // a or b
    test_a = 4'b0000;
    test_b = 4'b0001;
    test_s = 2'b01;
    #10;

    // a xor b
    test_a = 4'b0110;
    test_b = 4'b0001;
    test_s = 2'b10;
    #10;

    // not a
    test_a = 4'b0010;
    test_b = 4'b0001;
    test_s = 2'b11;
    #10;

    $finish;
  end
  //vector de test 1








  endmodule