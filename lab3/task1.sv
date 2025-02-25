module task1(
    input logic a,b,c,
    output logic x,y
    );
    
    wire v1, v2, v3, v4, v5;
    not not_out(v1, c);
    or or_out(v2, a, b);
    xor x_out(x, v1, v2);

    and and_out(v3, a, b);
    not nand_out(v4, v3);
    xor xor_out(v5, v4, v2);
    and y_out(y, v2, v5);

endmodule