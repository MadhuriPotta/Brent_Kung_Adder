`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2023 05:27:25 PM
// Design Name: 
// Module Name: BrentK_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BrentK_tb( );

reg [31:0]A,B;
wire [31:0] S;

brent_kung_adder DUT (.a(A),.b(B),.sum(S));
initial
begin
#10 A = 32'b01; B=32'b01;
#100 $finish;
end


endmodule
