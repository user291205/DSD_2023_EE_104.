module lab3(
    input logic a,b,c,
    output logic x,y
    );
    
    logic or_out;
    logic nand_out;
    logic xor_out; 
    logic not_out;
    
    assign not_out = ~c;
    assign or_out = a|b;
    assign nand_out = ~(a&b);
    assign xor_out = nand_out ^ or_out;
    assign y = xor_out & or_out;
    assign x = or_out ^ not_out;
endmodule