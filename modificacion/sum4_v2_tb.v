`timescale 1 ns/ 10 ps

module sum4_v2_tb;

wire [3:0] test_S;
wire test_c_out;

reg [3:0] test_A, test_B;
reg test_c_in;

sum4_v2 mat(test_S, test_c_out, test_A, test_B, test_c_in);

initial
begin
    $monitor("tiempo=%0d A=%b B=%b c_in=%b S=%b c_out=%b", $time, test_A, test_B, test_c_in, test_S, test_c_out);
    $dumpfile("sum4_v2.vcd");
    $dumpvars;

    //vector de test 0
    test_A = 4'b0000;
    test_B = 4'b0000;
    test_c_in = 1'b0;
    # 20;

    //vector de test 1
    test_A = 4'b0000;
    test_B = 4'b0000;
    test_c_in = 1'b1;
    # 20;

    //vector de test 2
    test_A = 4'b0000;
    test_B = 4'b0001;
    test_c_in = 1'b0;
    # 20;

    //vector de test 3
    test_A = 4'b0000;
    test_B = 4'b0001;
    test_c_in = 1'b1;
    # 20;

    //vector de test 4
    test_A = 4'b0000;
    test_B = 4'b0010;
    test_c_in = 1'b0;
    # 20;

    //vector de test 5
    test_A = 4'b0000;
    test_B = 4'b0010;
    test_c_in = 1'b1;
    # 20;

    //vector de test 6
    test_A = 4'b0000;
    test_B = 4'b0011;
    test_c_in = 1'b0;
    # 20;

    //vector de test 7
    test_A = 4'b0000;
    test_B = 4'b0011;
    test_c_in = 1'b1;
    # 20;

    //vector de test 8
    test_A = 4'b0000;
    test_B = 4'b0100;
    test_c_in = 1'b0;
    # 20;

    //vector de test 9
    test_A = 4'b0000;
    test_B = 4'b0100;
    test_c_in = 1'b1;
    # 20;

    //vector de test 10
    test_A = 4'b0000;
    test_B = 4'b0101;
    test_c_in = 1'b0;
    # 20;

    //vector de test 11
    test_A = 4'b0000;
    test_B = 4'b0101;
    test_c_in = 1'b1;
    # 20;

    //vector de test 12
    test_A = 4'b0000;
    test_B = 4'b0110;
    test_c_in = 1'b0;
    # 20;

    //vector de test 13
    test_A = 4'b0000;
    test_B = 4'b0110;
    test_c_in = 1'b1;
    # 20;



    $finish;
end

endmodule