module tb_mux4to1_behavioral;
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    mux4to1_behavioral uut(I, S, Y);

    initial begin
        I = 4'b1010;
        S = 2'b00; #10;
        S = 2'b01; #10;
        S = 2'b10; #10;
        S = 2'b11; #10;
        $stop;
    end
endmodule
