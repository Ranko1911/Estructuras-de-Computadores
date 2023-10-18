`timescale 1 ns / 10 ps

module ul4_tb;


reg test_out;
wire [3:0] test_a, test_b;
wire [1:0] test_s;

ul4 ul4_1(test_out, test_a, test_b, test_s);

initial begin
  $monitor("tiempo=%0d a=%b b=%b suma=%b acarreo=%b", $time, test_a, test_b, test_sum, test_carry);
  $dumpfile("ha_v1_tb.vcd");
  $dumpvars;

    for (int i = 0; i < 16; i = i + 1) begin
      for (int j = 0; j < 16; j = j + 1) begin
        for (int k = 0; k < 4; k = k + 1) begin
          test_a = i;
          test_b = j;
          test_s = k;
          #20;
        end
      end
    end
    $finish;
  end
  //vector de test 1








  endmodule