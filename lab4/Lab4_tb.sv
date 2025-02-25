`timescale 1ns/1ps

module Lab4_tb();
    logic [1:0] a;
    logic [1:0] b;
    logic red,blue,green;
Lab4 UUT(
    .a(a),
    .b(b),
    .red(red),
    .blue(blue),
    .green(green)

);

initial
    begin
        a = 2'b00; b = 2'b00;
        #10;
        a = 2'b00; b = 2'b01;
        #10;
        a = 2'b00; b = 2'b10;
        #10;
        a = 2'b00; b = 2'b11;
        #10;
        a = 2'b01; b = 2'b00;
        #10;
        a = 2'b01; b = 2'b01;
        #10;
        a = 2'b01; b = 2'b10;
        #10;
        a = 2'b01; b = 2'b11;
        #10;
        a = 2'b10; b = 2'b00;
        #10;
        a = 2'b10; b = 2'b01;
        #10;
        a = 2'b10; b = 2'b10;
        #10;
        a = 2'b10; b = 2'b11;
        #10;
        a = 2'b11; b = 2'b00;
        #10;
        a = 2'b11; b = 2'b01;
        #10;
        a = 2'b11; b = 2'b10;
        #10;
        a = 2'b11; b = 2'b11;
        #10;
        $finish;
    end

endmodule