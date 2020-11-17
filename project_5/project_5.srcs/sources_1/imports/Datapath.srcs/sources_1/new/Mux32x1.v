`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 09:20:34 AM
// Design Name: 
// Module Name: Mux32x1
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


module Mux32x1(
    input [31:0] zero,
    input [31:0] one,
    input ctrl,
    output reg [31:0] out
    );
    always @(*) begin
    if(ctrl)
    out = one;
    else
    out = zero;
    end
endmodule
