`timescale 1ns / 1ps

module adder_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    adder_4bit uut (
        .A(A), .B(B),
	.Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        A = 4'd0;  B = 4'd0;  Cin = 0; #10;
        A = 4'd1;  B = 4'd2;  Cin = 0; #10;
        A = 4'd5;  B = 4'd3;  Cin = 1; #10;
        A = 4'd7;  B = 4'd8;  Cin = 0; #10;
        A = 4'd9;  B = 4'd6;  Cin = 1; #10;
        A = 4'd15; B = 4'd1;  Cin = 0; #10;
        A = 4'd15; B = 4'd15; Cin = 1; #10;
        $finish;
    end

endmodule