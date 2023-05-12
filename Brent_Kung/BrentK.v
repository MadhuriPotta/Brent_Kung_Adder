module brent_kung_adder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire [31:0] p, g, c;

assign p[0] = a[0] ^ b[0];
assign g[0] = a[0] & b[0];
assign c[0] = 0;

genvar i;
generate
    for (i = 1; i < 32; i = i + 1) begin : stage
        assign p[i] = g[i-1] ^ (a[i] ^ b[i]);
        assign g[i] = (a[i] & b[i]) | (g[i-1] & (a[i] ^ b[i]));
        assign c[i] = g[i-1] & (a[i] | b[i]);
    end
endgenerate

assign sum = p ^ c;

endmodule
