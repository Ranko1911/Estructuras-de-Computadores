`timescale 1 ns / 10 ps

module compl1_tb;   

reg test_out;
wire [3:0] test_inp;
wire test_cpl;

compl1 compl1_1(test_out, test_inp, test_cpl);

initial
begin
$monitor("tiempo=%0d inp=%b cpl=%b out=%b", $time, test_inp, test_cpl, test_out);
$dumpfile("compl1_tb.vcd");
$dumpvars;

//vector de test 0
test_inp = 4'b0000;
test_cpl = 1'b0;
#20;

//vector de test 1
test_inp = 4'b0000;
test_cpl = 1'b1;

//vector de test 2
test_inp = 4'b0001;
test_cpl = 1'b0;
#20;

//vector de test 3
test_inp = 4'b0001;
test_cpl = 1'b1;
#20;

//vector de test 4
test_inp = 4'b0010;
test_cpl = 1'b0;
#20;

//vector de test 5
test_inp = 4'b0010;
test_cpl = 1'b1;
#20;

//vector de test 6
test_inp = 4'b0011;
test_cpl = 1'b0;
#20;

//vector de test 7
test_inp = 4'b0011;
test_cpl = 1'b1;
#20;

//vector de test 8
test_inp = 4'b0100;
test_cpl = 1'b0;
#20;

//vector de test 9
test_inp = 4'b0100;
test_cpl = 1'b1;
#20;

//vector de test 10
test_inp = 4'b0101;
test_cpl = 1'b0;

//vector de test 11
test_inp = 4'b0101;
test_cpl = 1'b1;
#20;

//vector de test 12
test_inp = 4'b0110;
test_cpl = 1'b0;
#20;

//vector de test 13
test_inp = 4'b0110;
test_cpl = 1'b1;
#20;

//vector de test 14
test_inp = 4'b0111;
test_cpl = 1'b0;
#20;

//vector de test 15
test_inp = 4'b0111;
test_cpl = 1'b1;
#20;

//vector de test 16
test_inp = 4'b1000;
test_cpl = 1'b0;
#20;

//vector de test 17
test_inp = 4'b1000;
test_cpl = 1'b1;
#20;

//vector de test 18
test_inp = 4'b1001;
test_cpl = 1'b0;
#20;

//vector de test 19
test_inp = 4'b1001;
test_cpl = 1'b1;
#20;

//vector de test 20
test_inp = 4'b1010;
test_cpl = 1'b0;
#20;

//vector de test 21
test_inp = 4'b1010;
test_cpl = 1'b1;
#20;

//vector de test 22
test_inp = 4'b1011;
test_cpl = 1'b0;
#20;

//vector de test 23
test_inp = 4'b1011;
test_cpl = 1'b1;
#20;

//vector de test 24
test_inp = 4'b1100;
test_cpl = 1'b0;
#20;

//vector de test 25
test_inp = 4'b1100;
test_cpl = 1'b1;
#20;

//vector de test 26
test_inp = 4'b1101;
test_cpl = 1'b0;
#20;

//vector de test 27
test_inp = 4'b1101;
test_cpl = 1'b1;
#20;

//vector de test 28
test_inp = 4'b1110;
test_cpl = 1'b0;
#20;

//vector de test 29 
test_inp = 4'b1110;
test_cpl = 1'b1;
#20;

//vector de test 30
test_inp = 4'b1111;
test_cpl = 1'b0;
#20;

//vector de test 31
test_inp = 4'b1111;
test_cpl = 1'b1;
#20;

$finish;

end

endmodule