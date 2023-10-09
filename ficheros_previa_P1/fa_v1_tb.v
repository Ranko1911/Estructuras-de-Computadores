`timescale 1 ns / 10 ps 

module fa_v1_tb;

reg test_c_in,test_a , test_b;
wire test_sum, test_c_out;

fa fa_1 (test_sum, test_c_out, test_a, test_b, test_c_in);

initial
begin
	$monitor("tiempo=%0d a=%b b=%b c_in=%b suma=%b c_out=%b ", $time, test_a, test_b, test_c_in, test_sum, test_c_out);
	$dumpfile("fa_v1_tb.vcd");
  	$dumpvars;

	//vector de test 0
  	test_a = 1'b0;
  	test_b = 1'b0;
	test_c_in = 1'b0;
  	#20;
	
	//vector de test 0
        test_a = 1'b1;
        test_b = 1'b0;
        test_c_in = 1'b0;
        #20;

        //vector de test 0
        test_a = 1'b0;
        test_b = 1'b1;
        test_c_in = 1'b0;
        #20;

        //vector de test 0
        test_a = 1'b1;
        test_b = 1'b1;
        test_c_in = 1'b0;
        #20;

        //vector de test 0
        test_a = 1'b0;
        test_b = 1'b0;
        test_c_in = 1'b1;
        #20;

        //vector de test 0
        test_a = 1'b1;
        test_b = 1'b0;
        test_c_in = 1'b1;
        #20;

        //vector de test 0
        test_a = 1'b0;
        test_b = 1'b1;
        test_c_in = 1'b1;
        #20;

        //vector de test 0
        test_a = 1'b1;
        test_b = 1'b1;
        test_c_in = 1'b1;
        #20;
$finish; 
end
endmodule
