`timescale  1 ns/ 10 ps

module mux4_tb;

reg test_a, test_b, test_c, test_d;

wire test_out;
reg [1:0] test_s;

mux4 mux4_1 (test_out, test_a, test_b, test_c, test_d, test_s);



initial
begin
  $monitor("tiempo=%0d a=%b b=%b c=%b d=%b s=%b", $time, test_a, test_b, test_c, test_d, test_s);
  $dumpfile("ha_v1_tb.vcd");
  $dumpvars;

  //output = a
  test_a = 1'b1;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b0;
  test_s = 2'b00;
  #20;

  //output = b
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b0;
  test_s = 2'b10;
  #20;  

  //output = c
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b1;
  test_d = 1'b0;
  test_s = 2'b01;
  #20;

  //output = d
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b1;
  test_s = 2'b11;
  #20;

  $finish;  //fin simulacion

end
endmodule