module mux2to1(input a, input b, input s, output y);
    assign y = s ? b : a;
endmodule

module mux8to1_structural(
    input [7:0] I,
    input [2:0] S,
    output Y
);
    wire [3:0] w;

    // 4 lower muxes (first stage)
    mux2to1 m0(I[0], I[1], S[0], w[0]);
    mux2to1 m1(I[2], I[3], S[0], w[1]);
    mux2to1 m2(I[4], I[5], S[0], w[2]);
    mux2to1 m3(I[6], I[7], S[0], w[3]);

    // 2 muxes (second stage)
    wire [1:0] w2;
    mux2to1 m4(w[0], w[1], S[1], w2[0]);
    mux2to1 m5(w[2], w[3], S[1], w2[1]);

    // Final stage
    mux2to1 m6(w2[0], w2[1], S[2], Y);
endmodule
