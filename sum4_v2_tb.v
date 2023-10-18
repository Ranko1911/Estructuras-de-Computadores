`timescale 1 ns/ 10 ps

module sum4_v2_tb;

wire [3:0] test_S;
wire test_c_out;

reg [3:0] test_A, test_B;
reg test_c_in;

sum4_v2 mat(test_S, test_c_out, test_A, test_B, test_c_in);

initial
begin


    $finish;
end

endmodule