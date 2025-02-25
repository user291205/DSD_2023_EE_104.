`timescale 1ns / 1ps
module structural_sel(
    input  logic [2:0] sel,  // 3-bit selection input
    output logic A0, A1, A2, A3, A4, A5, A6, A7
);
    assign A0 = ~(~sel[2] & ~sel[1] & ~sel[0]);
    assign A1 = ~(~sel[2] & ~sel[1] &  sel[0]);
    assign A2 = ~(~sel[2] &  sel[1] & ~sel[0]);
    assign A3 = ~(~sel[2] &  sel[1] &  sel[0]);
    assign A4 = ~( sel[2] & ~sel[1] & ~sel[0]);
    assign A5 = ~( sel[2] & ~sel[1] &  sel[0]);
    assign A6 = ~( sel[2] &  sel[1] & ~sel[0]);
    assign A7 = ~( sel[2] &  sel[1] &  sel[0]);
endmodule