`timescale  1 ns/ 10ps

module mux4_tb;

reg test_out;
wire test_a , test_b, test_c, test_d:
wire [1:0] test_s;

mux4 mux4_1(test_out, test_a, test_b, test_c, test_d, test_s);



initial
begin
  $monitor("tiempo=%0d a=%b b=%b suma=%b acarreo=%b", $time, test_a, test_b, test_sum, test_carry);
  $dumpfile("ha_v1_tb.vcd");
  $dumpvars;

  //vector de test 0
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b0;
  #20;

  //vector de test 1
  test_a = 1'b1;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b0;
  #20;

  //vector de test 2
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b0;
  #20;

  //vector de test 3
  test_a = 1'b1;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b0;
  #20;

  //vector de test 4
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b1;
  test_d = 1'b0;
  #20;

  //vector de test 5
  test_a = 1'b1;
  test_b = 1'b0;
  test_c = 1'b1;
  test_d = 1'b0;
  #20;

    //vector de test 5
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b1;
  test_d = 1'b0;
  #20;

  //vector de test 6
  test_a = 1'b1;
  test_b = 1'b1;
  test_c = 1'b1;
  test_d = 1'b0;
  #20;

  //vector de test 0
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b1;
  #20;

  //vector de test 1
  test_a = 1'b1;
  test_b = 1'b0;
  test_c = 1'b0;
  test_d = 1'b1;
  #20;

  //vector de test 2
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b1;
  #20;

  //vector de test 3
  test_a = 1'b1;
  test_b = 1'b1;
  test_c = 1'b0;
  test_d = 1'b1;
  #20;

  //vector de test 4
  test_a = 1'b0;
  test_b = 1'b0;
  test_c = 1'b1;
  test_d = 1'b1;
  #20;

  //vector de test 5
  test_a = 1'b1;
  test_b = 1'b0;
  test_c = 1'b1;
  test_d = 1'b1;
  #20;

    //vector de test 5
  test_a = 1'b0;
  test_b = 1'b1;
  test_c = 1'b1;
  test_d = 1'b0;
  #20;

  //vector de test 6
  test_a = 1'b1;
  test_b = 1'b1;
  test_c = 1'b1;
  test_d = 1'b1;
  #20;
 
  $finish;  //fin simulacion

end
endmodule