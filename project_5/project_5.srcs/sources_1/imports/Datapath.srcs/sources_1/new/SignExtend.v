`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2020 12:25:31 AM
// Design Name: 
// Module Name: SignExtend
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


module SignExtend(
    input [15:0] in,
    output reg [31:0] out
    );
    always @(*) begin
    if(in[15] == 1) begin
    out[31:16] = 15'h7FFF;
    end
    if(in[15] == 0) begin
    out[31:16] = 15'b0;
    end
    out[15:0] = in;
    end
endmodule
