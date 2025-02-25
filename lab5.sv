module lab5(
    input  logic [2:0] sel,  
    input  logic [3:0] nums,    
    output logic A0, A1, A2, A3, A4, A5, A6, A7, 
    output logic a, b, c, d, e, f, g
);
structural_sel display_selector (
        .sel(sel),
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .A4(A4),
        .A5(A5),
        .A6(A6),
        .A7(A7)
    );
 structural_nums seven_seg_decoder (
        .nums(nums),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g)
    );
endmodule