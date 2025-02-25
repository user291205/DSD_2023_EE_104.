module lab5_tb();
    logic [3:0] nums;
    logic a, b, c, d, e, f, g;
    logic [2:0] sel;
    logic [7:0] A;
    integer errors = 0;
    
    behav_nums seven_seg_uut (
        .nums(nums), 
        .a(a),
        .b(b),
        .c(c), 
        .d(d), 
        .e(e), 
        .f(f), 
        .g(g));
    behav_sel selector_uut (
        .sel(sel), 
        .A(A));
    
    function [6:0] expected_segments(input [3:0] num);
        case(num)
            4'h0: expected_segments = 7'b0000001;
            4'h1: expected_segments = 7'b1001111;
            4'h2: expected_segments = 7'b0010010;
            4'h3: expected_segments = 7'b0000110;
            4'h4: expected_segments = 7'b1001100;
            4'h5: expected_segments = 7'b0100100;
            4'h6: expected_segments = 7'b0100000;
            4'h7: expected_segments = 7'b0001111;
            4'h8: expected_segments = 7'b0000000;
            4'h9: expected_segments = 7'b0000100;
            4'hA: expected_segments = 7'b0001000;
            4'hB: expected_segments = 7'b1100000;
            4'hC: expected_segments = 7'b0110001;
            4'hD: expected_segments = 7'b1000010;
            4'hE: expected_segments = 7'b0110000;
            4'hF: expected_segments = 7'b0111000;
        endcase
    endfunction
    
    function [7:0] expected_selector(input [2:0] s);
        expected_selector = ~(8'b00000001 << s);
    endfunction
    
    task test_module(input [3:0] num, input [2:0] s);
        nums = num; sel = s; #10;
        if ({a,b,c,d,e,f,g} !== expected_segments(num)) begin
            $display("ERROR: nums=%h Expected=%b Got=%b", num, expected_segments(num), {a,b,c,d,e,f,g});
            errors++;
        end
        if (A !== expected_selector(s)) begin
            $display("ERROR: sel=%b Expected=%b Got=%b", s, expected_selector(s), A);
            errors++;
        end
    endtask
    
    initial begin
        for (int i = 0; i < 16; i++) begin
            for (int j = 0; j < 8; j++) begin
                test_module(i[3:0], j[2:0]);
            end
        end
        $display("Test Completed. Errors: %0d", errors);
        $stop;
    end
endmodule