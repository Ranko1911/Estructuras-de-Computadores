`timescale 1 ns / 10 ps

module fa_tb;

wire test_c_out;
wire test_sum;
reg test_a, test_b, test_c_in;

fa fa_1(test_c_out, test_sum, test_a, test_b, test_c_in);

initial
begin
$monitor("tiempo=%0d a=%b b=%b c_in=%b c_out=%b sum=%b", $time, test_a, test_b, test_c_in, test_sum, test_c_out);
$dumpfile("fa_tb.vcd");
$dumpvars;

//vector de test 0
test_a = 1'b0;
test_b = 1'b0;
test_c_in = 1'b0;
#20;

//vector de test 1
test_a = 1'b1;
test_b = 1'b0;
test_c_in = 1'b0;
#20;

//vector de test 2
test_a = 1'b0;
test_b = 1'b1;
test_c_in = 1'b0;
#20;

//vector de test 3
test_a = 1'b1;
test_b = 1'b1;
test_c_in = 1'b0;
#20;

//vector de test 4
test_a = 1'b0;
test_b = 1'b0;
test_c_in = 1'b1;
#20;

//vector de test 5
test_a = 1'b1;
test_b = 1'b0;
test_c_in = 1'b1;
#20;

//vector de test 6
test_a = 1'b0;
test_b = 1'b1;
test_c_in = 1'b1;
#20;

//vector de test 7
test_a = 1'b1;
test_b = 1'b1;
test_c_in = 1'b1;

$finish;


end


endmodule