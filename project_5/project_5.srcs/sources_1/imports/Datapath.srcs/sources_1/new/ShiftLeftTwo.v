`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 12:30:21 AM
// Design Name: 
// Module Name: ShiftLeftTwo
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


module ShiftLeftTwo(
    input [31:0] in,
    output reg [31:0] out
    );
    reg [31:0] dout;
    always @(*) begin
    dout[1:0] <= 2'b0;
    dout[31:2] <= in[29:0];
    out = dout;
    end
endmodule
