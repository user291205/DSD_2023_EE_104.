module behav_sel (
    input  logic [2:0] sel,   
    output logic A0, A1, A2, A3, A4, A5, A6, A7 
);

    always_comb begin
        
        A0 = 1;
        A1 = 1;
        A2 = 1;
        A3 = 1;
        A4 = 1;
        A5 = 1;
        A6 = 1;
        A7 = 1;
        
        case (sel)
            3'b000: A0 = 0;
            3'b001: A1 = 0;
            3'b010: A2 = 0;
            3'b011: A3 = 0;
            3'b100: A4 = 0;
            3'b101: A5 = 0;
            3'b110: A6 = 0;
            3'b111: A7 = 0;
        endcase
    end
    
endmodule