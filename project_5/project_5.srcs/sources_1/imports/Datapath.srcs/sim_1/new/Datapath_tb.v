`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 05:30:29 PM
// Design Name: 
// Module Name: Datapath_tb
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

module Datapath_tb;
    reg Reset;
    reg clock;
    wire [31:0]Dout;
    reg [6:0] i;

    Datapath uut (.clk(clock),.reset(Reset),.DataOut(Dout));
        initial begin
            $readmemh("imem.dat",uut.imem.imem);
            $readmemh("regfile.dat",uut.rf32.regArray);
            $readmemh("Datamem.dat",uut.d.dmem);
  
            clock = 1;
            Reset =1;
            #1 clock = 0;
            #1 clock = 1;
            Reset = 0;
            for(i = 0; i < 5'd60; i = i + 1) begin
            #1 clock = ~clock;
            if(~clock) begin
            $display("Time: %t, Output: %h", $time, Dout);
            end
            end
            for(i = 0; i < 32; i = i + 1) begin
            $display("Register %d: %h", i, uut.rf32.regArray[i]);
            end
            $display("Memory values:");
            for(i = 0; i < 5'd24; i = i + 1) begin
            $display("%d: %h", i, uut.d.dmem[i]);
            end
        end
endmodule