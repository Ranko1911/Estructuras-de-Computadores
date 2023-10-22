`timescale 1 ns/ 10 ps

module sum4_tb;

wire [3:0] test_S;
reg [3:0] test_A, test_B;
wire test_c_out;
reg test_c_in;

sum4 mat(test_S, test_c_out, test_A, test_B, test_c_in);

initial
begin
    $monitor("tiempo=%0d A=%b B=%b c_in=%b S=%b c_out=%b", $time, test_A, test_B, test_c_in, test_S, test_c_out);
    $dumpfile("sum4.vcd");
    $dumpvars;

    // suma 0 + 0
    test_A = 4'b0000;
    test_B = 4'b0000;
    test_c_in = 1'b0;
    #10;

    // suma 0101 + 0101 es 1010
    test_A = 4'b0101;
    test_B = 4'b0101;
    test_c_in = 1'b0;
    #10;

    // suma 0101 + 0101 con acarreo
    test_A = 4'b0101;
    test_B = 4'b0101;
    test_c_in = 1'b1;
    #10;

    // suma 1111 + 1111
    test_A = 4'b1111;
    test_B = 4'b1111;
    test_c_in = 1'b0;
    #10;

    // suma 1111 + 1111 con acarreo
    test_A = 4'b1111;
    test_B = 4'b1111;
    test_c_in = 1'b1;
    #10;

    $finish;
end
endmodule