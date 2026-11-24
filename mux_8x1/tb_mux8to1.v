`timescale 1ns / 1ps

module tb_mux8to1;
    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    mux8to1 dut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        in = 8'b10101010;
        sel = 3'd0; #10;
        sel = 3'd1; #10;
        sel = 3'd2; #10;
        sel = 3'd3; #10;
        sel = 3'd4; #10;
        sel = 3'd5; #10;
        sel = 3'd6; #10;
        sel = 3'd7; #10;
        $finish;
    end
endmodule