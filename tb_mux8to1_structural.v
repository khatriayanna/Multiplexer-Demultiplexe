module tb_mux8to1_structural;
    reg [7:0] I;
    reg [2:0] S;
    wire Y;

    mux8to1_structural uut(I, S, Y);

    initial begin
        I = 8'b11001010;
        S = 3'b000; #10;
        S = 3'b001; #10;
        S = 3'b010; #10;
        S = 3'b011; #10;
        S = 3'b100; #10;
        S = 3'b101; #10;
        S = 3'b110; #10;
        S = 3'b111; #10;
        $stop;
    end
endmodule
